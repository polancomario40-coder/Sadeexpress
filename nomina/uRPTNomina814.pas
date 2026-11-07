unit uRPTNomina814;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, DB, ADODB, ppDB, ppComm, ppRelatv, ppDBPipe, Wwdatsrc,
  ppStrtch, ppMemo;

type
  TRPTNomina814 = class(TForm)
    ds: TwwDataSource;
    plNomina: TppDBPipeline;
    rs: TADODataSet;
    Report: TppReport;
    ppTitleBand21: TppTitleBand;
    ppDBText395: TppDBText;
    ppDBText396: TppDBText;
    ppDBText397: TppDBText;
    ppDBText398: TppDBText;
    ppLabel458: TppLabel;
    ppSystemVariable40: TppSystemVariable;
    ppSystemVariable41: TppSystemVariable;
    ppLabel459: TppLabel;
    ppHeaderBand29: TppHeaderBand;
    ppShape68: TppShape;
    ppLabel464: TppLabel;
    ppLabel465: TppLabel;
    ppLabel466: TppLabel;
    ppLabel474: TppLabel;
    ppLabel475: TppLabel;
    ppLabel476: TppLabel;
    ppLabel477: TppLabel;
    ppLabel480: TppLabel;
    ppLabel484: TppLabel;
    ppLabel463: TppLabel;
    ppLabel473: TppLabel;
    ppDetailBand38: TppDetailBand;
    ppDBText399: TppDBText;
    ppDBText401: TppDBText;
    ppDBText409: TppDBText;
    ppDBText410: TppDBText;
    ppDBText411: TppDBText;
    ppDBText412: TppDBText;
    ppDBText413: TppDBText;
    ppDBText414: TppDBText;
    ppDBText415: TppDBText;
    ppDBText416: TppDBText;
    ppDBText408: TppDBText;
    ppDBText422: TppDBText;
    ppFooterBand35: TppFooterBand;
    ppSummaryBand28: TppSummaryBand;
    ppShape79: TppShape;
    ppDBCalc196: TppDBCalc;
    ppDBCalc202: TppDBCalc;
    ppDBCalc212: TppDBCalc;
    ppDBCalc214: TppDBCalc;
    ppDBCalc215: TppDBCalc;
    ppDBCalc217: TppDBCalc;
    ppDBCalc218: TppDBCalc;
    ppDBCalc219: TppDBCalc;
    ppDBCalc229: TppDBCalc;
    ppDBCalc230: TppDBCalc;
    ppLabel485: TppLabel;
    ppDBCalc231: TppDBCalc;
    ppDBCalc232: TppDBCalc;
    ppLabel486: TppLabel;
    ppDBCalc200: TppDBCalc;
    ppDBCalc213: TppDBCalc;
    ppDBCalc234: TppDBCalc;
    ppDBCalc235: TppDBCalc;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLabel461: TppLabel;
    ppLabel492: TppLabel;
    ppLabel493: TppLabel;
    rsNominaId: TIntegerField;
    rsFecha: TDateTimeField;
    rsDesde: TDateTimeField;
    rsHasta: TDateTimeField;
    rsMesCalendario: TSmallintField;
    rsDepOrden: TIntegerField;
    rsDepartamento: TStringField;
    rssecOrden: TIntegerField;
    rsSeccion: TStringField;
    rsEmpleadoID: TIntegerField;
    rsTotalNormal: TBCDField;
    rsTotalNocturna: TBCDField;
    rsTotalExtra: TBCDField;
    rsTotalDoble: TBCDField;
    rsSS: TBCDField;
    rsIR: TBCDField;
    rsAFP: TBCDField;
    rsTipoEmpleadoID: TIntegerField;
    rsEmpleado: TStringField;
    rsSueldo: TBCDField;
    rsSueldoMes: TBCDField;
    rsPrecioHora: TBCDField;
    rsSueldoBisemanal: TBCDField;
    rsSueldoQuincenal: TBCDField;
    rsSueldoDias: TBCDField;
    rsActivo: TBooleanField;
    rsTipoEmpleado: TStringField;
    rsComision: TBCDField;
    rsVacaciones: TBCDField;
    rsIncentivo: TBCDField;
    rsRestoIngreso: TBCDField;
    rsSegMedico: TBCDField;
    rsPrestamo: TBCDField;
    rsRestoDescuento: TBCDField;
    rsTotalIngresos: TBCDField;
    rsTotalDeducciones: TBCDField;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    rsTotalFeriadas: TBCDField;
    rsNeto: TBCDField;
    ppLine3: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    ppShape1: TppShape;
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
    ppLabel14: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLabel15: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppShape2: TppShape;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppLabel17: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBText12: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RPTNomina814: TRPTNomina814;

implementation

uses Udata;

{$R *.dfm}

end.

unit udmReporte3;

interface

uses
  SysUtils, Classes, ppDB, DB, ppDBPipe, ADODB, Wwdatsrc, ppCtrls, ppBands,
  ppClass, ppPrnabl, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter;

type
  TdmReporte3 = class(TDataModule)
    RptNominaCheque: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppSystemVariable8: TppSystemVariable;
    ppLabel318: TppLabel;
    ppSystemVariable24: TppSystemVariable;
    ppDetailBand20: TppDetailBand;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText174: TppDBText;
    ppDBText175: TppDBText;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppDBText183: TppDBText;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppLine30: TppLine;
    ppFooterBand18: TppFooterBand;
    ppSystemVariable9: TppSystemVariable;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppGroup16: TppGroup;
    ppGroupHeaderBand16: TppGroupHeaderBand;
    ppGroupFooterBand16: TppGroupFooterBand;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    ppShape26: TppShape;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel205: TppLabel;
    ppLabel207: TppLabel;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppGroupFooterBand17: TppGroupFooterBand;
    dsNomina2: TwwDataSource;
    NominaCks: TADODataSet;
    plNomina2: TppDBPipeline;
    NominaCksNomina: TIntegerField;
    NominaCksDesde: TDateTimeField;
    NominaCksHasta: TDateTimeField;
    NominaCksDepartamento: TStringField;
    NominaCksSeccion: TStringField;
    NominaCksEmpleadoID: TIntegerField;
    NominaCksEmpleado: TStringField;
    NominaCksSueldo: TBCDField;
    NominaCksCheque: TStringField;
    NominaCksExtras: TBCDField;
    NominaCksIncentivo: TBCDField;
    NominaCksOtrosIng: TBCDField;
    NominaCksSueldoBruto: TBCDField;
    NominaCksAusencias: TBCDField;
    NominaCksPrestamos: TBCDField;
    NominaCksSS: TBCDField;
    NominaCksAFP: TBCDField;
    NominaCksIR: TBCDField;
    NominaCksOtrosDesc: TBCDField;
    NominaCksTotalDescuento: TBCDField;
    NominaCksSueldoNeto: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure ImprimirNomCks(const idNom: Integer);

var
  dmReporte3: TdmReporte3;

implementation

uses Udata, UUtiles;


procedure ImprimirNomCks(const idNom: Integer);
begin
  with TdmReporte3.Create(nil) do begin
    try
      NominaCks.Close();
      NominaCks.Parameters[1].Value := idNom;
      NominaCks.Open();

      ImprimirReporte(RptNominaCheque);
    finally
      Free();
    end;
  end;
end;
{$R *.dfm}

end.

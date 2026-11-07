unit udmActivos;

interface

uses
  SysUtils, Classes, ADODB, DB, ppRegion, ppCtrls, ppVar, ppDB, ppDBPipe,
  ppBands, ppClass, ppStrtch, ppRichTx, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppParameter;

type
  TdmActivos = class(TDataModule)
    cGenEntrada: TADOCommand;
    cGenDepreciacion: TADOCommand;
    rsListaDepr: TADODataSet;
    rsListaDepridActivo: TIntegerField;
    rsListaDeprDescripcion: TStringField;
    rsListaDeprCategoria: TStringField;
    rsListaDeprPorcentaje: TFloatField;
    rsListaDeprMonto: TBCDField;
    rsListaDeprAcumulada: TBCDField;
    rsListaDeprDepMes: TBCDField;
    rsListaDeprValorLibros: TBCDField;
    rListaDepr: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLine11: TppLine;
    ppLabel52: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppDBText1: TppDBText;
    dbDetalle: TppDetailBand;
    ppDBText44: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBRichText1: TppDBRichText;
    ppLine15: TppLine;
    ppDBText2: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppDBText38: TppDBText;
    ppLabel60: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine10: TppLine;
    ppGroup8: TppGroup;
    ghbCategoria: TppGroupHeaderBand;
    ppDBText45: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    plReporte: TppDBPipeline;
    dsDepr: TDataSource;
    ppDBText3: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine1: TppLine;
    ppRegion1: TppRegion;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText9: TppDBText;
    rsListaDeprUbicacion: TStringField;
    ppLine2: TppLine;
    vCorte: TppLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GenEntrada(const desde,hasta: TDateTime);
    procedure GenDepreciacion(const hasta: TDateTime);
    procedure ImprimirListaDepr(const hasta:TDateTime; const Resumen: Boolean = False);
  end;

var
  dmActivos: TdmActivos;

implementation

uses Udata, UUtiles;

{$R *.dfm}

{ TdmActivos }

procedure TdmActivos.GenDepreciacion(const hasta: TDateTime);
begin
  with cGenDepreciacion do begin
    Parameters[1].Value := hasta;
    Execute();
  end;
end;

procedure TdmActivos.GenEntrada(const desde, hasta: TDateTime);
begin
  with cGenEntrada do begin
    Parameters[1].Value := desde;
    Parameters[2].Value := hasta;
    Execute();
  end;
end;

procedure TdmActivos.ImprimirListaDepr(const hasta: TDateTime; const Resumen: Boolean = False);
begin
  with rsListaDepr do begin
    Close();
    Parameters[1].Value := hasta;
    Open();
  end;

  vCorte.Caption := FormatDateTime('dd/mm/yyyy', hasta);

  ppRegion1.Visible := not Resumen;
  ghbCategoria.Visible := not Resumen;
  dbDetalle.Visible := not Resumen;

  uutiles.ImprimirReporte(rListaDepr);
end;

end.

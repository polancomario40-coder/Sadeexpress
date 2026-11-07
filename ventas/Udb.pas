unit Udb;

interface

uses
  SysUtils, Classes, ppCtrls, ppPrnabl, ppClass, ppVar, ppBands, ppDB,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DB, ADODB, Graphics,
  myChkBox, ppStrtch, ppSubRpt, ExtCtrls, Controls, ppEndUsr, ppModule,
  raCodMod;

type
  TDataM = class(TDataModule)
    RptBalAntCiudad: TADODataSet;
    dsRptBalAntCiudad: TDataSource;
    RptBalAntCiudadCiudad: TStringField;
    RptBalAntCiudadTipoCliente: TStringField;
    RptBalAntCiudadEstacionID: TIntegerField;
    RptBalAntCiudadEstacion: TStringField;
    RptBalAntCiudadPeriodo: TIntegerField;
    RptBalAntCiudadBal1: TFloatField;
    RptBalAntCiudadBal2: TFloatField;
    RptBalAntCiudadBal3: TFloatField;
    RptBalAntCiudadBal4: TFloatField;
    RptBalAntCiudadBal5: TFloatField;
    RptBalAntCiudadBalGral: TFloatField;
    plRptBalAntCiudad: TppDBPipeline;
    BalAntCiudad: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel4: TppLabel;
    ppDBText11: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    fondo: TppShape;
    ppShape3: TppShape;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel3: TppLabel;
    Negocio: TADODataSet;
    NegocioNegocioID: TIntegerField;
    NegocioNegocio: TStringField;
    dsNegocio: TDataSource;
    Productos: TADODataSet;
    Cierre: TADOCommand;
    Timer1: TTimer;
    deseno: TppDesigner;
    ProductosidProducto: TStringField;
    ProductosProducto: TStringField;
    procedure fondoPrint(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      NEGOCIOS : integer;
      Function FechaCierre() : Tdate;
  end;

var
  DataM: TDataM;

implementation

uses Udata;

{$R *.dfm}

procedure TDataM.fondoPrint(Sender: TObject);
begin
   if ppDetailBand1.count mod 2 = 1 then
     fondo.Brush.Color := $00D4D4D4
   else
     fondo.Brush.Color := clWhite;

end;

procedure TDataM.DataModuleCreate(Sender: TObject);
begin
  if dm.Coneccion.Connected then begin
     Productos.Open;
     Negocio.Open;
     Negocio.Locate('NegocioID',dm.getdefault('NEGOCIOID'),[]);
     NEGOCIOS := NegocioNegocioID.AsInteger;
     Cierre.Execute;
  end;
end;

procedure TDataM.DataModuleDestroy(Sender: TObject);
begin
  Productos.Close;
end;

procedure TDataM.Timer1Timer(Sender: TObject);
begin
  try
    Cierre.Execute;
  except

  end;
end;

Function TDataM.FechaCierre() : TDate;
begin
    Result := Cierre.parameters[1].value;
end;

end.

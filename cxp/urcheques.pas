unit urcheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppDB, ppBands, ppClass, Db, ppCache, ppDBPipe, ppDBBDE, ppComm, ppRelatv,
  ppProd, ppReport, ppPrnabl, ppCtrls, ppVar, ppStrtch, ppRichTx, ADODB,
  ppMemo, ppParameter, ppModule, raCodMod, daDataModule, ppDesignLayer;

type
  TrCheques = class(TForm)
    Report: TppReport;
    Pipeline: TppBDEPipeline;
    DataSource: TDataSource;
    plHeader: TppBDEPipeline;
    rsCkDtl: TADODataSet;
    rsCkDtlidCuenta: TStringField;
    rsCkDtldescripcion: TStringField;
    rsCkDtldebito: TBCDField;
    rsCkDtlcredito: TBCDField;
    rsChequeRpt: TADODataSet;
    ckSource: TDataSource;
    cMarcarCk: TADOCommand;
    rsChequeRptNumero: TIntegerField;
    rsChequeRptIdDocumento: TIntegerField;
    rsChequeRptFecha: TDateTimeField;
    rsChequeRptIdEntidad: TIntegerField;
    rsChequeRptCuentaBanco: TStringField;
    rsChequeRptNombre: TStringField;
    rsChequeRptIdCuenta: TStringField;
    rsChequeRptDescripcionCuenta: TStringField;
    rsChequeRptValorCheque: TBCDField;
    rsChequeRptTextoConcepto: TStringField;
    rsChequeRptST: TStringField;
    rsChequeRptidCuentaBanco: TIntegerField;
    rsChequeRptFechaProcesado: TDateTimeField;
    rsChequeRptFormatoCheque: TStringField;
    rsChequeRptNumeroLetras: TStringField;
    rsChequeRptCtaDoc: TStringField;
    rsChequeRptDescripcion: TStringField;
    rsChequeRptDebito: TBCDField;
    rsChequeRptCredito: TBCDField;
    rsChequeRptValor: TBCDField;
    rsChequeRptNotaAdicional: TStringField;
    rsChequeRptCuentasConcatenadas: TStringField;
    rsChequeRpty1: TStringField;
    rsChequeRpty2: TStringField;
    rsChequeRpty3: TStringField;
    rsChequeRpty4: TStringField;
    rsChequeRptm1: TStringField;
    rsChequeRptm2: TStringField;
    rsChequeRptd1: TStringField;
    rsChequeRptd2: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDesignLayers1: TppDesignLayers;
    procedure vLetrasCalc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure rsChequeRptCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function CreateIdString: string;
    procedure MarcarCk(const idDoc: Integer; const fec: TDateTime);
  public
    { Public declarations }
  end;

var
  rCheques: TrCheques;

procedure PrintChk(const num: integer);
procedure PrintChks(sl: TStringList);

implementation

uses Utils, Udata, UUtiles;

{$R *.DFM}

procedure TrCheques.vLetrasCalc(Sender: TObject; var Value: Variant);
begin
  Value := '';//***' + MonToLit(efectdm.rsChequeRptValorCheque.AsCurrency,1) + '***';
end;

procedure PrintChk(const num: integer);
begin
  with TrCheques.Create(Application) do begin
     //rsCkDtl.Close();
     rsChequeRpt.Close();
     rsChequeRpt.Parameters [1].Value := num;
     rsChequeRpt.Open();
     if rsChequeRptFormatoCheque.AsString <> '' then begin
       if FileExists(rsChequeRptFormatoCheque.AsString) then begin
         Report.Template.FileName := rsChequeRptFormatoCheque.AsString;
         Report.Template.LoadFromFile();
       end;
     end;
     //Report.ResetDevices();
     Report.DeviceType := 'Printer';
     //rsCkDtl.Open();
     //Report.DeviceType := 'Screen';
     ImprimirReporte(Report);
     MarcarCk(rsChequeRptIdDocumento.AsInteger, dm.DBFecha());
     Free();
  end;    // with
end;

procedure PrintChks(sl: TStringList);
var
  I: Integer;
begin
  with TrCheques.Create(Application) do begin
    for I := 0 to sl.Count - 1 do begin    // Iterate
      rsChequeRpt.Parameters [1].Value := StrToInt(sl[I]);
      rsChequeRpt.Open();
      rsCkDtl.Open();
      ImprimirReporte(Report);
      MarcarCk(rsChequeRptIdDocumento.AsInteger, DM.DBFecha());
      rsCkDtl.Close();
      rsChequeRpt.Close();
    end;
    Free();
  end;    // with
end;

procedure TrCheques.FormCreate(Sender: TObject);
begin
  rsCkDtl.Close();
  rsChequeRpt.Close();
end;

function TrCheques.CreateIdString: string;
begin
  Result := FormatDateTime('ddmmyyhhnnss',Now()) + // +
            //LeerUsuario() +
            //LeerTerminal() +
            rsChequeRptNumero.Asstring;
end;

procedure TrCheques.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
  Value := CreateIdString();
end;

procedure TrCheques.MarcarCk(const idDoc: Integer; const fec: TDateTime);
begin
  with cMarcarCk do begin
    Parameters[1].Value := idDoc;
    Parameters[2].Value := fec;
    Execute();
  end;
end;

procedure TrCheques.rsChequeRptCalcFields(DataSet: TDataSet);
begin
  rsChequeRptNumeroLetras.AsString := '***' + Trim(MonToLit(rsChequeRptValorCheque.AsCurrency,1)) + '***';
end;

end.

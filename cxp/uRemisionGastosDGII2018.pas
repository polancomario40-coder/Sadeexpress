unit uRemisionGastosDGII2018;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, DB, Wwdatsrc, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGroupBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxLookAndFeelPainters,
  cxButtons, cxLabel, kbmMemTable, DateUtils, cxExportGrid4Link, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppVar, ppCtrls, ppBands, ppClass, ppPrnabl,
  ppCache, ppProd, ppReport, cxButtonEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxImageComboBox, cxSpinEdit, ppParameter;

const
  CODIGO_INFORMACION = '606';

type
  TRemisionGastosDGII2018 = class(TFForm)
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    rs: TADODataSet;
    rsrnc_cedula: TStringField;
    rstipo_identificacion: TIntegerField;
    rstipo_compra: TStringField;
    rscompfiscal: TStringField;
    rscompfiscal_modif: TStringField;
    rsfecha_compfiscal: TDateTimeField;
    rsfecha_pago: TDateTimeField;
    rsitbis_facturado: TBCDField;
    rsitbis_retenido: TBCDField;
    rsmonto_facturado: TBCDField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1rnc_cedula: TcxGridDBColumn;
    cxGrid1DBTableView1tipo_identificacion: TcxGridDBColumn;
    cxGrid1DBTableView1tipo_compra: TcxGridDBColumn;
    cxGrid1DBTableView1compfiscal: TcxGridDBColumn;
    cxGrid1DBTableView1compfiscal_modif: TcxGridDBColumn;
    cxGrid1DBTableView1fecha_compfiscal: TcxGridDBColumn;
    cxGrid1DBTableView1fecha_pago: TcxGridDBColumn;
    cxGrid1DBTableView1itbis_facturado: TcxGridDBColumn;
    cxGrid1DBTableView1itbis_retenido: TcxGridDBColumn;
    cxGrid1DBTableView1monto_facturado: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    lRegistros: TcxLabel;
    lFact: TcxLabel;
    lITBIS: TcxLabel;
    lRet: TcxLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    sd: TSaveDialog;
    mData: TkbmMemTable;
    rskeyfield: TGuidField;
    lFactAnt: TcxLabel;
    litbisAnt: TcxLabel;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ButtonExecel: TcxButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
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
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel9: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel17: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ButtonPrint: TcxButton;
    ppLine1: TppLine;
    ppShape1: TppShape;
    ppVariable5: TppVariable;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel36: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine2: TppLine;
    ppVariable1: TppVariable;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel37: TppLabel;
    ppShape2: TppShape;
    ppDBCalc8: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBText23: TppDBText;
    ppLabel20: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    rsClases: TADODataSet;
    rsClasesidClasegasto: TStringField;
    rsClasesClaseGasto: TStringField;
    ReporteDetallado: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel23: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine3: TppLine;
    ppVariable2: TppVariable;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel27: TppLabel;
    ppShape3: TppShape;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBText12: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppShape4: TppShape;
    cxButton4: TcxButton;
    ppLine4: TppLine;
    rsRPT: TADODataSet;
    rsRPTkeyfield: TGuidField;
    rsRPTNombre: TStringField;
    rsRPTrnc_cedula: TStringField;
    rsRPTtipo_identificacion: TIntegerField;
    rsRPTtipo_compra: TStringField;
    rsRPTcompfiscal: TStringField;
    rsRPTcompfiscal_modif: TStringField;
    rsRPTfecha_compfiscal: TDateTimeField;
    rsRPTfecha_pago: TDateTimeField;
    rsRPTitbis_facturado: TBCDField;
    rsRPTitbis_retenido: TBCDField;
    rsRPTmonto_facturado: TBCDField;
    rsRPTClaseGasto: TStringField;
    dsRPT: TDataSource;
    ppDBText17: TppDBText;
    ppLabel24: TppLabel;
    rsisr_retenido: TBCDField;
    cxGrid1DBTableView1isr_retenido: TcxGridDBColumn;
    rsidDocumento: TIntegerField;
    rstipoDoc: TIntegerField;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    lIsr: TcxLabel;
    rsmonto_servicios: TBCDField;
    rsmonto_bienes: TBCDField;
    rsitbis_prop: TBCDField;
    rsitbis_costo: TBCDField;
    rsitbis_adelantar: TBCDField;
    rsitbis_percibido: TBCDField;
    rstipo_retencion: TIntegerField;
    rsisr_percibido: TBCDField;
    rsmonto_isc: TBCDField;
    rsotros_imp: TBCDField;
    rspropina: TBCDField;
    rsFormaPago: TIntegerField;
    mDatakeyfield: TGuidField;
    mDataidDocumento: TIntegerField;
    mDatatipoDoc: TIntegerField;
    mDatarnc_cedula: TStringField;
    mDatatipo_identificacion: TIntegerField;
    mDatatipo_compra: TStringField;
    mDatacompfiscal: TStringField;
    mDatacompfiscal_modif: TStringField;
    mDatafecha_compfiscal: TDateTimeField;
    mDatafecha_pago: TDateTimeField;
    mDatamonto_servicios: TBCDField;
    mDatamonto_bienes: TBCDField;
    mDatamonto_facturado: TBCDField;
    mDataitbis_facturado: TBCDField;
    mDataitbis_retenido: TBCDField;
    mDataitbis_prop: TBCDField;
    mDataitbis_costo: TBCDField;
    mDataitbis_adelantar: TBCDField;
    mDataitbis_percibido: TBCDField;
    mDatatipo_retencion: TIntegerField;
    mDataisr_retenido: TBCDField;
    mDataisr_percibido: TBCDField;
    mDatamonto_isc: TBCDField;
    mDataotros_imp: TBCDField;
    mDatapropina: TBCDField;
    mDataFormaPago: TIntegerField;
    mDataLinea: TAutoIncField;
    mDataClaseGasto: TStringField;
    mDataLno: TIntegerField;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure mDataAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure deDesdePropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure mDataCalcFields(DataSet: TDataSet);
    procedure ButtonExecelClick(Sender: TObject);
    procedure ButtonPrintClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    FTotalItbis: Currency;
    FTotalRet: Currency;
    FTotalFact: Currency;
    FRegistros: Integer;
    FItbisAnt: Currency;
    FLoading: Boolean;
    FTotalFactAnt: Currency;
    FTotalISR: Currency;
    procedure CalcTotales;
    procedure SetItbis(const Value: Currency);
    procedure SetRegistros(const Value: Integer);
    procedure SetRetencion(const Value: Currency);
    procedure SetTotalFact(const Value: Currency);
    procedure GuardarTexto;
    function GenerarHeader: string;
    procedure SetItbisAnt(const Value: Currency);
    procedure SetTotalFactAnt(const Value: Currency);
    procedure SetTotalISR(const Value: Currency);
    { Private declarations }
  public
    { Public declarations }
    property Registros: Integer read FRegistros write SetRegistros;
    property TotalItbis: Currency read FTotalItbis write SetItbis;
    property TotalRet: Currency read FTotalRet write SetRetencion;
    property TotalFact: Currency read FTotalFact write SetTotalFact;
    property TotalFactAnt: Currency read FTotalFactAnt write SetTotalFactAnt;
    property TotalItbisAnt: Currency read FItbisAnt write SetItbisAnt;
    property TotalISR: Currency read FTotalISR write SetTotalISR;
  end;

var
  RemisionGastosDGII2018: TRemisionGastosDGII2018;

implementation

uses Udata, uMantDocumentos, UUtiles, uGastosMenores;

{$R *.dfm}

function PadLeft(const sIn: string; const Len: Integer; const chr: Char): string;
var
  l: Integer;
  s: string;
begin
  l := Length(sIn);
  if l < Len then
    s := StringOfChar(chr, Len - l) + sIn
  else if l > Len then
    s := Copy(sIn, 1, Len)
  else
    s := sIn;

  Result := s;
end;

function PadRight(const sIn: string; const Len: Integer; const chr: Char): string;
var
  l: Integer;
  s: string;
begin
  l := Length(sIn);
  if l < Len then
    s := sIn + StringOfChar(chr, Len - l)
  else if l > Len then
    s := Copy(sIn, 1, Len)
  else
    s := sIn;

  Result := s;
end;

function FieldToColumn(aField: TField): string;
var
  aCol: string;
begin
  if aField.IsNull then begin
    aCol := '';
  end
  else begin
    if aField.DataType = ftDateTime then begin
      aCol := FormatDateTime('yyyymmdd', aField.Value)
    end
    else if aField.DataType in [ftBCD, ftCurrency, ftFloat, ftFMTBcd] then begin
      aCol := FormatFloat('#######0.00', Abs(aField.asFloat));
    end
    else if aField.DataType in [ftInteger, ftSmallInt, ftWord, ftAutoInc, ftLargeInt] then
      aCol := FormatFloat('#########0', aField.asInteger)
    else
      aCol := aField.AsString;
  end;
  Result := aCol;
end;

procedure TRemisionGastosDGII2018.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    parameters[1].value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Open();
  end;

  FLoading := true;
  try
    mData.Close();
    mData.Open();
    mData.LoadFromDataSet(rs, [mtcpoAppend]);
  finally
    FLoading := False;
  end;
  CalcTotales();
end;

procedure TRemisionGastosDGII2018.CalcTotales;
var
  cnt: Integer;
  itbis: Currency;
  itbisant: Currency;
  ret: Currency;
  Fact: Currency;
  isr: Currency;
  FactAnt: Currency;
begin
  cnt := 0;
  itbis := 0;
  itbisAnt := 0;
  ret := 0;
  fact := 0;
  isr := 0;
  factAnt := 0;
  
  with rs do begin
    First();
    while not Eof do begin
      Inc(cnt);
      if rsfecha_compfiscal.Value >= deDesde.Date then begin
        itbis := itbis + rsitbis_facturado.AsCurrency;
        fact := fact + rsmonto_facturado.AsCurrency;
      end
      else begin
        itbisAnt := itbisAnt + rsitbis_facturado.AsCurrency;
        factAnt := factAnt + rsmonto_facturado.AsCurrency;
      end;
      
      ret := ret + rsitbis_retenido.asCurrency;
      isr := isr + rsisr_retenido.AsCurrency;

      Next();
    end;
  end;
  
  Registros := cnt;
  TotalItbis := itbis;
  TotalRet := ret;
  TotalFact := fact;
  TotalItbisAnt := itbisAnt;
  TotalFactAnt := factAnt;
  TotalISR := isr;
end;

procedure TRemisionGastosDGII2018.SetItbis(const Value: Currency);
begin
  FTotalItbis := Value;
  lITBIS.Caption := FormatFloat('Itbis facturado: ##,###,##0.00', Value);
end;

procedure TRemisionGastosDGII2018.SetRegistros(const Value: Integer);
begin
  FRegistros := Value;
  lRegistros.Caption := FormatFloat('##,###,##0 registro(s)', Value);
end;

procedure TRemisionGastosDGII2018.SetRetencion(const Value: Currency);
begin
  FTotalRet := Value;
  lRet.Caption := FormatFloat('Itbis retenido: ##,###,##0.00', Value);
end;

procedure TRemisionGastosDGII2018.SetTotalFact(const Value: Currency);
begin
  FTotalFact := Value;
  lFact.Caption := FormatFloat('Total facturado: ##,###,##0.00', Value);
end;

procedure TRemisionGastosDGII2018.mDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if not FLoading then
    CalcTotales();
end;

procedure TRemisionGastosDGII2018.FormCreate(Sender: TObject);
begin
  inherited;
  Floading := False;
  deDesde.Date := StartOfTheMonth(IncDay(StartofTheMonth(date()), -1));
  FTotalItbis := 0;
  FTotalFact := 0;
  FTotalRet := 0;
  FRegistros := 0;
  rsClases.Open();
end;

procedure TRemisionGastosDGII2018.deDesdePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  deHasta.Date := DateOf(EndOfTheMonth(deDesde.Date));
end;

procedure TRemisionGastosDGII2018.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

function TRemisionGastosDGII2018.GenerarHeader: string;
var
  sRNC: string;
begin
  sRNC := StringReplace(dm.ConfiguracionRNC.AsString, '-', '', [rfReplaceAll]);
  Result := CODIGO_INFORMACION + '|' + sRNC + '|' + formatDateTime('YYYYMM', deHasta.date) + '|' + FormatFloat('#########0', Registros);
end;

procedure TRemisionGastosDGII2018.GuardarTexto;
var
  strs: TStringList;
  sLine: string;
begin
  if not sd.Execute then
    Exit;

  strs := TStringList.Create();

  strs.Add(GenerarHeader());
  mData.DisableControls();
  try
    mData.First();
    while not mData.Eof do begin
      sLine := FieldToColumn(mDatarnc_cedula) + '|' +
        FieldToColumn(mDatatipo_identificacion) + '|' +
        FieldToColumn(mDatatipo_compra) + '|' +
        FieldToColumn(mDataCompFiscal) + '|' +
        FieldToColumn(mDatacompfiscal_modif) + '|' +
        FieldToColumn(mDatafecha_compfiscal) + '|' +
        FieldToColumn(mDatafecha_pago) + '|' +
        FieldToColumn(mDatamonto_servicios) + '|' +
        FieldToColumn(mDatamonto_bienes) + '|' +
        FieldToColumn(mDatamonto_facturado) + '|' +
        FieldToColumn(mDataitbis_facturado) + '|' +
        FieldToColumn(mDataitbis_retenido) + '|' +
        FieldToColumn(mDataitbis_prop) + '|' +
        FieldToColumn(mDataitbis_costo) + '|' +
        FieldToColumn(mDataitbis_adelantar) + '|' +
        FieldToColumn(mDataitbis_percibido) + '|' +
        FieldToColumn(mDatatipo_retencion) + '|' +
        FieldToColumn(mDataisr_retenido) + '|' +
        FieldToColumn(mDataisr_percibido) + '|' +
        FieldToColumn(mDatamonto_isc) + '|' +
        FieldToColumn(mDataotros_imp) + '|' +
        FieldToColumn(mDatapropina) + '|' +
        FieldToColumn(mDataFormaPago);
      strs.Add(sLine);
      mData.Next();
    end;
    strs.SaveToFile(sd.FileName);
  finally
    strs.Free();
    mData.First();
    mData.EnableControls();
  end;
end;


procedure TRemisionGastosDGII2018.cxButton2Click(Sender: TObject);
begin
  inherited;
  GuardarTexto();
end;

procedure TRemisionGastosDGII2018.SetItbisAnt(const Value: Currency);
begin
  FItbisAnt := Value;
  lItbisAnt.Caption := 'Itbis facturado meses ant.: ' + FormatFloat('##,###,##0.00', Value);
end;

procedure TRemisionGastosDGII2018.SetTotalFactAnt(const Value: Currency);
begin
  FTotalFactAnt := Value;
  lFactAnt.Caption := 'Total fact. meses ant.: ' + FormatFloat('##,###,##0.00', Value);
end;

procedure TRemisionGastosDGII2018.mDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  mDataLno.Value := mDataLinea.Value + 1;
  if rsClases.Locate('idClaseGasto', mdataTipo_compra.Value, []) then
    mDataClaseGasto.Value := rsClasesClaseGasto.Value
  else
    mDataClaseGasto.Value := '';
end;

procedure TRemisionGastosDGII2018.ButtonExecelClick(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName, cxGrid1);
end;

procedure TRemisionGastosDGII2018.ButtonPrintClick(Sender: TObject);
begin
  inherited;
  with rsRPT do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Open();
  end;
  ppReport2.Print;
end;

procedure TRemisionGastosDGII2018.cxButton4Click(Sender: TObject);
begin
  inherited;
  with rsRPT do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Open();
  end;
  ReporteDetallado.Print();

end;

procedure TRemisionGastosDGII2018.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  id: Variant;
begin
  inherited;
  id := mDatakeyfield.Value;

  if (mdatatipoDoc.Value = 1) then
    ModalShow(TfMantDocumentos, ShowFind, mdataIdDocumento.AsInteger, 'idDocumento', True)
  else if (mdataTipoDoc.Value = 3) then
    ModalShow(TGastosMenores, showFind, mdatakeyField.Value, 'guidDocumento', True)
  else
    Exit;

  cxButton1.Click();

  mData.Locate('keyField', id, []);

end;

procedure TRemisionGastosDGII2018.SetTotalISR(const Value: Currency);
begin
  FTotalISR := Value;
  lItbisAnt.Caption := 'ISR Ret: ' + FormatFloat('##,###,##0.00', Value);
end;

end.


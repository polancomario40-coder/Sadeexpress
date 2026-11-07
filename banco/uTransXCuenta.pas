unit uTransXCuenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassbco, StdCtrls, DB, dxCntner, Gradient, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxButtons, ppDB, ppDBPipe, ppDBBDE, ppBands, ppVar, ppClass,
  ppCtrls, ppStrtch, ppRichTx, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, cxCheckBox, ppParameter;

type
  TTransXCuenta = class(TMantClassBco)
    Label1: TLabel;
    Label2: TLabel;
    luCta: TcxLookupComboBox;
    dsCtas: TDataSource;
    Label3: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    rsTrans: TADODataSet;
    rsTransidDocumento: TIntegerField;
    rsTransReferencia: TStringField;
    rsTransidTrans: TIntegerField;
    rsTransFecha: TDateTimeField;
    rsTransValor: TBCDField;
    rsTransTipo: TStringField;
    rsTransDebCre: TWordField;
    rsTransDebito: TBCDField;
    rsTransCredito: TBCDField;
    cxGrid1DBTableView1idDocumento: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1DBTableView1Debito: TcxGridDBColumn;
    cxGrid1DBTableView1Credito: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle2: TcxStyle;
    Label4: TLabel;
    luTipos: TcxLookupComboBox;
    rsTipos: TADODataSet;
    rsTiposIdtrans: TIntegerField;
    rsTiposDescripcion: TStringField;
    dstipos: TDataSource;
    Report: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBRichText1: TppDBRichText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppVariable1: TppVariable;
    plTrans: TppBDEPipeline;
    ppVariable2: TppVariable;
    ppLabel9: TppLabel;
    ppDBText5: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    rsTransConcepto: TStringField;
    rsTransstatus: TStringField;
    rsTransfechastatus: TDateTimeField;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1DBTableView1StatusFecha: TcxGridDBColumn;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    rsTransCodif: TADODataSet;
    rsTransCodifidDocumento: TIntegerField;
    rsTransCodifReferencia: TStringField;
    rsTransCodifidTrans: TIntegerField;
    rsTransCodifFecha: TDateTimeField;
    rsTransCodifValor: TBCDField;
    rsTransCodifTipo: TStringField;
    rsTransCodifDebCre: TWordField;
    rsTransCodifDebito: TBCDField;
    rsTransCodifCredito: TBCDField;
    rsTransCodifConcepto: TStringField;
    rsTransCodifstatus: TStringField;
    rsTransCodiffechastatus: TDateTimeField;
    rsTransCodifidCuenta: TStringField;
    rsTransCodifCuenta: TStringField;
    rsTransCodifDetDebito: TBCDField;
    rsTransCodifDetCredito: TBCDField;
    rsTransCodifMovimiento: TBCDField;
    plTransCodif: TppDBPipeline;
    dsTransCodif: TDataSource;
    DataSource1: TDataSource;
    ReportCodif: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppLabel21: TppLabel;
    ppVariable5: TppVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDetailBand3: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine5: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel32: TppLabel;
    ppDBCalc7: TppDBCalc;
    cbCodif: TcxCheckBox;
    ppVariable3: TppVariable;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TAutoIncField;
    rsBancosNombre: TStringField;
    rsTransNombre: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppVariable6: TppVariable;
    ppShape3: TppShape;
    rsTransidCuentaBanco: TIntegerField;
    rsTransCodifNombre: TStringField;
    rsTransCodifidCuentaBanco: TIntegerField;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText9: TppDBText;
    ppLine2: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure cxButton2Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable4Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    FBalInicial: Currency;
    FBalFinal: Currency;
  public
    { Public declarations }
  end;

var
  TransXCuenta: TTransXCuenta;

implementation

uses udmBancos, DateUtils, Udata;

{$R *.dfm}

procedure TTransXCuenta.FormCreate(Sender: TObject);
begin
  inherited;
  rsBancos.Open();

  rsTipos.Open();

  luCta.Text := rsBancosNombre.AsString;
  deHasta.Date := Date();
  deDesde.Date := StartOfTheMonth(Date());
end;

procedure TTransXCuenta.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TTransXCuenta.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rsTrans do begin
    Close();
    Parameters[01].Value := luCta.EditValue;
    Parameters[02].Value := deDesde.Date;
    Parameters[03].Value := deHasta.Date;
    Parameters[04].Value := luTipos.EditValue;
    Open();
  end;
end;

procedure TTransXCuenta.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := luCta.Text;
end;

procedure TTransXCuenta.cxButton2Click(Sender: TObject);
begin
  inherited;
  if cbCodif.Checked then begin
    //rsTransCodif.DisableControls();
    try
      with rsTransCodif do begin
        Close();
        Parameters[01].Value := luCta.EditValue;
        Parameters[02].Value := deDesde.Date;
        Parameters[03].Value := deHasta.Date;
        Parameters[04].Value := luTipos.EditValue;
        Open();
      end;
      Imprimir(ReportCodif);
    finally
      //rsTransCodif.EnableControls();
    end;
  end
  else begin
    rsTrans.DisableControls();
    try
      Imprimir(Report);
    finally
      rsTrans.EnableControls();
    end;
  end;
end;

procedure TTransXCuenta.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;

  Value := '';
  
  if luTipos.EditValue <> 0 then
    Value := luTipos.Text + ' ';

  Value := Value + 'desde: ' + deDesde.Text + ' hasta: ' + deHasta.Text;


end;

procedure TTransXCuenta.ppVariable3Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  if luTipos.EditValue = 0 then begin
    FBalInicial := dmBanco.BalanceCuenta(rsTransIdCuentaBanco.AsInteger,IncDay(deDesde.Date, -1));
    Value := 'Balance inicial: ' + FormatFloat('###,###,##0.00',FBalInicial)
  end
  else
    Value := '';
end;

procedure TTransXCuenta.ppVariable4Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  if luTipos.EditValue = 0 then begin
    FBalFinal := dmBanco.BalanceCuenta(rsTransIdCuentaBanco.AsInteger,deHasta.Date);
    Value := 'Balance final: ' + FormatFloat('###,###,##0.00',FBalFinal);
  end
  else
    Value := '';
end;

end.

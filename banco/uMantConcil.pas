unit uMantConcil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, ppDB, ppDBPipe, ppBands, ppStrtch, ppRichTx, ppVar,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  DB, ADODB, kbmMemTable, dxCntner, Gradient, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxDropDownEdit, cxCalendar, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, dxEditor, dxExEdtr,
  dxEdLib, dxDBELib, cxCurrencyEdit, cxMemo, cxPC, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ppSubRpt, uMantClassBco, ppParameter;

type
  TMantConciliacion = class(TMantClassBco)
    plConcil: TppDBPipeline;
    Label2: TLabel;
    Label3: TLabel;
    luCta: TcxDBLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    deDesde: TcxDBDateEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Shape2: TShape;
    Shape4: TShape;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dxDBMemo1: TcxDBMemo;
    edBanco: TcxDBCurrencyEdit;
    edDeps: TcxDBCurrencyEdit;
    edTrans: TcxDBCurrencyEdit;
    edNCR: TcxDBCurrencyEdit;
    edBancoConc: TcxDBCurrencyEdit;
    edNDB: TcxDBCurrencyEdit;
    edLibro: TcxDBCurrencyEdit;
    Panel1: TPanel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    mConcil: TkbmMemTable;
    mConcilidCuentaBanco: TIntegerField;
    mConcilHasta: TDateTimeField;
    mConcilBalanceBanco: TCurrencyField;
    mConcilDepsTran: TCurrencyField;
    mConcilNDB: TCurrencyField;
    mConcilNCR: TCurrencyField;
    mConcilBalLibros: TCurrencyField;
    mConcilCksTransito: TCurrencyField;
    mConcilNotas: TStringField;
    mConcilDiferencia: TCurrencyField;
    mConcilBalConcilBco: TCurrencyField;
    mConcilBalConcilLibros: TCurrencyField;
    mConcilBalAnterior: TCurrencyField;
    mConcilCheques: TCurrencyField;
    mConcilDepositos: TCurrencyField;
    rsConcil: TADODataSet;
    rsConcilCksTransito: TBCDField;
    rsConcilDepsTransito: TBCDField;
    rsConcilBalLibros: TBCDField;
    rsConcilDebitos: TBCDField;
    rsConcilCreditos: TBCDField;
    rsConcilCheques: TBCDField;
    rsConcilDepositos: TBCDField;
    rsConcilBalAnterior: TBCDField;
    plBancos: TppDBPipeline;
    dsbcos: TDataSource;
    rsCksTransito: TADODataSet;
    dsCksTran: TDataSource;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Numero: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1ValorCheque: TcxGridDBColumn;
    cxGridDBTableView1TextoConcepto: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ReportNew: TppReport;
    plTransito: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppVariable2: TppVariable;
    ppDBText11: TppDBText;
    ppLabel8: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDBText15: TppDBText;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    cxButton3: TcxButton;
    ppDBCalc1: TppDBCalc;
    ppLabel21: TppLabel;
    ppShape4: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel24: TppLabel;
    ppDBText24: TppDBText;
    ppLabel25: TppLabel;
    ppDBText25: TppDBText;
    ppLabel26: TppLabel;
    ppDBText26: TppDBText;
    ppShape5: TppShape;
    ppDBText27: TppDBText;
    ppLabel27: TppLabel;
    ppDBText28: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    mConcilInicio: TDateTimeField;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    rsDeps: TADODataSet;
    rsCreds: TADODataSet;
    rsDebs: TADODataSet;
    rsDepsReferencia: TStringField;
    rsDepsFecha: TDateTimeField;
    rsDepsValor: TBCDField;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    rsCks: TADODataSet;
    rsCksNumero: TStringField;
    rsCksIdDocumento: TIntegerField;
    rsCksFecha: TDateTimeField;
    rsCksIdSuplidor: TIntegerField;
    rsCksCuentaBanco: TStringField;
    rsCksNombre: TStringField;
    rsCksidCuenta: TStringField;
    rsCksDescripcionCuenta: TStringField;
    rsCksValorCheque: TBCDField;
    rsCksTextoConcepto: TStringField;
    rsCksST: TStringField;
    rsCksFechaStatus: TDateTimeField;
    dsCks: TDataSource;
    rsCreditos: TADODataSet;
    dsDeps: TDataSource;
    rsDepsDescStatus: TStringField;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    rsDepsConcepto: TStringField;
    rsDepsidDocumento: TIntegerField;
    rsCreditosidDocumento: TIntegerField;
    rsCreditosReferencia: TStringField;
    rsCreditosFecha: TDateTimeField;
    rsCreditosTipo: TStringField;
    rsCreditosConcepto: TStringField;
    rsCreditosValor: TBCDField;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    dsCreds: TDataSource;
    cxGrid5: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    dsDebs: TDataSource;
    rsDebsidDocumento: TIntegerField;
    rsDebsReferencia: TStringField;
    rsDebsFecha: TDateTimeField;
    rsDebsTipo: TStringField;
    rsDebsConcepto: TStringField;
    rsDebsValor: TBCDField;
    rsCredsidDocumento: TIntegerField;
    rsCredsReferencia: TStringField;
    rsCredsFecha: TDateTimeField;
    rsCredsTipo: TStringField;
    rsCredsConcepto: TStringField;
    rsCredsValor: TBCDField;
    rsCksTransitoNumero: TIntegerField;
    rsCksTransitoIdDocumento: TIntegerField;
    rsCksTransitoFecha: TDateTimeField;
    rsCksTransitoCuentaBanco: TStringField;
    rsCksTransitoidCuenta: TStringField;
    rsCksTransitoDescripcionCuenta: TStringField;
    rsCksTransitoValorCheque: TBCDField;
    rsCksTransitoTextoConcepto: TStringField;
    rsCksTransitoST: TStringField;
    rsCksTransitoNombre: TStringField;
    ppDBText1: TppDBText;
    cBuscarBalance: TADOCommand;
    cGuardarBalance: TADOCommand;
    deHasta: TcxDBDateEdit;
    Label13: TLabel;
    mConcilDesde: TDateTimeField;
    mConcilPagosACH: TCurrencyField;
    Label14: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    rsConcilPagosACH: TBCDField;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    Label15: TLabel;
    Label16: TLabel;
    edACHTransito: TcxDBCurrencyEdit;
    mConcilACHTransito: TCurrencyField;
    cxTabSheet7: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    rsACHTransito: TADODataSet;
    dsACHTrans: TDataSource;
    rsACHTransitoIdDocumento: TIntegerField;
    rsACHTransitoFecha: TDateTimeField;
    rsACHTransitoCuentaBanco: TStringField;
    rsACHTransitoNombre: TStringField;
    rsACHTransitoidCuenta: TStringField;
    rsACHTransitoDescripcionCuenta: TStringField;
    rsACHTransitoValorCheque: TBCDField;
    rsACHTransitoTextoConcepto: TStringField;
    rsACHTransitoST: TStringField;
    rsConcilACHTransito: TBCDField;
    cxTabSheet8: TcxTabSheet;
    cxGrid7: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    dsAchs: TDataSource;
    rsAchs: TADODataSet;
    rsAchsNumero: TStringField;
    rsAchsIdDocumento: TIntegerField;
    rsAchsFecha: TDateTimeField;
    rsAchsIdSuplidor: TIntegerField;
    rsAchsCuentaBanco: TStringField;
    rsAchsNombre: TStringField;
    rsAchsidCuenta: TStringField;
    rsAchsDescripcionCuenta: TStringField;
    rsAchsValorCheque: TBCDField;
    rsAchsTextoConcepto: TStringField;
    rsAchsST: TStringField;
    rsAchsfechastatus: TDateTimeField;
    rsAchsDescStatus: TStringField;
    rsACHTransitoNumero: TStringField;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape6: TppShape;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    plACHTransito: TppDBPipeline;
    ppLabel2: TppLabel;
    ppDBText7: TppDBText;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure cxButton3Click(Sender: TObject);
    procedure mConcilBalanceBancoValidate(Sender: TField);
    procedure mConcilCalcFields(DataSet: TDataSet);
    procedure mConcilHastaValidate(Sender: TField);
  private
    FLoading: Boolean;
    procedure BuscarConciliacion;
    procedure CalcularTotales;
    procedure GuardarBalance;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantConciliacion: TMantConciliacion;

implementation

uses udmBancos, DateUtils, Udata;

{$R *.dfm}

procedure TMantConciliacion.cxButton1Click(Sender: TObject);
begin
  inherited;
  BuscarConciliacion();
end;

procedure TMantConciliacion.BuscarConciliacion;
begin
  FLoading := True;
  try
    with rsConcil do begin
      Close();
      Parameters[1].Value := mConcilidCuentaBanco.AsInteger;
      Parameters[2].Value := mConcilDesde.Value;
      Parameters[3].Value := mConcilHasta.Value;
      Open();
    end;
    if not (mConcil.State in dsEditmodes) then
      mConcil.Edit();
    
    mConcilDepsTran.AsCurrency := rsConcilDepsTransito.AsCurrency;
    mConcilCksTransito.AsCurrency := rsConcilCksTransito.AsCurrency;
    mConcilNDB.AsCurrency := rsConcilDebitos.AsCurrency;
    mConcilNCR.AsCurrency := rsConcilCreditos.AsCurrency;
    mConcilBalLibros.AsCurrency := rsConcilBalLibros.AsCurrency;

    mConcilACHTransito.Value := rsConcilACHTransito.AsCurrency;

    mConcilCheques.AsCurrency := rsConcilCheques.AsCurrency;
    mConcilDepositos.AsCurrency := rsConcilDepositos.AsCurrency;
    mConcilBalAnterior.AsCurrency := rsConcilBalAnterior.AsCurrency;
    mConcilPagosACH.AsCurrency := rsConcilPagosACH.AsCurrency;

    //showmessage('todo bien hasta aqui');
    
    with cBuscarBalance do begin
      Parameters[1].Value := luCta.EditValue;
      Parameters[2].Value := mConcilHasta.Value;
      Parameters[3].Value := 0;
      Execute();

//      if not (mConcil.State in dsEditModes) then
//        mConcil.Edit();

      mConcilBalanceBanco.AsCurrency := Parameters[3].Value;
    end;

    CalcularTotales();

    with rsCksTransito do begin
      Close();
      Parameters[1].Value := mConcilHasta.Value;
      Parameters[2].Value := mConcilIdCuentaBanco.Value;
      Open();
    end;

    with rsACHTransito do begin
      Close();
      Parameters[1].Value := mConcilHasta.Value;
      Parameters[2].Value := mConcilIdCuentaBanco.Value;
      Open();
    end;

    with rsCks do begin
      Close();
      Parameters[1].Value := mConcilDesde.Value;
      Parameters[2].Value := mConcilHasta.Value;
      Parameters[3].Value := mConcilIdCuentaBanco.Value;
      Open();
    end;

    with rsAchs do begin
      Close();
      Parameters[1].Value := mConcilDesde.Value;
      Parameters[2].Value := mConcilHasta.Value;
      Parameters[3].Value := mConcilIdCuentaBanco.Value;
      Open();
    end;

    with rsDeps do begin
      Close();
      Parameters[1].Value := mConcilIdCuentaBanco.Value;
      Parameters[2].Value := mConcilDesde.Value;
      Parameters[3].Value := mConcilHasta.Value;
      Open();
    end;

    with rsDebs do begin
      Close();
      Parameters[1].Value := mConcilIdCuentaBanco.Value;
      Parameters[2].Value := mConcilDesde.Value;
      Parameters[3].Value := mConcilHasta.Value;
      Parameters[4].Value := 2;
      Open();
    end;

    with rsCreditos do begin
      Close();
      Parameters[1].Value := mConcilIdCuentaBanco.Value;
      Parameters[2].Value := mConcilDesde.Value;
      Parameters[3].Value := mConcilHasta.Value;
      Parameters[4].Value := 1;
      Open();
    end;
  finally
    FLoading := False;
  end;
end;

procedure TMantConciliacion.CalcularTotales;
begin
  mConcilBalConcilBco.AsCurrency := (mConcilBalanceBanco.Ascurrency + mConcilDepsTran.AsCurrency) - (mConcilCksTransito.AsCurrency + mConcilACHTransito.AsCurrency);

  mConcilBalConcilLibros.AsCurrency := mConcilBalLibros.AsCurrency;

  mConcilDiferencia.AsCurrency := mConcilBalConcilBco.AsCurrency - mConcilBalConcilLibros.AsCurrency;
end;

procedure TMantConciliacion.FormCreate(Sender: TObject);
begin
  inherited;
  Floading := False;
  if not dmBanco.rsBancos.Active then
    dmBanco.rsBancos.Open();

  mConcil.Open();
  mConcil.Append();
  mConcilIdCuentaBanco.Value := dmBanco.rsBancosidCuentaBanco.Value;
  mConcilDesde.Value := StartOfTheMonth(dmBanco.UltimaFecha);
  mConcilHasta.Value := dmBanco.UltimaFecha;
  BuscarConciliacion();
end;

procedure TMantConciliacion.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TMantConciliacion.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Conciliacion Bancaria al ' + FormatDateTime('mmmmm dd, yyyy', mConcilHasta.AsDateTime);
end;

procedure TMantConciliacion.cxButton3Click(Sender: TObject);
begin
  inherited;
  dmBanco.rsBancos.Locate('idCuentaBanco',mConcilIdCuentaBanco.Value,[]);
  Imprimir(ReportNew);
end;

procedure TMantConciliacion.mConcilBalanceBancoValidate(Sender: TField);
begin
  inherited;
  if not FLoading then begin
    CalcularTotales();
    GuardarBalance();
  end;
end;

procedure TMantConciliacion.mConcilCalcFields(DataSet: TDataSet);
begin
  inherited;
  mConcilInicio.AsDateTime := IncDay(mConcilDesde.AsDateTime, -1);
end;

procedure TMantConciliacion.GuardarBalance;
begin
  with cGuardarBalance do begin
    Parameters[1].Value := mConcilidCuentaBanco.AsInteger;
    Parameters[2].Value := mConcilHasta.AsDateTime;
    Parameters[3].Value := mConcilBalanceBanco.AsCurrency;
    Execute();
  end;
end;

procedure TMantConciliacion.mConcilHastaValidate(Sender: TField);
begin
  inherited;
  if (not FLoading) and (mConcilHasta.Value > 0.0) then begin
    if mConcilidCuentaBanco.asInteger > 0 then begin
      dmBanco.UltimaFecha := mConcilHasta.AsDateTime;
      BuscarConciliacion();
    end;
  end;
end;

end.

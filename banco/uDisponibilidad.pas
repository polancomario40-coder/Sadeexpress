unit uDisponibilidad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, ADODB, cxPC, cxControls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,cxExportGrid4Link,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGridCardView, cxGridDBCardView, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  cxLabel, uMantClassBco, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache,
  cxCurrencyEdit, ppParameter;

type
  TfDisponibilidad = class(TMantClassBco)
    rsResumen: TADODataSet;
    rsResumenidCuentaBanco: TIntegerField;
    rsResumenNombre: TStringField;
    rsResumenBalInicial: TBCDField;
    rsResumenckTotal: TBCDField;
    rsResumendpTotal: TBCDField;
    rsResumendbTotal: TBCDField;
    rsResumencrTotal: TBCDField;
    rsResumenBalFinal: TBCDField;
    cxPageControl1: TcxPageControl;
    tsResumen: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1BalInicial: TcxGridDBColumn;
    cxGrid1DBTableView1ckDesde: TcxGridDBColumn;
    cxGrid1DBTableView1ckHasta: TcxGridDBColumn;
    cxGrid1DBTableView1ckTotal: TcxGridDBColumn;
    cxGrid1DBTableView1dpDesde: TcxGridDBColumn;
    cxGrid1DBTableView1dpHasta: TcxGridDBColumn;
    cxGrid1DBTableView1dpTotal: TcxGridDBColumn;
    cxGrid1DBTableView1dbTotal: TcxGridDBColumn;
    cxGrid1DBTableView1crTotal: TcxGridDBColumn;
    cxGrid1DBTableView1BalFinal: TcxGridDBColumn;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1Nombre: TcxGridDBCardViewRow;
    cxGrid1DBCardView1BalInicial: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ckDesde: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ckHasta: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ckTotal: TcxGridDBCardViewRow;
    cxGrid1DBCardView1dpDesde: TcxGridDBCardViewRow;
    cxGrid1DBCardView1dpHasta: TcxGridDBCardViewRow;
    cxGrid1DBCardView1dpTotal: TcxGridDBCardViewRow;
    cxGrid1DBCardView1dbTotal: TcxGridDBCardViewRow;
    cxGrid1DBCardView1crTotal: TcxGridDBCardViewRow;
    cxGrid1DBCardView1BalFinal: TcxGridDBCardViewRow;
    dxEditStyleController1: TdxEditStyleController;
    Label3: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    dsBancos: TDataSource;
    rsCksTransito: TADODataSet;
    cxStyleRepository1: TcxStyleRepository;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsTransito: TDataSource;
    cxGridDBTableView1Numero: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1ValorCheque: TcxGridDBColumn;
    cxGridDBTableView1TextoConcepto: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    rsResumenckDesde: TStringField;
    rsResumenckHasta: TStringField;
    rsResumendpDesde: TStringField;
    rsResumendpHasta: TStringField;
    luBco: TcxLookupComboBox;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TIntegerField;
    rsBancosNombre: TStringField;
    rsCksTransitoNumero: TIntegerField;
    rsCksTransitoIdDocumento: TIntegerField;
    rsCksTransitoFecha: TDateTimeField;
    rsCksTransitoCuentaBanco: TStringField;
    rsCksTransitoNombre: TStringField;
    rsCksTransitoidCuenta: TStringField;
    rsCksTransitoDescripcionCuenta: TStringField;
    rsCksTransitoValorCheque: TBCDField;
    rsCksTransitoTextoConcepto: TStringField;
    rsCksTransitoST: TStringField;
    plDisponibilidad: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
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
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppVariable1: TppVariable;
    ppShape1: TppShape;
    ppShape2: TppShape;
    rsResumenachTotal: TBCDField;
    rsACHTransito: TADODataSet;
    rsACHTransitoNumero: TStringField;
    rsACHTransitoIdDocumento: TIntegerField;
    rsACHTransitoFecha: TDateTimeField;
    rsACHTransitoCuentaBanco: TStringField;
    rsACHTransitoNombre: TStringField;
    rsACHTransitoidCuenta: TStringField;
    rsACHTransitoDescripcionCuenta: TStringField;
    rsACHTransitoValorCheque: TBCDField;
    rsACHTransitoTextoConcepto: TStringField;
    rsACHTransitoST: TStringField;
    cxTabSheet1: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    dsACH: TDataSource;
    cxGrid1DBCardView1DBCardViewRow1: TcxGridDBCardViewRow;
    cxStyle11: TcxStyle;
    cxTabSheet3: TcxTabSheet;
    grExcelDBTableView1: TcxGridDBTableView;
    grExcelLevel1: TcxGridLevel;
    grExcel: TcxGrid;
    cxButton4: TcxButton;
    grExcelDBTableView1Nombre: TcxGridDBColumn;
    grExcelDBTableView1BalInicial: TcxGridDBColumn;
    grExcelDBTableView1ckTotal: TcxGridDBColumn;
    grExcelDBTableView1dpTotal: TcxGridDBColumn;
    grExcelDBTableView1dbTotal: TcxGridDBColumn;
    grExcelDBTableView1crTotal: TcxGridDBColumn;
    grExcelDBTableView1BalFinal: TcxGridDBColumn;
    grExcelDBTableView1achTotal: TcxGridDBColumn;
    sd: TSaveDialog;
    procedure cxButton1Click(Sender: TObject);
    procedure rsResumenAfterScroll(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure cxButton2Click(Sender: TObject);
    procedure ppShape2Print(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    procedure AbrirTransito;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDisponibilidad: TfDisponibilidad;

implementation

uses udmBancos, DateUtils, Udata;

{$R *.dfm}

procedure TfDisponibilidad.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rsResumen do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Parameters[3].Value := luBco.EditValue;
    Open();
  end;
end;

procedure TfDisponibilidad.rsResumenAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AbrirTransito();
end;

procedure TfDisponibilidad.AbrirTransito;
begin
  with rsCksTransito do begin
    Close();
    if rsResumen.Active and (deHasta.Date > 0) then begin
      Parameters[1].Value := deHasta.Date;
      Parameters[2].Value := rsResumenIdCuentaBanco.AsInteger;
      Open();
    end;
  end;

  with rsACHTransito do begin
    Close();
    if rsResumen.Active and (deHasta.Date > 0) then begin
      Parameters[1].Value := deHasta.Date;
      Parameters[2].Value := rsResumenIdCuentaBanco.AsInteger;
      Open();
    end;
  end;
end;

procedure TfDisponibilidad.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfDisponibilidad.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := StartOfTheMonth(Date());
  deHasta.Date := Date();
  rsBancos.Open();
  luBco.EditValue := -1;
end;

procedure TfDisponibilidad.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Desde:' + deDesde.Text + ' Hasta:' + deHasta.Text;
end;

procedure TfDisponibilidad.cxButton2Click(Sender: TObject);
begin
  inherited;
  Imprimir(Report);
end;

procedure TfDisponibilidad.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := not ppShape2.Visible;
end;

procedure TfDisponibilidad.cxButton4Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,grExcel);
end;

end.

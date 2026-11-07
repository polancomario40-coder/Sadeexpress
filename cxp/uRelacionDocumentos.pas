unit uRelacionDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, ADODB, dxCntner, Gradient, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxCalendar, StdCtrls,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ppVar, ppCtrls, ppPrnabl, ppClass, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, cxCheckBox,
  uSimpleForm, cxButtonEdit, cxCurrencyEdit, cxImageComboBox, cxSpinEdit,
  Menus,cxExportGrid4Link, ppStrtch, ppMemo, ppParameter;

type
  TRelacionDocumentos = class(TSimpleForm)
    rsDocs: TADODataSet;
    rsDocsidDocumento: TIntegerField;
    rsDocsidTrans: TIntegerField;
    rsDocsReferencia: TStringField;
    rsDocsAbrev: TStringField;
    rsDocsFecha: TDateTimeField;
    rsDocsTotal: TBCDField;
    rsDocsidSuplidor: TIntegerField;
    rsDocsNombre: TStringField;
    rsTipos: TADODataSet;
    rsTiposidTrans: TIntegerField;
    rsTiposDescripcion: TStringField;
    dsTrans: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    luTipo: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idDocumento: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Abrev: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
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
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppVariable1: TppVariable;
    Label4: TLabel;
    rsDocsBienesServicio: TSmallintField;
    rsDocsrnc: TStringField;
    Monedas: TADODataSet;
    Label5: TLabel;
    luMoneda: TcxLookupComboBox;
    dsMonedas: TDataSource;
    ReporteDet: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppVariable2: TppVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine4: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    rsDocsMoneda: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel19: TppLabel;
    ppDBCalc2: TppDBCalc;
    cxGrid1DBTableView1Impuestos: TcxGridDBColumn;
    cxGrid1DBTableView1Moneda: TcxGridDBColumn;
    rsDocsCodif: TADODataSet;
    rsDocsCodifidDocumento: TIntegerField;
    rsDocsCodifidTrans: TIntegerField;
    rsDocsCodifReferencia: TStringField;
    rsDocsCodifAbrev: TStringField;
    rsDocsCodifFecha: TDateTimeField;
    rsDocsCodifTotal: TBCDField;
    rsDocsCodifidSuplidor: TIntegerField;
    rsDocsCodifNombre: TStringField;
    rsDocsCodifidCuenta: TStringField;
    rsDocsCodifDescripcion: TStringField;
    rsDocsCodifDebito: TBCDField;
    rsDocsCodifCredito: TBCDField;
    rsDocsCodifMovimiento: TBCDField;
    dsCodif: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ReportCodif: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppLabel20: TppLabel;
    ppVariable3: TppVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDetailBand3: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine5: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel31: TppLabel;
    ppDBCalc3: TppDBCalc;
    Suplidores: TADODataSet;
    SuplidoresidSuplidor: TIntegerField;
    SuplidoresSuplidor: TStringField;
    Label6: TLabel;
    luSuplidor: TcxLookupComboBox;
    dsSuplidores: TDataSource;
    rsDocsMontoImpuestos: TBCDField;
    rsDocsCompFiscal: TStringField;
    rsDocsClaseGasto: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    rsDocsDebCre: TWordField;
    ReportNCF: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppLine6: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppVariable4: TppVariable;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppDetailBand4: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine7: TppLine;
    ppLabel39: TppLabel;
    ppDBText33: TppDBText;
    cxStyleRepository1: TcxStyleRepository;
    StyleNONCF: TcxStyle;
    StyleNCF: TcxStyle;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppShape3: TppShape;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLine8: TppLine;
    ppDBText36: TppDBText;
    ppDBText38: TppDBText;
    ppLine9: TppLine;
    PopupMenu1: TPopupMenu;
    Documentos1: TMenuItem;
    DocumentoNCFs1: TMenuItem;
    DocumentosconCodificacion1: TMenuItem;
    rsDocsCodifrnc: TStringField;
    rsDocsCodifMoneda: TStringField;
    rsDocsCodifCompFiscal: TStringField;
    rsDocsCodifClaseGasto: TStringField;
    rsDocsCodifDebCre: TWordField;
    Reportedetallado1: TMenuItem;
    ReporteRets: TppReport;
    ppTitleBand5: TppTitleBand;
    ppHeaderBand5: TppHeaderBand;
    ppLine10: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppVariable5: TppVariable;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLine11: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppLabel54: TppLabel;
    ppDBCalc5: TppDBCalc;
    cxButton4: TcxButton;
    sd: TSaveDialog;
    rsDocsConcepto: TStringField;
    cxGrid1DBTableView1Concepto: TcxGridDBColumn;
    rsDocsCodifConcepto: TStringField;
    rsDocsCodifNeto: TBCDField;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel55: TppLabel;
    rsDocsCodifTasa: TBCDField;
    ppDBMemo1: TppDBMemo;
    ppLine12: TppLine;
    ppLine13: TppLine;
    luCXP: TcxImageComboBox;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel27: TppLabel;
    ppLabel41: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLabel8: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLine14: TppLine;
    ppDBText37: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText23: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    procedure cxButton1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1ColumnHeaderClick(
      Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure ppShape3Print(Sender: TObject);
    procedure DocumentosconCodificacion1Click(Sender: TObject);
    procedure DocumentoNCFs1Click(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure Reportedetallado1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelacionDocumentos: TRelacionDocumentos;

implementation

uses uMAINDM, DateUtils, Udata, uMantDocumentos, UUtiles;

{$R *.dfm}

procedure TRelacionDocumentos.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rsDocs do begin
    Close();
    Parameters[01].Value := deDesde.Date;
    Parameters[02].Value := deHasta.Date;
    Parameters[03].Value := luTipo.EditValue;
    Parameters[04].Value := luMoneda.EditValue;
    Parameters[05].Value := luSuplidor.EditValue;
    Parameters[06].Value := luCXP.EditValue;
    Open();
  end;
end;

procedure TRelacionDocumentos.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Desde: ' + FormatDateTime('dd/mm/yyyy', deDesde.Date) +
           ' Hasta: ' + FormatDateTime('dd/mm/yyyy', deHasta.Date);

  if luTipo.EditValue <> 0 then
    Value := Value + ' [' + luTipo.Text + ']';
    
  if luCXP.EditValue = 1 then
    Value := Value + ' (CXP)'
  else
    if luCXP.EditValue = 0 then
      value := Value = ' (Abiertos)';
end;

procedure TRelacionDocumentos.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TRelacionDocumentos.FormCreate(Sender: TObject);
begin
  inherited;
  rsTipos.Open();
  Monedas.Open;
  Suplidores.Open;
  deDesde.Date := StartOfTheMonth(Date());
  deHasta.Date := Date();
  luCXP.EditValue := -1;
end;

procedure TRelacionDocumentos.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;
  with rsDocs do begin
    if Active then
      Sort := (AColumn as TcxGridDBColumn).DataBinding.FieldName;
  end;

    with rsDocsCodif do begin
    if Active then
      Sort := (AColumn as TcxGridDBColumn).DataBinding.FieldName;
  end;
end;

procedure TRelacionDocumentos.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  idDoc: Integer;
begin
  inherited;
  if rsDocsDebCre.Value = 2 then begin
    ModalShow(TfMantDocumentos,ShowFind,rsDocsIdDocumento.AsInteger,'idDocumento',True);
    idDoc := rsDocsIdDocumento.Value;

    cxButton1.Click();
    rsDocs.Locate('idDocumento',idDoc,[]);
  end;
end;

procedure TRelacionDocumentos.ppShape3Print(Sender: TObject);
begin
  inherited;
  ppShape3.Visible := not ppShape3.Visible;
end;

procedure TRelacionDocumentos.DocumentosconCodificacion1Click(
  Sender: TObject);
begin
  inherited;
  with rsDocsCodif do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Parameters[3].Value := luTipo.EditValue;
    Parameters[04].Value := luMoneda.EditValue;
    Parameters[05].Value := luSuplidor.EditValue;
    Parameters[06].Value := luCXP.EditValue;
    Open();
  end;
  Imprimir(ReportCodif);
end;

procedure TRelacionDocumentos.DocumentoNCFs1Click(Sender: TObject);
begin
  inherited;
  rsDocs.DisableControls();
  try
    Imprimir(ReportNCF);
  finally
    rsDocs.EnableControls();
  end;
end;

procedure TRelacionDocumentos.Documentos1Click(Sender: TObject);
begin
  inherited;
  Imprimir(Report);
end;

procedure TRelacionDocumentos.Reportedetallado1Click(Sender: TObject);
begin
  inherited;

    Imprimir(ReporteDet);

end;

procedure TRelacionDocumentos.cxButton4Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,cxGrid1);
end;

end.

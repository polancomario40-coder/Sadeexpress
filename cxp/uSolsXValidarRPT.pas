unit uSolsXValidarRPT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxLookAndFeelPainters, StdCtrls, cxButtons,cxExportGrid4Link,
  cxDropDownEdit, cxCalendar, DB, ADODB, cxControls, cxContainer, cxEdit,DateUtils,
  cxTextEdit, cxMaskEdit, cxImageComboBox, Wwdatsrc, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ppStrtch, ppMemo,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, cxCurrencyEdit;

type
  TSolsXValidarRPT = class(TFForm)
    Label1: TLabel;
    cbStatus: TcxImageComboBox;
    rs: TADODataSet;
    Label2: TLabel;
    Label3: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1Numero: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Suplidor: TcxGridDBColumn;
    cxGrid1DBTableView1GranTotal: TcxGridDBColumn;
    cxGrid1DBTableView1Notas: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    sd: TSaveDialog;
    ppBDEPipeline1: TppBDEPipeline;
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
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBText5: TppDBText;
    ppVariable1: TppVariable;
    rsidSolicitud: TIntegerField;
    rsNumero: TIntegerField;
    rsFecha: TDateTimeField;
    rsUsuario: TStringField;
    rsTotal: TBCDField;
    rsNombre: TStringField;
    rsConcepto: TStringField;
    rsstatus: TStringField;
    rsTipo: TStringField;
    rsCtaBanco: TStringField;
    rsMoneda: TStringField;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SolsXValidarRPT: TSolsXValidarRPT;

implementation

uses Udata;

{$R *.dfm}

procedure TSolsXValidarRPT.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := cbStatus.EditValue;
    Parameters[2].Value := deDesde.Date;
    Parameters[3].Value := deHasta.Date;
    Open();
  end;
end;

procedure TSolsXValidarRPT.cxButton4Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TSolsXValidarRPT.cxButton3Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName, cxGrid1);
end;

procedure TSolsXValidarRPT.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Solicitudes ' + cbStatus.Text + ' desde: ' + FormatDateTime('dd/mm/yyyy',deDesde.Date) +
           ' hasta: ' + FormatDateTime('dd/mm/yyyy',deHasta.Date);
end;

procedure TSolsXValidarRPT.FormCreate(Sender: TObject);
begin
  inherited;
  cbStatus.EditValue := dm.GetDefaultStr('ST_CONTAB');
  deDesde.Date := StartOfTheMonth(Date());
  deHasta.Date := Date();
end;

procedure TSolsXValidarRPT.cxButton2Click(Sender: TObject);
begin
  inherited;
  Report.Print();
end;

end.

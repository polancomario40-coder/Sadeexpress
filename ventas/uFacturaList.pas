unit uFacturaList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ppBands, ppClass, ppCtrls, myChkBox, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ADODB, cxExportGrid4Link, ppStrtch, ppMemo, cxButtonEdit,
  cxDBLookupComboBox, Menus, ppParameter;

type
  TFacturaList = class(TFFormx)
    FacturaList: TADODataSet;
    FacturaListidFactura: TGuidField;
    FacturaListFactura: TStringField;
    FacturaListidCliente: TIntegerField;
    FacturaListFecha: TDateTimeField;
    FacturaListReferencia: TStringField;
    FacturaListCancelado: TBooleanField;
    FacturaListCredito: TBooleanField;
    FacturaListSubTotal: TBCDField;
    FacturaListItbis: TBCDField;
    FacturaListDescuento: TBCDField;
    FacturaListTotal: TBCDField;
    FacturaListUsuario: TStringField;
    FacturaListCliente: TStringField;
    FacturaListTotalCR: TBCDField;
    FacturaListTotalCO: TBCDField;
    FacturaListCondicion: TIntegerField;
    dsFacturaList: TDataSource;
    plFacturaList: TppDBPipeline;
    RPTFacturaList: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDBText175: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel155: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText154: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppDBText181: TppDBText;
    ppLabel192: TppLabel;
    ppLine61: TppLine;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    FacturaListFechaCancelado: TDateTimeField;
    FacturaListPagado: TBCDField;
    FacturaListidCondicion: TStringField;
    FacturaListidEmpleado: TIntegerField;
    FacturaListEmpleado: TStringField;
    FacturaListidMoneda: TIntegerField;
    FacturaListMoneda: TStringField;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1idFactura: TcxGridDBColumn;
    GridDBTableView1Moneda: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1Factura: TcxGridDBColumn;
    GridDBTableView1idCliente: TcxGridDBColumn;
    GridDBTableView1SubTotal: TcxGridDBColumn;
    GridDBTableView1Itbis: TcxGridDBColumn;
    GridDBTableView1Descuento: TcxGridDBColumn;
    GridDBTableView1Total: TcxGridDBColumn;
    GridDBTableView1Pagado: TcxGridDBColumn;
    GridDBTableView1Credito: TcxGridDBColumn;
    GridDBTableView1Cancelado: TcxGridDBColumn;
    GridDBTableView1Referencia: TcxGridDBColumn;
    GridDBTableView1TotalCR: TcxGridDBColumn;
    GridDBTableView1TotalCO: TcxGridDBColumn;
    GridDBTableView1Usuario: TcxGridDBColumn;
    GridDBTableView1Cliente: TcxGridDBColumn;
    GridDBTableView1Condicion: TcxGridDBColumn;
    GridDBTableView1FechaCancelado: TcxGridDBColumn;
    GridDBTableView1idCondicion: TcxGridDBColumn;
    GridDBTableView1idEmpleado: TcxGridDBColumn;
    GridDBTableView1Empleado: TcxGridDBColumn;
    GridDBTableView1idMoneda: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    cxButton4: TcxButton;
    OpenFile: TOpenDialog;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label3: TLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText12: TppDBText;
    ppLabel16: TppLabel;
    ppLine4: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBText13: TppDBText;
    ppLabel6: TppLabel;
    ppDBMemo1: TppDBMemo;
    FacturaListCompFiscal: TStringField;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    cxButton5: TcxButton;
    FacturaListHora: TDateTimeField;
    rptFacturaList2: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppFooterBand2: TppFooterBand;
    ppLine3: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel15: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLine5: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText26: TppDBText;
    ppLabel30: TppLabel;
    ppLine6: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel31: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText27: TppDBText;
    ppLabel32: TppLabel;
    ppLine7: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    PopupMenu1: TPopupMenu;
    Conhora1: TMenuItem;
    FacturaListTasa: TBCDField;
    GridDBTableView1DBColumn2: TcxGridDBColumn;
    ppLabel33: TppLabel;
    ppDBText28: TppDBText;
    ppLabel34: TppLabel;
    ppDBText29: TppDBText;
    FacturaListAlmacen: TStringField;
    GridDBTableView1DBColumn3: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridDBTableView1DblClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure Conhora1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FacturaList: TFacturaList;

implementation

uses Udata, UUtiles, uFactura;

{$R *.dfm}

procedure TFacturaList.cxButton1Click(Sender: TObject);
begin
  inherited;
  FacturaList.Close;
  FacturaList.Parameters[1].Value := dedesde.date;
  FacturaList.Parameters[2].Value := dehasta.date;
  FacturaList.Open;
end;

procedure TFacturaList.cxButton2Click(Sender: TObject);
begin
  inherited;
  Imprimir(RPTFacturaList);
end;

procedure TFacturaList.cxButton3Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFacturaList.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TFacturaList.GridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalShow(TFactura, ShowFind, FacturaListidFactura.Value ,'idFactura', true);
end;

procedure TFacturaList.cxButton4Click(Sender: TObject);
begin
  inherited;
    if openfile.execute then ExportGrid4ToExcel(openfile.filename, Grid);
end;

procedure TFacturaList.cxButton5Click(Sender: TObject);
begin
  inherited;
  with FacturaList do begin
    DisableControls();
    First();
    try
      while not Eof do begin
         ModalShow(TFactura, ShowPrint, FacturaListidFactura.Value ,'idFactura', true);
         Next();
      end;
    finally
      First();
      EnableControls();
    end;
  end;
end;

procedure TFacturaList.Conhora1Click(Sender: TObject);
begin
  inherited;
  Imprimir(RPTFacturaList2);
end;

end.

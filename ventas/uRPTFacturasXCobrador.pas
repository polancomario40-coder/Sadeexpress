unit uRPTFacturasXCobrador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, ppBands, ppClass, ppCtrls, myChkBox, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, ADODB,
  Wwdatsrc, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxButtons, ppParameter;

type
  TRPTFacturasXCobrador = class(TFForm)
    FacturaList: TADODataSet;
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
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel155: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText154: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppShape14: TppShape;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppShape13: TppShape;
    ppLabel192: TppLabel;
    ppLine61: TppLine;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cbTodas: TcxCheckBox;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    FacturaListidFactura: TGuidField;
    FacturaListFactura: TStringField;
    FacturaListfecha: TDateTimeField;
    FacturaListTotal: TBCDField;
    FacturaListCobrado: TBCDField;
    FacturaListidCobrador: TIntegerField;
    FacturaListCobrador: TStringField;
    FacturaListCliente: TStringField;
    cxGrid1DBTableView1Factura: TcxGridDBColumn;
    cxGrid1DBTableView1fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Cobrado: TcxGridDBColumn;
    cxGrid1DBTableView1Cobrador: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    FacturaListBalance: TCurrencyField;
    cxGrid1DBTableView1Balance: TcxGridDBColumn;
    ppDBText4: TppDBText;
    FacturaListCondicion: TIntegerField;
    FacturaListReferencia: TStringField;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    procedure FacturaListCalcFields(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RPTFacturasXCobrador: TRPTFacturasXCobrador;

implementation

uses Udata;

{$R *.dfm}

procedure TRPTFacturasXCobrador.FacturaListCalcFields(DataSet: TDataSet);
begin
  inherited;
  FacturaListBalance.AsCurrency := FacturaListTotal.Value - FacturaListCobrado.Value;
end;

procedure TRPTFacturasXCobrador.cxButton1Click(Sender: TObject);
begin
  inherited;
  with FacturaList do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Parameters[3].Value := not cbTodas.Checked;
    Open();
  end;
end;

procedure TRPTFacturasXCobrador.cxButton2Click(Sender: TObject);
begin
  inherited;
  Imprimir(RPTFacturaList);
end;

procedure TRPTFacturasXCobrador.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TRPTFacturasXCobrador.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

end.

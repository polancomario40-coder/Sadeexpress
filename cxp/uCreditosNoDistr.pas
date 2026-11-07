unit uCreditosNoDistr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, StdCtrls, kbmMemTable, cxLookAndFeelPainters, cxButtons,
  ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ppDB, ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppCtrls, ppVar, ppPrnabl, uSimpleForm, cxPC, ppParameter;

type
  TCreditosNoDistr = class(TSimpleForm)
    mSup: TkbmMemTable;
    mSupidSuplidor: TIntegerField;
    mSupNombre: TStringField;
    mSupTelefono1: TStringField;
    mSupDireccion: TStringField;
    mSupTelefono2: TStringField;
    rsEstado: TADODataSet;
    dsEstado: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label17: TLabel;
    plHeader: TppDBPipeline;
    plEstado: TppDBPipeline;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppSystemVariable2: TppSystemVariable;
    ppVariable2: TppVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel13: TppLabel;
    ppDBText2: TppDBText;
    mSupDesde: TDateTimeField;
    mSupHasta: TDateTimeField;
    rsEstadoLineaNo: TIntegerField;
    rsEstadoTipo: TStringField;
    rsEstadoidTrans: TIntegerField;
    rsEstadoIdDocumento: TIntegerField;
    rsEstadoFecha: TDateTimeField;
    rsEstadoReferencia: TStringField;
    rsEstadoStatus: TStringField;
    rsEstadoTotal: TBCDField;
    rsEstadoAplicado: TBCDField;
    rsEstadoPendiente: TBCDField;
    ppDBCalc3: TppDBCalc;
    dxPageControl1: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Debito: TcxGridDBColumn;
    cxGrid1DBTableView1Credito: TcxGridDBColumn;
    cxGrid1DBTableView1Balance: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    deFecha: TcxDBDateEdit;
    edTel1: TcxDBTextEdit;
    edDir: TcxDBTextEdit;
    beSuplidor: TcxDBButtonEdit;
    edNombre: TcxDBTextEdit;
    edTel2: TcxDBTextEdit;
    Label4: TLabel;
    Label1: TLabel;
    dxTabSheet2: TcxTabSheet;
    Label2: TLabel;
    deHasta2: TcxDateEdit;
    cxButton4: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    rsCreditos: TADODataSet;
    rsCreditosLineaNo: TIntegerField;
    rsCreditosidSuplidor: TIntegerField;
    rsCreditosSuplidor: TStringField;
    rsCreditosTipo: TStringField;
    rsCreditosidTrans: TIntegerField;
    rsCreditosIdDocumento: TIntegerField;
    rsCreditosFecha: TDateTimeField;
    rsCreditosReferencia: TStringField;
    rsCreditosStatus: TStringField;
    rsCreditosTotal: TBCDField;
    rsCreditosAplicado: TBCDField;
    rsCreditosPendiente: TBCDField;
    dsCreditos: TDataSource;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    RepCreditos: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel24: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBPipeline1: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText13: TppDBText;
    ppLine3: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppVariable1: TppVariable;
    procedure beSuplidorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure mSupidSuplidorValidate(Sender: TField);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure cxButton3Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CreditosNoDistr: TCreditosNoDistr;

implementation

uses uListaSups, uMAINDM, DateUtils, Udata;

{$R *.dfm}

procedure TCreditosNoDistr.beSuplidorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  inherited;
  i := BuscarSuplidor();
  if i > 0 then begin
    if not (mSup.State in dsEditModes) then
      mSup.Edit();

    mSupIdSuplidor.AsInteger := i;

    SelectNext(ActiveControl,True,True);
  end;
end;

procedure TCreditosNoDistr.mSupidSuplidorValidate(Sender: TField);
begin
  inherited;
  if mSupidSuplidor.AsInteger = 0 then begin
    mSupNombre.AsString := '';
    mSupTelefono1.AsString := '';
    mSupTelefono2.AsString := '';
    mSupDireccion.AsString := '';
  end
  else if not maindm.BuscarSupXId(mSupIdSuplidor.AsInteger) then
    raise Exception.Create('Este suplidor no esta registrado')
  else begin
    mSupNombre.AsString := maindm.rsBuscarSupNombre.AsString;
    mSupTelefono1.AsString := maindm.rsBuscarSupTelefono1.AsString;
    mSupTelefono2.AsString := maindm.rsBuscarSupTelefono2.AsString;
    mSupDireccion.AsString := maindm.rsBuscarSupDireccion.AsString;
  end;
end;

procedure TCreditosNoDistr.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rsEstado do begin
    Close();
    Parameters[1].Value := mSupidSuplidor.AsInteger;
    Parameters[2].Value := mSupHasta.AsDateTime;
    Open();
  end;
end;

procedure TCreditosNoDistr.FormCreate(Sender: TObject);
begin
  inherited;
  mSup.Open();
  mSup.Append();
  mSupHasta.AsDateTime := Date();
  deHasta2.Date := Date();
end;

procedure TCreditosNoDistr.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TCreditosNoDistr.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Datos desde: ' + FormatDateTime('dd/mm/yyyy', mSupDesde.Value) +
           ' hasta: ' + FormatDateTime('dd/mm/yyyy', mSupHasta.Value);
end;

procedure TCreditosNoDistr.cxButton3Click(Sender: TObject);
begin
  inherited;

    Imprimir(ppReport1);

end;

procedure TCreditosNoDistr.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := deHasta2.Date;
end;

procedure TCreditosNoDistr.cxButton4Click(Sender: TObject);
begin
  inherited;
  with rsCreditos do begin
    Close();
    Parameters[1].Value := deHasta2.Date;
    Open();
  end;
end;

procedure TCreditosNoDistr.cxButton5Click(Sender: TObject);
begin
  inherited;
  Imprimir(repCreditos);
end;

end.

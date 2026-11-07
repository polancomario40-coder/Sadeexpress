unit uAplicacionDocs;

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
  ppDBPipe, ppCtrls, ppVar, ppPrnabl, uSimpleForm;

type
  TAplicacionDocs = class(TSimpleForm)
    mSup: TkbmMemTable;
    mSupidSuplidor: TIntegerField;
    mSupNombre: TStringField;
    mSupTelefono1: TStringField;
    mSupDireccion: TStringField;
    mSupFecha: TDateTimeField;
    Label4: TLabel;
    beSuplidor: TcxDBButtonEdit;
    edNombre: TcxDBTextEdit;
    edDir: TcxDBTextEdit;
    edTel1: TcxDBTextEdit;
    edTel2: TcxDBTextEdit;
    Label1: TLabel;
    deFecha: TcxDBDateEdit;
    mSupTelefono2: TStringField;
    cxButton1: TcxButton;
    rsEstado: TADODataSet;
    dsEstado: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
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
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel13: TppLabel;
    ppDBText2: TppDBText;
    rsEstadoidDocumento: TIntegerField;
    rsEstadoFecha: TDateTimeField;
    rsEstadoTotal: TBCDField;
    rsEstadoFechaPago: TDateTimeField;
    rsEstadoPago: TStringField;
    rsEstadoTipoPago: TStringField;
    rsEstadoMontoPago: TBCDField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc3: TppDBCalc;
    ppLabel4: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText13: TppDBText;
    rsEstadoReferencia: TStringField;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1FechaPago: TcxGridDBColumn;
    cxGrid1DBTableView1Pago: TcxGridDBColumn;
    cxGrid1DBTableView1TipoPago: TcxGridDBColumn;
    cxGrid1DBTableView1MontoPago: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    procedure beSuplidorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure mSupidSuplidorValidate(Sender: TField);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AplicacionDocs: TAplicacionDocs;

implementation

uses uListaSups, uMAINDM, Udata;

{$R *.dfm}

procedure TAplicacionDocs.beSuplidorPropertiesButtonClick(Sender: TObject;
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

procedure TAplicacionDocs.mSupidSuplidorValidate(Sender: TField);
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

procedure TAplicacionDocs.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rsEstado do begin
    Close();
    Parameters[1].Value := mSupidSuplidor.AsInteger;
    Parameters[2].Value := mSupFecha.AsDateTime;
    Open();
  end;
end;

procedure TAplicacionDocs.FormCreate(Sender: TObject);
begin
  inherited;
  mSup.Open();
  mSup.Append();
  mSupFecha.AsDateTime := Date();
end;

procedure TAplicacionDocs.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TAplicacionDocs.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Datos hasta: ' + FormatDateTime('dd/mm/yyyy', mSupFecha.Value);
end;

procedure TAplicacionDocs.cxButton3Click(Sender: TObject);
begin
  inherited;
  rsEstado.DisableControls();
  try
    ppReport1.Print();
  finally
    rsEstado.EnableControls();
  end;
end;

end.

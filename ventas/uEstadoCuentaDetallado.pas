unit uEstadoCuentaDetallado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Gradient,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit,cxExportGrid4Link,
  cxCheckBox, ADODB, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppCache, myChkBox;

type
  TEstadoCuentaDetallado = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    Label4: TLabel;
    dtpAl: TcxDateEdit;
    cxButton1: TcxButton;
    Gradient4: TGradient;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Gradient3: TGradient;
    bSalir: TcxButton;
    cxButton2: TcxButton;
    cbPorVencimiento: TcxCheckBox;
    Label1: TLabel;
    Label3: TLabel;
    edtIdCliente: TcxButtonEdit;
    edtCliente: TcxTextEdit;
    lkMoneda: TcxLookupComboBox;
    rsEstadoCuentaDet: TADODataSet;
    ClienteAct: TADODataSet;
    rsMoneda: TADODataSet;
    rsMonedaidMoneda: TIntegerField;
    rsMonedaMoneda: TStringField;
    rsMonedaCursoLegal: TBooleanField;
    dsEstadoCuentaDet: TDataSource;
    dsMoneda: TDataSource;
    dsClienteAct: TDataSource;
    rsEstadoCuentaDetId: TAutoIncField;
    rsEstadoCuentaDetIdCxc: TGuidField;
    rsEstadoCuentaDetCxc: TStringField;
    rsEstadoCuentaDetFecha: TDateTimeField;
    rsEstadoCuentaDetVencimiento: TDateTimeField;
    rsEstadoCuentaDetIdTipoDocumento: TStringField;
    rsEstadoCuentaDetTotal: TBCDField;
    rsEstadoCuentaDetBalance: TBCDField;
    rsEstadoCuentaDetIdCliente: TIntegerField;
    rsEstadoCuentaDetCliente: TStringField;
    rsEstadoCuentaDetBalanceAPresentar: TBCDField;
    rsEstadoCuentaDetFechaACalcular: TDateTimeField;
    rsEstadoCuentaDetEscala1: TBCDField;
    rsEstadoCuentaDetEscala2: TBCDField;
    rsEstadoCuentaDetEscala3: TBCDField;
    rsEstadoCuentaDetEscala4: TBCDField;
    rsEstadoCuentaDetEscala5: TBCDField;
    ClienteActidCliente: TIntegerField;
    ClienteActCliente: TStringField;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1IdCxc: TcxGridDBColumn;
    cxGrid1DBTableView1Cxc: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Vencimiento: TcxGridDBColumn;
    cxGrid1DBTableView1IdTipoDocumento: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Balance: TcxGridDBColumn;
    cxGrid1DBTableView1IdCliente: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1BalanceAPresentar: TcxGridDBColumn;
    cxGrid1DBTableView1FechaACalcular: TcxGridDBColumn;
    cxGrid1DBTableView1Escala1: TcxGridDBColumn;
    cxGrid1DBTableView1Escala2: TcxGridDBColumn;
    cxGrid1DBTableView1Escala3: TcxGridDBColumn;
    cxGrid1DBTableView1Escala4: TcxGridDBColumn;
    cxGrid1DBTableView1Escala5: TcxGridDBColumn;
    plEstadoCDetallado: TppDBPipeline;
    rptEstadoCuentaDet: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel14: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    cbVencimiento: TmyCheckBox;
    lFechaAl: TppLabel;
    lMoneda: TppLabel;
    sd: TSaveDialog;
    cxButton3: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure edtIdClientePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtIdClienteExit(Sender: TObject);
    procedure cbVencimientoPrint(Sender: TObject);
    procedure lFechaAlPrint(Sender: TObject);
    procedure lMonedaPrint(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
    Function ValidarCliente(IdCliente : Variant) : Boolean;
  public
    { Public declarations }
  end;

var
  EstadoCuentaDetallado: TEstadoCuentaDetallado;

implementation

uses Udata, UUtiles, uBusqueda;

{$R *.dfm}

procedure TEstadoCuentaDetallado.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TEstadoCuentaDetallado.FormCreate(Sender: TObject);
begin
  inherited;
  dtpAl.Date := dm.DBFecha;
  rsMoneda.Open();
  rsMoneda.Locate('CursoLegal', 1, []);
  lkMoneda.EditValue := rsMonedaIdMoneda.Value;
end;

procedure TEstadoCuentaDetallado.cxButton1Click(Sender: TObject);
begin
  inherited;
  With rsEstadoCuentaDet, Parameters Do
  Begin
    Close();
    ParamByName('@FechaAl').Value := dtpAl.Date;
    ParamByName('@IdClienteParametro').Value := SaveStrToInt(edtIdCliente.Text);
    ParamByName('@IdMoneda').Value := lkMoneda.EditValue;
    ParamByName('@PorVencimiento').Value := cbPorVencimiento.Checked;
    Open();
  End;
end;

procedure TEstadoCuentaDetallado.bSalirClick(Sender: TObject);
begin
  inherited;
  If rsEstadoCuentaDet.Active Then
  Begin
    rptEstadoCuentaDet.Print;
  End;
end;

procedure TEstadoCuentaDetallado.edtIdClientePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
Var
  x : Variant;
begin
  inherited;
  x := fbuscar(TBusqueda,'idCliente',false,'FindCliente');
  if x <> Null then
  begin
    edtIdCliente.Text := x;
    If Not ValidarCliente(edtIdCliente.Text) Then
    Begin
      ShowMessage('Este cliente no existe');
      edtIdCliente.Clear;
      edtCliente.Clear;
      edtIdCliente.SetFocus;
    End
    Else
    Begin
      edtCliente.Text := ClienteActCliente.Value;
    End;
  end;
end;

function TEstadoCuentaDetallado.ValidarCliente(
  IdCliente: Variant): Boolean;
begin
  With ClienteAct, Parameters Do
  Begin
    Close();
    ParamByName('@IdCliente').Value := IdCliente;
    Open;
    Result := Not IsEmpty;
  End;
end;


procedure TEstadoCuentaDetallado.edtIdClienteExit(Sender: TObject);
begin
  inherited;
  If Not ValidarCliente(edtIdCliente.Text) Then
  Begin
    ShowMessage('Este cliente no existe');
    edtIdCliente.Clear;
    edtCliente.Clear;
    edtIdCliente.SetFocus;
  End
  Else
  Begin
    edtCliente.Text := ClienteActCliente.Value;
  End;
end;

procedure TEstadoCuentaDetallado.cbVencimientoPrint(Sender: TObject);
begin
  inherited;
  cbVencimiento.Checked := cbPorVencimiento.Checked;
end;

procedure TEstadoCuentaDetallado.lFechaAlPrint(Sender: TObject);
begin
  inherited;
  lFechaAl.Caption := DateToStr(dtpAl.Date);
end;

procedure TEstadoCuentaDetallado.lMonedaPrint(Sender: TObject);
begin
  inherited;
  lMoneda.Caption := lkMoneda.EditText;
end;

procedure TEstadoCuentaDetallado.cxButton3Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName, cxGrid1);
end;

end.

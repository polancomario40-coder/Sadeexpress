unit uCreditoISR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, DB, Gradient, StdCtrls, cxLookAndFeelPainters,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, DateUtils,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  cxProgressBar, cxButtonEdit, cxTrackBar, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppBands, myChkBox,
  ppPrnabl, ppCache, ppVar, ppParameter;

type
  TCreditoISR = class(TSimpleForm)
    Label2: TLabel;
    Label1: TLabel;
    edtAno: TcxTextEdit;
    cxButton1: TcxButton;
    Gradient4: TGradient;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton2: TcxButton;
    Gradient3: TGradient;
    spCreditoISR: TADOStoredProc;
    spCreditoISRIdCreditoISR: TAutoIncField;
    spCreditoISRAno: TIntegerField;
    spCreditoISREmpleadoId: TIntegerField;
    spCreditoISREmpleado: TStringField;
    spCreditoISRMonto: TBCDField;
    spCreditoISRCerrado: TBooleanField;
    spCreditoISRDescontado: TBCDField;
    spCreditoISRPendiente: TBCDField;
    cxGrid1DBTableView1IdCreditoISR: TcxGridDBColumn;
    cxGrid1DBTableView1Ano: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn;
    cxGrid1DBTableView1Empleado: TcxGridDBColumn;
    cxGrid1DBTableView1Cerrado: TcxGridDBColumn;
    cxGrid1DBTableView1Monto: TcxGridDBColumn;
    cxGrid1DBTableView1Descontado: TcxGridDBColumn;
    cxGrid1DBTableView1Pendiente: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    spCreditoISRPorciento: TBCDField;
    EmpleadoList: TADODataSet;
    EmpleadoListEmpleadoId: TIntegerField;
    EmpleadoListEmpleado: TStringField;
    spCreditoIsrDet: TADOStoredProc;
    spCreditoIsrDetIdCreditoIsrDet: TAutoIncField;
    spCreditoIsrDetIdCreditoIsr: TIntegerField;
    spCreditoIsrDetNominaId: TIntegerField;
    spCreditoIsrDetMonto: TBCDField;
    spCreditoIsrDetFecha: TDateTimeField;
    spCreditoIsrDetPorciento: TBCDField;
    dsCreditoDet: TDataSource;
    cxGridDBTableView1IdCreditoIsrDet: TcxGridDBColumn;
    cxGridDBTableView1IdCreditoIsr: TcxGridDBColumn;
    cxGridDBTableView1NominaId: TcxGridDBColumn;
    cxGridDBTableView1Monto: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1Porciento: TcxGridDBColumn;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    rptCreditoIsr: TppReport;
    plCreditoIsrRpt: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
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
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLine1: TppLine;
    cxButton3: TcxButton;
    ppLabel1: TppLabel;
    lAno: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spCreditoISRNewRecord(DataSet: TDataSet);
    procedure spCreditoISREmpleadoIdValidate(Sender: TField);
    procedure cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure spCreditoISRAfterPost(DataSet: TDataSet);
    procedure spCreditoISRAfterScroll(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure lAnoPrint(Sender: TObject);
  private
    { Private declarations }
    Function ValidarEmpleado (IdEmpleado : Integer) : Boolean;

  public
    { Public declarations }
  end;

var
  CreditoISR: TCreditoISR;

implementation

uses Udata, uBusquedaDX, uEmpleadoFindDX, UUtiles;

{$R *.dfm}

procedure TCreditoISR.FormCreate(Sender: TObject);
begin
  inherited;
  EmpleadoList.Open();
  edtAno.Text := IntToStr(YearOf(Date));
end;

procedure TCreditoISR.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TCreditoISR.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spCreditoISR, Parameters Do
  Begin
    If edtAno.Text <> '' Then
    Begin
      Close();
      ParamByName('@Ano').Value := StrToIntDef(edtAno.Text, 0);
      Open();
    End
    Else
      ShowMessage('Indique el año');  
  End;
end;

procedure TCreditoISR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TCreditoISR.spCreditoISRNewRecord(DataSet: TDataSet);
begin
  inherited;
  If StrToIntDef(edtAno.Text, 0) <> 0 Then
  Begin
    spCreditoISRAno.Value := StrToInt(edtAno.Text);
  End
  Else
    Raise Exception.Create('Error al agregar nuevo registro, verifique el ano');
end;

function TCreditoISR.ValidarEmpleado(IdEmpleado: Integer): Boolean;
begin
  With EmpleadoList Do
  Begin
    Result := Locate('EmpleadoId', IdEmpleado, []);
  End;
end;

procedure TCreditoISR.spCreditoISREmpleadoIdValidate(Sender: TField);
begin
  inherited;
  If Not ValidarEmpleado(Sender.Value) Then
    Raise Exception.Create('Este empleado no existe');
end;

procedure TCreditoISR.cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  xx : variant;
begin
  inherited;
    xx := fBuscar(tEmpleadoFindDX, 'EmpleadoId', False, '');
    if not(xx = null) then
    begin
      if  not (ds.State in [dsInsert,dsEdit]) then
          ds.DataSet.Edit();

      ds.DataSet.FieldByName('EmpleadoID').Value := xx;
    end;

end;

procedure TCreditoISR.spCreditoISRAfterPost(DataSet: TDataSet);
Var
  Id : Integer;
begin
  inherited;
  With spCreditoISR Do
  Begin
    Id := spCreditoISRIdCreditoISR.Value;
    Requery();
    Locate('IdCreditoISR', Id, []); 
  End;
end;

procedure TCreditoISR.spCreditoISRAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With spCreditoIsrDet, Parameters Do
  Begin
    Close();
    ParamByName('@IdCreditoIsr').Value := spCreditoISRIdCreditoISR.Value;
    Open();
  End;
end;

procedure TCreditoISR.cxButton3Click(Sender: TObject);
begin
  inherited;
  Imprimir(rptCreditoIsr); 
end;

procedure TCreditoISR.lAnoPrint(Sender: TObject);
begin
  inherited;
  lAno.Caption := 'Año: ' + edtAno.Text;
end;

end.

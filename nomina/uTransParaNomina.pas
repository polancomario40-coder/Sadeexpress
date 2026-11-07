unit uTransParaNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassRS, cxLookAndFeelPainters, StdCtrls, cxSpinEdit,
  cxDBEdit, cxCheckBox, cxButtonEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, ADODB, ImgList, ActnList, Wwdatsrc, cxButtons,
  Gradient, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands,
  ppCache, ppCtrls, myChkBox, ppVar, ppPrnabl;

type
  TTransParaNomina = class(TMantClassRS)
    spTransParaNomina: TADOStoredProc;
    spTransParaNominaIdTransParaNomina: TGuidField;
    spTransParaNominaTipoTransaccionId: TIntegerField;
    spTransParaNominaNominaId: TIntegerField;
    spTransParaNominaTransParaNomina: TStringField;
    spTransParaNominaFactor: TBCDField;
    spTransParaNominaCerrado: TBooleanField;
    dsDet: TDataSource;
    spTransParaNominaDet: TADOStoredProc;
    spTransParaNominaDetIdTransParaNominaDet: TGuidField;
    spTransParaNominaDetIdTransParaNomina: TGuidField;
    spTransParaNominaDetEmpleadoId: TIntegerField;
    spTransParaNominaDetValor: TBCDField;
    spNominasAbiertas: TADOStoredProc;
    spNominasAbiertasNominaId: TIntegerField;
    spNominasAbiertasDesde: TDateTimeField;
    spNominasAbiertasHasta: TDateTimeField;
    spNominasAbiertasFecha: TDateTimeField;
    spNominasAbiertasTipoEmpleado: TStringField;
    dsNominasAbiertas: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    Label16: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    qryNomina: TADOQuery;
    qryNominaNominaId: TIntegerField;
    qryNominaFecha: TDateTimeField;
    qryNominaDesde: TDateTimeField;
    qryNominaHasta: TDateTimeField;
    qryNominaMescalendario: TSmallintField;
    qryNominaCerrada: TBooleanField;
    cxDBTextEdit2: TcxDBTextEdit;
    dsNomina: TDataSource;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    qryTipoTransaccion: TADOQuery;
    dsTipoTransaccion: TDataSource;
    spTransParaNominacfTipoTransaccion: TStringField;
    qryTipoTransaccionTipoTransaccionId: TIntegerField;
    qryTipoTransaccionTipoTransaccion: TStringField;
    qryTipoTransaccionDebito: TBooleanField;
    Gradient5: TGradient;
    Gradient3: TGradient;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    spTransParaNominaDetcfValorXFactor: TFloatField;
    cxGrid1DBTableView1IdTransParaNominaDet: TcxGridDBColumn;
    cxGrid1DBTableView1IdTransParaNomina: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1cfValorXFactor: TcxGridDBColumn;
    qryEmpleados: TADOQuery;
    dsEmpleado: TDataSource;
    qryEmpleadosEmpleadoId: TIntegerField;
    qryEmpleadosEmpleado: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    qryEmpleadoSelect: TADOQuery;
    qryNominasAbiertas: TADOQuery;
    bFromExcel: TcxButton;
    spTransParaNominaRpt: TADOStoredProc;
    spTransParaNominaRptNominaId: TIntegerField;
    spTransParaNominaRptDesde: TDateTimeField;
    spTransParaNominaRptHasta: TDateTimeField;
    spTransParaNominaRptFecha: TDateTimeField;
    spTransParaNominaRptCerrada: TBooleanField;
    spTransParaNominaRptTipoTransaccion: TStringField;
    spTransParaNominaRptEmpleadoId: TIntegerField;
    spTransParaNominaRptEmpleado: TStringField;
    spTransParaNominaRptTipoTransaccionId: TIntegerField;
    spTransParaNominaRptFactor: TBCDField;
    spTransParaNominaRptValor: TBCDField;
    spTransParaNominaRptValorXFactor: TBCDField;
    rptTransParaNomina: TppReport;
    plTransParaNomina: TppDBPipeline;
    dsTransParaNomina: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
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
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    spTransParaNominaRptTransParaNomina: TStringField;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure spTransParaNominaDetCalcFields(DataSet: TDataSet);
    procedure spTransParaNominaNewRecord(DataSet: TDataSet);
    procedure spTransParaNominaDetNewRecord(DataSet: TDataSet);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1Enter(Sender: TObject);
    procedure spTransParaNominaDetEmpleadoIdValidate(Sender: TField);
    procedure cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure spTransParaNominaIdTransParaNominaValidate(Sender: TField);
    procedure spTransParaNominaNominaIdValidate(Sender: TField);
    procedure bFromExcelClick(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
  private
    { Private declarations }
    fCerrado : Boolean;
    Procedure SetDet;
    Function EmpleadoExiste(EmpleadoId : Integer) : Boolean;
    Function NominaAbierta(NominaId : Integer) : Boolean;
  public
    { Public declarations }
  protected
    function Localizar(const id : Variant) : boolean; Override;
    procedure browsebotonstate; Override;
    procedure Editbotonstate; Override;
    procedure Newbotonstate; Override;
  end;

var
  TransParaNomina: TTransParaNomina;

implementation

uses Udata, uBusquedaDX, uBusquedaRangoDX, UUtiles, uEmpleadoFindDX,
  uMantClass, uFromExcel;

{$R *.dfm}

procedure TTransParaNomina.FormCreate(Sender: TObject);
begin
  inherited;
  fCerrado := False;
  Modulo := 'Nomina';
  LogField := 'IdTransParaNomina';
//  tfBusqueda := TBusqNomina;
  Busqfield := 'IdTransParaNomina';
//  TFBusqueda := TBusquedaRangoDX;
//  spName := 'nomNominaFindRango';
  TFBusqueda := TBusquedaRangoDX;
  spName := 'nomTransParaNominaFind';
  OcultarC1 := True;
  qryEmpleados.Open;
  qryTipoTransaccion.Open;
  spTransParaNominaDet.Open();
end;

procedure TTransParaNomina.cxDBButtonEdit2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
Var
  Resultado : Variant;
begin
  inherited;
  If appEstado In [appInsert, appEdit] Then
  Begin
    Resultado := TBusquedaRangoDX.Buscar('NominaId', False, 'nomNominaFindRango', True, -1);
    If Resultado <> Null Then
    Begin
       spTransParaNominaNominaId.Value := Resultado;
       qryNomina.Close();
       qryNomina.Parameters.ParamByName('NominaId').Value := Resultado;
       qryNomina.Open();
    End;
  End;
end;

procedure TTransParaNomina.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
Var
  Resultado : Variant;
begin
  inherited;
  If appEstado In [appInsert, appEdit] Then
  Begin
    Resultado := TBusquedaDX.Buscar('TipoTransaccionId', False, 'nomTipoTraansaccionFind', True, -1);
    If Resultado <> Null Then
      spTransParaNominaTipoTransaccionId.Value := Resultado;
  End;
end;

procedure TTransParaNomina.spTransParaNominaDetCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  spTransParaNominaDetcfValorXFactor.Value := spTransParaNominaFactor.Value * spTransParaNominaDetValor.Value;
end;

procedure TTransParaNomina.spTransParaNominaNewRecord(DataSet: TDataSet);
begin
  inherited;
  spTransParaNominaIdTransParaNomina.AsGuid := dm.NewGuid;
  spTransParaNominaFactor.Value := 1;
end;

procedure TTransParaNomina.spTransParaNominaDetNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  spTransParaNominaDetIdTransParaNominaDet.AsGuid := dm.NewGuid;
  spTransParaNominaDetIdTransParaNomina.AsGuid := spTransParaNominaIdTransParaNomina.AsGuid;
end;

procedure TTransParaNomina.AGuardarExecute(Sender: TObject);
begin
  inherited;
  spTransParaNominaDet.UpdateBatch();
end;

procedure TTransParaNomina.ACancelarExecute(Sender: TObject);
begin
  inherited;
  spTransParaNominaDet.CancelBatch();
end;

procedure TTransParaNomina.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TTransParaNomina.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  If appEstado In [appEdit, appInsert] Then
    If spTransParaNominaDet.IsEmpty Then
      spTransParaNominaDet.Insert;
end;

function TTransParaNomina.EmpleadoExiste(EmpleadoId: Integer): Boolean;
begin
  With qryEmpleadoSelect, Parameters Do
  Begin
    Close();
    ParamByName('EmpleadoId').Value := EmpleadoId;
    Open();
    If IsEmpty Then
      Result := False
    Else
      Result := True;
  End;
end;

procedure TTransParaNomina.spTransParaNominaDetEmpleadoIdValidate(
  Sender: TField);
begin
  inherited;
  If Not EmpleadoExiste(Sender.Value) Then
  Begin
    Raise Exception.Create('Empleado no existe o esta inactivo');
  End;
end;

procedure TTransParaNomina.cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
Var
  Resultado : Variant;
begin
  inherited;
  If appEstado In [appInsert, appEdit] Then
  Begin
    Resultado := fBuscar(tEmpleadoFindDX, 'EmpleadoId', False, '');
    If Resultado <> Null Then
    Begin
       spTransParaNominaDetEmpleadoId.Value := Resultado;
    End;
  End;
end;

procedure TTransParaNomina.SetDet;
begin
  With spTransParaNominaDet, Parameters Do
  Begin
    Close();
    ParamByName('@IdTransParaNomina').Value := spTransParaNominaIdTransParaNomina.Value;
    Open();
  End;
end;

function TTransParaNomina.Localizar(const id: Variant): boolean;
begin
  With spTransParaNomina, Parameters Do
  Begin
    Close();
    ParamByName('@IdTransParaNomina').Value := Id;
    Open();

    SetDet;
    qryNomina.Close();
    qryNomina.Parameters.ParamByName('NominaId').Value := spTransParaNominaNominaId.Value;
    qryNomina.Open();
    fCerrado := qryNominaCerrada.Value;


    Result := Not IsEmpty;
  End;
end;

procedure TTransParaNomina.spTransParaNominaIdTransParaNominaValidate(
  Sender: TField);
begin
  inherited;
  SetDet;
end;

function TTransParaNomina.NominaAbierta(NominaId: Integer): Boolean;
begin
  With qryNominasAbiertas, Parameters Do
  Begin
    Close();
    ParamByName('NominaId').Value := NominaId;
    Open();
    If IsEmpty Then
      Result := False
    Else
      Result := True;
  End;
end;

procedure TTransParaNomina.spTransParaNominaNominaIdValidate(
  Sender: TField);
begin
  inherited;
  If Not NominaAbierta(Sender.Value) Then
    Raise Exception.Create('Esta nómina no existe o esta cerrada')
  Else
  Begin
    qryNomina.Close();
    qryNomina.Parameters.ParamByName('NominaId').Value := Sender.Value;
    qryNomina.Open();
  End;
end;

procedure TTransParaNomina.browsebotonstate;
begin
  inherited;
  AEditar.Enabled := Not fCerrado;
  dsDet.AutoEdit := Not fCerrado;
  bFromExcel.Enabled := False;
end;

procedure TTransParaNomina.Editbotonstate;
begin
  inherited;
  dsDet.AutoEdit := True;
  bFromExcel.Enabled := Not fCerrado;
end;

procedure TTransParaNomina.Newbotonstate;
begin
  inherited;
  dsDet.AutoEdit := True;
  bFromExcel.Enabled := Not fCerrado;
end;

procedure TTransParaNomina.bFromExcelClick(Sender: TObject);
begin
  inherited;
  With tFromExcel.Create(Application) Do
  Begin
    If ShowModal = mrOk Then
    Begin
      With qry Do
      Begin
        First;
        While (qry.FieldByName('Id').Value > 0) And (Not Eof) Do
        Begin
          spTransParaNominaDet.Insert;
          spTransParaNominaDetEmpleadoId.Value := qry.FieldByName('EmpleadoId').Value;
          spTransParaNominaDetValor.Value := qry.FieldByName('Valor').Value;
          spTransParaNominaDet.Post;
          qry.Next;
        End;
      End;
    End;
    Free;
  End;
end;

procedure TTransParaNomina.AprintExecute(Sender: TObject);
begin
  inherited;
  With spTransParaNominaRpt, Parameters Do
  Begin
    Close();
    ParamByName('@IdTransParaNomina').Value := spTransParaNominaIdTransParaNomina.Value;
    Open();
  End;
  rptTransParaNomina.Print;
end;

end.

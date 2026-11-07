unit uAvances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, DB, Gradient, ADODB, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxButtonEdit, cxCalendar, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache, ppCtrls,
  ppPrnabl, ppVar, cxImage;

type
  TAvances = class(TSimpleForm)
    spAvance: TADODataSet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    Label4: TLabel;
    dtpDesde: TcxDateEdit;
    dtpHasta: TcxDateEdit;
    cxButton1: TcxButton;
    Gradient4: TGradient;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    spAvanceIdAvance: TGuidField;
    spAvanceFecha: TDateTimeField;
    spAvanceTipoTransaccionIdIn: TIntegerField;
    spAvanceTipoTransaccionIdOut: TIntegerField;
    spAvanceEmpleadoId: TIntegerField;
    spAvanceMonto: TBCDField;
    spAvanceCerrado: TBooleanField;
    Label2: TLabel;
    dsEmpleado: TDataSource;
    EmpleadoList: TADODataSet;
    EmpleadoListEmpleadoId: TIntegerField;
    EmpleadoListEmpleado: TStringField;
    spAvanceIdCentroCosto: TGuidField;
    spAvanceCentroCosto: TStringField;
    cxGrid1DBTableView1IdAvance: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1TipoTransaccionIdIn: TcxGridDBColumn;
    cxGrid1DBTableView1TipoTransaccionIdOut: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn;
    cxGrid1DBTableView1Monto: TcxGridDBColumn;
    cxGrid1DBTableView1Cerrado: TcxGridDBColumn;
    cxGrid1DBTableView1IdCentroCosto: TcxGridDBColumn;
    cxGrid1DBTableView1CentroCosto: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    Label3: TLabel;
    Label5: TLabel;
    spGetCentroCostoEmp: TADOStoredProc;
    spGetCentroCostoEmpidCentroCosto: TGuidField;
    spGetCentroCostoEmpCentroCosto: TStringField;
    rsCentroCosto: TADODataSet;
    rsCentroCostoidCentroCosto: TGuidField;
    rsCentroCostoCentroCosto: TStringField;
    dsCentroCosto: TDataSource;
    edtTipoTransIn: TcxTextEdit;
    edtTipoTransOut: TcxTextEdit;
    edtTipoTransOutDesc: TcxTextEdit;
    edtTipoTransInDesc: TcxTextEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    spAvanceToBanco: TADOStoredProc;
    spAvanceToBancoCadena: TStringField;
    save: TSaveDialog;
    spAvanceToBancoNombreArchivo: TStringField;
    cxButton5: TcxButton;
    spIncContador: TADOStoredProc;
    cxButton6: TcxButton;
    rptAvance: TppReport;
    plAvance: TppDBPipeline;
    spAvancelkEmpleado: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
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
    ppShape1: TppShape;
    lDelAl: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel1: TppLabel;
    ppDBCalc2: TppDBCalc;
    Label6: TLabel;
    edtGrupo: TcxTextEdit;
    Label7: TLabel;
    spAvanceRpt: TADOStoredProc;
    spAvanceRptIdAvance: TGuidField;
    spAvanceRptFecha: TDateTimeField;
    spAvanceRptTipoTransaccionIdIn: TIntegerField;
    spAvanceRptTipoTransaccionIdOut: TIntegerField;
    spAvanceRptEmpleadoId: TIntegerField;
    spAvanceRptMonto: TBCDField;
    spAvanceRptCerrado: TBooleanField;
    spAvanceRptIdCentroCosto: TGuidField;
    spAvanceRptCentroCosto: TStringField;
    spAvanceRptGrupo: TStringField;
    spAvanceRptDepartamento: TStringField;
    spAvanceRptEmpleado: TStringField;
    dsAvenceRpt: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText6: TppDBText;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    Label8: TLabel;
    Label9: TLabel;
    edtGrupoRpt: TcxTextEdit;
    spAvanceGrupo: TStringField;
    procedure cxButton2Click(Sender: TObject);
    procedure spAvanceEmpleadoIdValidate(Sender: TField);
    procedure spAvanceFechaValidate(Sender: TField);
    procedure spAvanceCentroCostoValidate(Sender: TField);
    procedure spAvanceIdCentroCostoValidate(Sender: TField);
    procedure cxGrid1DBTableView1CentroCostoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spAvanceNewRecord(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure lDelAlPrint(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
    Function ValidarEmpleado (IdEmpleado : Integer) : Boolean;
    Function ValidarCentroCosto(CentroCosto : String) : Boolean;
    Function ValidarFecha (Fecha : tDate) : Boolean;
  public
    { Public declarations }
  end;

var
  Avances: TAvances;

implementation

uses Udata, UUtiles, uCentroCostoFind, uBusquedaDX, uEmpleadoFindDX;

{$R *.dfm}

procedure TAvances.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

function TAvances.ValidarEmpleado(IdEmpleado: Integer): Boolean;
begin
  With EmpleadoList Do
  Begin
    Result := Locate('EmpleadoId', IdEmpleado, []);
  End;
end;

procedure TAvances.spAvanceEmpleadoIdValidate(Sender: TField);
begin
  inherited;
  If Not ValidarEmpleado(Sender.Value) Then
    Raise Exception.Create('Este empleado no existe');

// Asignar el Centro de costo de la seccion
   With spGetCentroCostoEmp, Parameters Do
   Begin
     Close;
     ParamByName('@EmpleadoId').Value := Sender.Value;
     Open;

     spAvanceIdCentroCosto.Value := spGetCentroCostoEmpidCentroCosto.Value;
   End;
//*********
end;

function TAvances.ValidarCentroCosto(CentroCosto: String): Boolean;
begin
  With rsCentroCosto Do
  Begin
    Result := Locate('CentroCosto', CentroCosto, []);
  End;
end;

function TAvances.ValidarFecha(Fecha: tDate): Boolean;
begin
  Result := ((Fecha >= dtpDesde.Date) And (Fecha <= dtpHasta.Date))
end;

procedure TAvances.spAvanceFechaValidate(Sender: TField);
begin
  inherited;
  If Not ValidarFecha(Sender.Value) Then
    Raise Exception.Create('La fecha esta fuera del rango');
end;

procedure TAvances.spAvanceCentroCostoValidate(Sender: TField);
begin
  inherited;
  If Not ValidarCentroCosto(Sender.Value) Then
    Raise Exception.Create('Centro de Costo No existe')
  Else
    spAvanceIdCentroCosto.Value := rsCentroCostoIdCentroCosto.Value;
end;

procedure TAvances.spAvanceIdCentroCostoValidate(Sender: TField);
var
  h : variant;
begin
  inherited;
  if sender.AsString <> '' then
    h := ReturnVariant('CentroCosto','CentroCosto','idCentroCosto = ''' + Sender.AsString + '''')
  else begin
    if not(spAvanceCentroCosto.isnull) then spAvanceCentroCosto.Clear;
    exit;
  end;

  if (h = null) then begin
    Raise exception.Create('Este Centro de costo no existe')
  end
  else if spAvanceCentroCosto.Value <> H then
    spAvanceCentroCosto.Value := H;

end;

procedure TAvances.cxGrid1DBTableView1CentroCostoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  xx : variant;
begin
  inherited;
  xx := UUtiles.fBuscar(TFindCentroCosto, 'IdCentroCosto');
  if not(xx = null) then
  begin
    if  not (ds.State in [dsInsert,dsEdit]) then
        ds.DataSet.Edit();

    ds.DataSet.FieldByName('IdCentroCosto').Value := xx;
    rsCentroCosto.Locate('IdCentroCosto', xx, []);
    ds.DataSet.FieldByName('CentroCosto').Value := rsCentroCostoCentroCosto.Value;
  end;
end;

procedure TAvances.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spAvance, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;
    ParamByName('@Grupo').Value := edtGrupo.Text;

    Open();
  End;
end;

procedure TAvances.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date;
  dtpHasta.Date := Date;
  edtTipoTransIn.Text := dm.GetDefaultStr('NomAvanceIn');
  edtTipoTransOut.Text := dm.GetDefaultStr('NomAvanceOut');

  If edtTipoTransIn.Text <> '' Then
    edtTipoTransInDesc.Text := ReturnValue('TipoTransaccion', 'TipoTransaccion', 'TipoTransaccionId = ' + QuotedStr(edtTipoTransIn.Text))
  Else
    edtTipoTransInDesc.Clear;
  If edtTipoTransOut.Text <> '' Then
    edtTipoTransOutDesc.Text := ReturnValue('TipoTransaccion', 'TipoTransaccion', 'TipoTransaccionId = ' + QuotedStr(edtTipoTransOut.Text))
  Else
  edtTipoTransOutDesc.Clear;

  rsCentroCosto.Open();
  EmpleadoList.Open();

  With spAvance, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;

    Open();
  End;
End;

procedure TAvances.FormShow(Sender: TObject);
begin
  inherited;
  If (edtTipoTransIn.Text = '') Or (edtTipoTransOut.Text = '') Then
  Begin
    ShowMessage('Los parametros para los tipos de transacción de avances no estan configurados');
    Self.Close;
  End;
end;

procedure TAvances.spAvanceNewRecord(DataSet: TDataSet);
begin
  inherited;
  spAvanceFecha.Value := dtpHasta.Date;
  spAvanceCerrado.Value := False;
  spAvanceTipoTransaccionIdIn.AsString := edtTipoTransIn.Text;
  spAvanceTipoTransaccionIdOut.AsString := edtTipoTransOut.Text;
  spAvanceGrupo.Value := edtGrupo.Text;
  
//  spAvanceMonto.Value := 0;
end;

procedure TAvances.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TAvances.cxButton3Click(Sender: TObject);
begin
  inherited;
  If spAvance.Active Then
  Begin
    If Not spAvance.IsEmpty Then
    Begin
      If spAvanceCerrado.Value Then
        ShowMessage('Este avance está cerrado no es posible borrarlo')
      Else
      Begin
        If Confirmar('Esta seguro que desea borrar este avance') Then
          spAvance.Delete; 
      End;
    End;
  End;  
end;

procedure TAvances.cxButton4Click(Sender: TObject);
Var
  Banco : TextFile;
begin
  inherited;
  With spIncContador, Parameters Do
  Begin
    ParamByName('@XContador').Value := 'BCOSECUENCIA';
    ExecProc;
  End;
/////
  With spAvanceToBanco, Parameters Do
  Begin
    If Save.Execute Then
    Begin
      Close;
      ParamByName('@Desde').Value := dtpDesde.Date;
      ParamByName('@Hasta').Value := dtpHasta.Date;
      ParamByName('@Grupo').Value := edtGrupoRpt.Text;

      Open;

      First;
      AssignFile(Banco, spAvanceToBancoNombreArchivo.AsString);

      ReWrite(Banco);
      While Not Eof Do
      Begin
        Write(Banco, spAvanceToBancoCadena.AsString + #13 + #10);

        Next;
      End;
      Close;
      CloseFile(Banco);
    End;
  End;
end;

procedure TAvances.cxButton5Click(Sender: TObject);
begin
  inherited;
  With spIncContador, Parameters Do
  Begin
    ParamByName('@XContador').Value := 'BCOSECUENCIA';
    ExecProc;
  End;
end;

procedure TAvances.cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  xx : variant;
begin
  inherited;
//    xx := uUtiles.BuscarDX('EmpleadoId', False, 'nomEmpleadoListDX', True, -1);
    xx := fBuscar(tEmpleadoFindDX, 'EmpleadoId', False, '');
    if not(xx = null) then
    begin
      if  not (ds.State in [dsInsert,dsEdit]) then
          ds.DataSet.Edit();

      ds.DataSet.FieldByName('EmpleadoID').Value := xx;
    end;
end;

procedure TAvances.lDelAlPrint(Sender: TObject);
begin
  inherited;
  lDelAl.Caption := 'Del: ' + DateToStr(dtpDesde.Date) + ' Al: ' + DateToStr(dtpHasta.Date); 
end;

procedure TAvances.cxButton6Click(Sender: TObject);
begin
  inherited;
  With spAvanceRpt, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;
    ParamByName('@Grupo').Value := edtGrupoRpt.Text;
    Open();

    rptAvance.Print;
  End;
end;

end.

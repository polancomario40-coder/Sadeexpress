unit uHorasDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, DB, ADODB, Gradient, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxCalendar, StdCtrls, cxCheckBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, Buttons, cxTimeEdit, DateUtils, kbmMemTable,
  kbmMemCSVStreamFormat;

type
  THorasDet = class(TSimpleForm)
    rsHorasDet: TADODataSet;
    rsHorasDetIdHorasDet: TGuidField;
    rsHorasDetEmpleadoId: TIntegerField;
    rsHorasDetCantidad: TBCDField;
    rsHorasDetDesde: TDateTimeField;
    rsHorasDetHasta: TDateTimeField;
    dsEmpleado: TDataSource;
    EmpleadoList: TADODataSet;
    EmpleadoListEmpleadoId: TIntegerField;
    EmpleadoListEmpleado: TStringField;
    Nominas: TADODataSet;
    dsNominas: TDataSource;
    NominasNominaID: TAutoIncField;
    NominasTipoNomina: TStringField;
    NominasTipoEmpleado: TStringField;
    NominasFecha: TDateTimeField;
    NominasDesde: TDateTimeField;
    NominasHasta: TDateTimeField;
    NominasProdDesde: TDateTimeField;
    NominasProdHasta: TDateTimeField;
    NominasDiaFeriado: TIntegerField;
    NominasCerrada: TBooleanField;
    NominasTipoNominaID: TIntegerField;
    NominasTipoEmpleadoID: TAutoIncField;
    NominasNumero: TSmallintField;
    NominasMes: TSmallintField;
    NominasISR: TBooleanField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1IdHorasDet: TcxGridDBColumn;
    cxGrid1DBTableView1NominaId: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Desde: TcxGridDBColumn;
    cxGrid1DBTableView1Hasta: TcxGridDBColumn;
    cbAutoGenerar: TcxCheckBox;
    Label2: TLabel;
    dtpFecha: TcxDateEdit;
    Label3: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    NominasDatosNomina: TStringField;
    rsHorasDetFecha: TDateTimeField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    bSalir: TSpeedButton;
    rsHorasDetIdCentroCosto: TGuidField;
    rsHorasDetCentroCosto: TStringField;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    rsCentroCosto: TADODataSet;
    dsCentroCosto: TDataSource;
    rsCentroCostoidCentroCosto: TGuidField;
    rsCentroCostoCentroCosto: TStringField;
    Label1: TLabel;
    Label4: TLabel;
    dtpDesde: TcxDateEdit;
    dtpHasta: TcxDateEdit;
    qryHorario: TADOQuery;
    spHorarioFechaInicio: TADOStoredProc;
    spHorarioFechaInicioFechaInicio: TDateTimeField;
    spHorarioFechaInicioFechaFinal: TDateTimeField;
    spGetCentroCostoEmp: TADOStoredProc;
    spGetCentroCostoEmpidCentroCosto: TGuidField;
    spGetCentroCostoEmpCentroCosto: TStringField;
    Openx: TOpenDialog;
    EmpleadoCodExternoAct: TADOStoredProc;
    EmpleadoCodExternoActEmpleadoID: TIntegerField;
    EmpleadoCodExternoActEmpleado: TStringField;
    Cargar: TSpeedButton;
    mTrans: TkbmMemTable;
    dsmtrans: TDataSource;
    mTransEmpleadoId: TIntegerField;
    kbmCSVStreamFormat1: TkbmCSVStreamFormat;
    mTransFecha: TDateTimeField;
    mTransDesde: TDateTimeField;
    mTransHasta: TDateTimeField;
    mTransCantidad: TFloatField;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure NominasCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure rsHorasDetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure rsHorasDetAfterScroll(DataSet: TDataSet);
    procedure cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure rsHorasDetEmpleadoIdValidate(Sender: TField);
    procedure bSalirClick(Sender: TObject);
    procedure cxGrid1DBTableView1DBColumn2PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure rsHorasDetCentroCostoValidate(Sender: TField);
    procedure dtpDesdePropertiesChange(Sender: TObject);
    procedure dtpHastaPropertiesChange(Sender: TObject);
    procedure rsHorasDetDesdeValidate(Sender: TField);
    procedure rsHorasDetHastaValidate(Sender: TField);
    procedure rsHorasDetCantidadValidate(Sender: TField);
    procedure rsHorasDetIdCentroCostoValidate(Sender: TField);
    procedure CargarClick(Sender: TObject);
    procedure rsHorasDetBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    Ya : Boolean;

    Fecha : TDate;
    vEmpleado : Integer;

    Function ValidarEmpleado (IdEmpleado : Integer) : Boolean;
    Function ValidarCentroCosto(CentroCosto : String) : Boolean;
    Procedure FiltrarHorasDet;
    Procedure CalcularHoras;
  public
    { Public declarations }
  end;

var
  HorasDet: THorasDet;

implementation

uses Udata, UUtiles, uBusqEmpleado, uCentroCostoFind, UdataNom;

{$R *.dfm}

procedure THorasDet.FormCreate(Sender: TObject);
begin
  inherited;
  Ya := False;
  dtpDesde.Date := Date - 15;
  dtpHasta.Date := Date;
  dtpFecha.Date := Date;
  EmpleadoList.Open;
  FiltrarHorasDet;
  rsCentroCosto.Open;

  cbAutoGenerar.Checked := False;

end;

procedure THorasDet.NominasCalcFields(DataSet: TDataSet);
begin
  inherited;
  NominasDatosNomina.Value := 'Nomina: ' + NominasNominaID.AsString + ' : Del: ' + NominasDesde.AsString + ' Al: ' + NominasProdHasta.AsString;
end;

procedure THorasDet.cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  xx : variant;
begin
  inherited;
    xx := UUtiles.fBuscar(TBusqEmpleado, 'EmpleadoID');
    if not(xx = null) then
    begin
      if  not (ds.State in [dsInsert,dsEdit]) then
          ds.DataSet.Edit();

      ds.DataSet.FieldByName('EmpleadoID').Value := xx;
    end;
end;

procedure THorasDet.rsHorasDetNewRecord(DataSet: TDataSet);
begin
  inherited;

  rsHorasDetIdHorasDet.AsGuid := dm.NewGuid();

  If cxLookupComboBox2.EditValue <> Null Then
    rsHorasDetEmpleadoId.Value := EmpleadoListEmpleadoId.Value;

  If dtpFecha.Text <> '' Then
  Begin
    If Not cbAutoGenerar.Checked Then
      rsHorasDetFecha.Value := dtpFecha.Date
    Else
      rsHorasDetFecha.Value := Fecha + 1;
  End;

  If cxLookupComboBox2.EditValue <> Null Then
    rsHorasDetEmpleadoId.Value := vEmpleado;

end;

procedure THorasDet.FormShow(Sender: TObject);
begin
  inherited;
  Ya := True;
end;

procedure THorasDet.rsHorasDetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  If Ya Then
   Fecha := rsHorasDetFecha.Value;
end;

procedure THorasDet.cxLookupComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  vEmpleado := cxLookupComboBox2.EditValue;
end;

function THorasDet.ValidarEmpleado(IdEmpleado: Integer): Boolean;
begin
  With EmpleadoList Do
  Begin
    Result := Locate('EmpleadoId', IdEmpleado, []);
  End;
end;

procedure THorasDet.rsHorasDetEmpleadoIdValidate(Sender: TField);
begin
  inherited;
  If Not ValidarEmpleado(Sender.Value) Then
    Raise Exception.Create('Este código de empleado no existe');

// Asignar el Centro de costo de la seccion
   With spGetCentroCostoEmp, Parameters Do
   Begin
     Close;
     ParamByName('@EmpleadoId').Value := Sender.Value;
     Open;

     rsHorasDetIdCentroCosto.Value := spGetCentroCostoEmpidCentroCosto.Value;
   End;
//*********
end;

procedure THorasDet.bSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure THorasDet.cxGrid1DBTableView1DBColumn2PropertiesButtonClick(
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

function THorasDet.ValidarCentroCosto(CentroCosto: String): Boolean;
begin
  With rsCentroCosto Do
  Begin
    Result := Locate('CentroCosto', CentroCosto, []);
  End;  
end;

procedure THorasDet.rsHorasDetCentroCostoValidate(Sender: TField);
begin
  inherited;
  If Not ValidarCentroCosto(Sender.Value) Then
    Raise Exception.Create('Centro de Costo No existe')
  Else
    rsHorasDetIdCentroCosto.Value := rsCentroCostoIdCentroCosto.Value;  
end;

procedure THorasDet.FiltrarHorasDet;
begin
  With rsHorasDet, Parameters Do
  Begin
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;

    Close;
    Open();
  End;
end;

procedure THorasDet.dtpDesdePropertiesChange(Sender: TObject);
begin
  inherited;
  If Ya Then
    FiltrarHorasDet;
end;

procedure THorasDet.CalcularHoras;
begin
  With rsHorasDet Do
  Begin
    If (Not rsHorasDetDesde.IsNull) And (Not rsHorasDetHasta.IsNull) Then
      If Not (rsHorasDetCantidad.Value = ((rsHorasDetHasta.Value - rsHorasDetDesde.Value) * 24)) Then
        rsHorasDetCantidad.Value := (rsHorasDetHasta.Value - rsHorasDetDesde.Value) * 24;
  End;
end;

procedure THorasDet.dtpHastaPropertiesChange(Sender: TObject);
begin
  inherited;
  If Ya Then
    FiltrarHorasDet;
end;

procedure THorasDet.rsHorasDetDesdeValidate(Sender: TField);
begin
  inherited;
  If Ya Then
    CalcularHoras;
end;

procedure THorasDet.rsHorasDetHastaValidate(Sender: TField);
begin
  inherited;
  If Ya Then
    CalcularHoras;
end;

procedure THorasDet.rsHorasDetCantidadValidate(Sender: TField);
begin
  inherited;
  With spHorarioFechaInicio, Parameters Do
  Begin
    Close;

    ParamByName('@EmpleadoId').Value := rsHorasDetEmpleadoId.Value;
    ParamByName('@Fecha').Value := rsHorasDetFecha.Value;
    ParamByName('@Horas').Value := Sender.Value;

    Open;

    If Not IsEmpty Then
    Begin
      If rsHorasDetDesde.Value <> spHorarioFechaInicioFechaInicio.Value Then
        rsHorasDetDesde.Value := spHorarioFechaInicioFechaInicio.Value;
      If rsHorasDetHasta.value <> spHorarioFechaInicioFechaFinal.Value Then
        rsHorasDetHasta.value := spHorarioFechaInicioFechaFinal.Value;
    End;

    Close;
  End;
end;

procedure THorasDet.rsHorasDetIdCentroCostoValidate(Sender: TField);
var
  h : variant;
begin
  inherited;
  if sender.AsString <> '' then
    h := ReturnVariant('CentroCosto','CentroCosto','idCentroCosto = ''' + Sender.AsString + '''')
  else begin
    if not(rsHorasDetCentroCosto.isnull) then rsHorasDetCentroCosto.Clear;
    exit;
  end;

  if (h = null) then begin
    Raise exception.Create('Esta Centro de costo no existe')
  end
  else if rsHorasDetCentroCosto.Value <> H then
    rsHorasDetCentroCosto.Value := H;

end;


procedure THorasDet.CargarClick(Sender: TObject);

  procedure InsTrans(EmpleadoId : integer; Fecha, Desde ,Hasta : tdatetime; Cantidad : Double);
  Begin
      rsHorasDet.insert;
      rsHorasDetEmpleadoId.Value := EmpleadoId;
      rsHorasDetFecha.Value := Desde;
      rsHorasDetDesde.Value := Hasta;
      rsHorasDetHasta.Value := Fecha;
      rsHorasDetCantidad.Value := Cantidad;
      rsHorasDet.post;
  End;

begin
  inherited;
//  ValidarArchivoTransaccion;  {crear este procedimiento}
    With mTrans Do
    Begin
        Open;
        If Openx.Execute Then
          mTrans.LoadFromFile(Openx.FileName)
        Else
          Exit;

        First;
        While Not Eof Do
        Begin
          InsTrans(mTransEmpleadoID.value, mTransFecha.Value, mTransDesde.Value, mTransHasta.Value, mTransCantidad.Value);

          Next;
        End;
        ShowMessage('La carga del archivo se realizo correctamente');
      //Close;
    End;
end;



procedure THorasDet.rsHorasDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if rshorasdetcantidad.IsNull then
    raise exception.Create('Debe ingresar la cantidad de horas');

  if rshorasdetempleadoid.IsNull then
    raise exception.Create('Debe ingregar el empleado');

end;

end.

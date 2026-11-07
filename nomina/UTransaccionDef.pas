unit UTransaccionDef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UMasterDetail, wwdbdatetimepicker, StdCtrls, DBCtrls, wwdblook,
  Mask, wwdbedit, Wwlocate, wwDialog, wwidlg, DB, Wwdatsrc, ActnList,
  ComCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, uformmant2,
  ADODB, ImgList, wwSpeedButton, wwDBNavigator, wwclearpanel, wwcheckbox,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppProd, ppClass, ppReport, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, ppParameter;

type
  TTransaccionDef = class(Tfformmant2)
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    DBEdit1: TwwDBEdit;
    DBEdit3: TwwDBEdit;
    DBEdit5: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    GroupBox1: TGroupBox;
    Fijo: TDBCheckBox;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label2: TLabel;
    RSTransaccionDefID: TAutoIncField;
    RSTipoTransaccionID: TIntegerField;
    RSTransaccionDef: TStringField;
    RSFecha: TDateTimeField;
    RSCantidad: TBCDField;
    RSFijo: TBooleanField;
    RSDesde: TDateTimeField;
    RSHasta: TDateTimeField;
    RSDetTransaccionDefID: TIntegerField;
    RSDetEmpleadoID: TIntegerField;
    RSDetCantidad: TBCDField;
    RSDetFijo: TBooleanField;
    RSDetDesde: TDateTimeField;
    RSDetHasta: TDateTimeField;
    RSDetEmpleado: TStringField;
    ABusqEmpleado: TAction;
    BusqEmpleado: TwwNavButton;
    Label4: TLabel;
    wwDBEdit1: TwwDBEdit;
    RSClase: TIntegerField;
    TipoTransaccion: TADOTable;
    TipoTransaccionTipoTransaccionID: TIntegerField;
    TipoTransaccionTipoTransaccion: TStringField;
    TipoTransaccionDebito: TBooleanField;
    TipoTransaccionCotizable: TBooleanField;
    TipoTransaccionTipo: TStringField;
    TipoTransaccionValor: TBCDField;
    TipoTransaccionMultiplo: TBCDField;
    TipoTransaccionAdelanto: TBooleanField;
    TipoTransaccionProgramada: TBooleanField;
    TipoTransaccionNota: TStringField;
    TipoTransaccionOrden: TIntegerField;
    TipoTransaccionClasificacion: TIntegerField;
    TipoTransaccionRegalia: TBooleanField;
    TipoTransaccionISRno: TBooleanField;
    plMaster: TppDBPipeline;
    plDetail: TppDBPipeline;
    rptTransFijas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape1: TppShape;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel8: TppLabel;
    wwDBNavigator1Button: TwwNavButton;
    ppShape2: TppShape;
    ppDBCalc2: TppDBCalc;
    ppLabel9: TppLabel;
    Emp: TADODataSet;
    EmpEmpleadoID: TIntegerField;
    EmpTipoEmpleadoID: TIntegerField;
    EmpDepartamentoID: TIntegerField;
    EmpSecionID: TIntegerField;
    EmpEmpleado: TStringField;
    EmpCedula: TStringField;
    EmpPosicion: TStringField;
    EmpSueldo: TBCDField;
    EmpInicio: TDateTimeField;
    EmpFin: TDateTimeField;
    EmpNacimiento: TDateTimeField;
    EmpSexo: TStringField;
    EmpEstadoCivil: TStringField;
    EmpDireccion: TStringField;
    EmpCiudad: TStringField;
    EmpTelefono1: TStringField;
    EmpTelefono2: TStringField;
    EmpTipoCuenta: TStringField;
    EmpNumeroCuenta: TStringField;
    EmpAFP: TBooleanField;
    EmpSueldoFijo: TBooleanField;
    EmpActivo: TBooleanField;
    EmpSS: TBooleanField;
    EmpISR: TBooleanField;
    EmpPuntoA: TBCDField;
    EmpPuntoB: TBCDField;
    EmpPuntoC: TBCDField;
    EmpNombre: TStringField;
    EmpApellido: TStringField;
    EmpHorasDia: TBCDField;
    EmpNumeroSS: TStringField;
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure RSDetFijoValidate(Sender: TField);
    procedure RSFijoValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSTipoTransaccionIDChange(Sender: TField);
    procedure RSDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure ABusqEmpleadoExecute(Sender: TObject);
    procedure RSClaseValidate(Sender: TField);
    procedure ABorrarExecute(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure newbotonstate; override;
    procedure editbotonstate; override;
    procedure browsebotonstate; override;
  end;

var
  TransaccionDef: TTransaccionDef;

implementation

uses Udata, uBusqTransDef, UdataNom, UUtiles, uBusqEmpleado, uBusqueda;

{$R *.dfm}

procedure TTransaccionDef.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSDetFijo.Value := rsFijo.Value ;
  RSDetDesde.Value := rsDesde.Value ;
  RSdetHasta.Value := rsHasta.Value ;
  rsDetCantidad.Value := rsCantidad.Value;

end;

procedure TTransaccionDef.RSDetFijoValidate(Sender: TField);
begin
  inherited;
  RSDetDesde.Required := not(sender.Value);
  RSDetHasta.Required := not(sender.Value);
end;

procedure TTransaccionDef.RSFijoValidate(Sender: TField);
begin
  inherited;
  RSDesde.Required := not(sender.Value);
  RSHasta.Required := not(sender.Value);
end;

procedure TTransaccionDef.FormCreate(Sender: TObject);
begin
  emp.Open;
  TipoTransaccion.Open();

  MasterField := 'TransaccionDefID';
  DetailField := 'TransaccionDefID';
  inherited;
  LogField := 'TransaccionDefID';
//  tfBusqueda := TBusqTransDef;
//  Busqfield := 'TransaccionDefID'
  spName := 'NomFindTransDef';
  tfBusqueda := TBusqueda;
  Busqfield := 'TransaccionDefId';

end;

procedure TTransaccionDef.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsFecha.Value := dm.DBFecha ;
  rsDesde.Value := dm.DBFecha ;
  rsHasta.Value := dm.DBFecha ;
  rsFijo.Value  := true ;
  rsClase.value := 1;
end;

procedure TTransaccionDef.RSTipoTransaccionIDChange(Sender: TField);
begin
  inherited;
  if Not(TipoTransaccionValor.IsNull) then
     RSCantidad.Value := TipoTransaccionValor.Value;
end;

procedure TTransaccionDef.RSDetCalcFields(DataSet: TDataSet);
var
  eid: Variant;
begin
  inherited;
  if RSDetempleadoID.IsNull then
     RSDetEmpleado.value := ''
  else begin
    eid := Emp.Lookup('EmpleadoID',RSDetempleadoID.Value, 'Empleado');
    if eid <> NULL then
      RSDetEmpleado.value := eid
    else begin
      RSDetEmpleado.value := '';
      ShowMessage('Empleado no existe');
    end
  end;
end;

procedure TTransaccionDef.FormDestroy(Sender: TObject);
begin
  inherited;
  emp.Close;
end;

procedure TTransaccionDef.ABusqEmpleadoExecute(Sender: TObject);
var
  x : variant;
begin
  inherited;
//  if rsdet.State in [dsinsert, dsEdit] then
  begin
     x := fbuscar(TBusqEmpleado,'Empleadoid');
     if x <> Null then
     Begin
       If Not (rsDet.State In [dsInsert, dsEdit]) Then
         rsDet.Edit;
       rsdetempleadoid.Value := x;
     End;
  end;
end;

procedure TTransaccionDef.browsebotonstate;
begin
  inherited;
  ABusqEmpleado.Enabled := false;
end;

procedure TTransaccionDef.editbotonstate;
begin
  inherited;
  ABusqEmpleado.Enabled := true;

end;

procedure TTransaccionDef.newbotonstate;
begin
  inherited;
  ABusqEmpleado.Enabled := true;

end;

procedure TTransaccionDef.RSClaseValidate(Sender: TField);
begin
  inherited;
  if (sender.asinteger <> 1) and (sender.AsInteger <> 2) then
    raise exception.create('La clase debe ser 1 ó 2');
end;

procedure TTransaccionDef.ABorrarExecute(Sender: TObject);
begin
  if application.MessageBox ('Esta seguro que desea borrar esta transaccion fija, se borraran todos los empleados ?', 'Advertencia', MB_YESNO) = ID_YES then
  begin
    inherited;
  end;

end;

procedure TTransaccionDef.AprintExecute(Sender: TObject);
begin
  inherited;
  Imprimir(rptTransFijas); 
end;

end.

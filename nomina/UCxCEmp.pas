unit UCxCEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UMasterDetail, wwdbdatetimepicker, StdCtrls, DBCtrls, wwdblook,
  Mask, wwdbedit, Wwlocate, wwDialog, wwidlg, DB, Wwdatsrc, ActnList,
  ComCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, uformmant2,
  ADODB, ImgList, wwSpeedButton, wwDBNavigator, wwclearpanel, wwcheckbox,
  uformmant1, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppParameter;

type
  TCxCEmp = class(Tfformmant2)
    Label1: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    DBEdit1: TwwDBEdit;
    DBEdit3: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label2: TLabel;
    RSCxCEmpID: TIntegerField;
    RSEmpleadoID: TIntegerField;
    RSTipoTransaccionID: TIntegerField;
    RSCxCEmp: TStringField;
    RSFecha: TDateTimeField;
    RSTotal: TBCDField;
    RSCuotas: TIntegerField;
    RSDescuento: TBCDField;
    RSDescontado: TBCDField;
    RSBalance: TBCDField;
    RSActivo: TBooleanField;
    Label10: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label11: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label5: TLabel;
    DBEdit5: TwwDBEdit;
    Label4: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label9: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    SpeedButton1: TSpeedButton;
    EmpleadoAct: TADODataSet;
    dsEmpleadoAct: TDataSource;
    TipoTransaccion: TADODataSet;
    DBCheckBox1: TDBCheckBox;
    RSDetCxCEmpDetID: TGuidField;
    RSDetCxCEmpID: TIntegerField;
    RSDetFecha: TDateTimeField;
    RSDetMonto: TBCDField;
    RSDetNominaID: TIntegerField;
    RSDetNotas: TStringField;
    RptSta: TppReport;
    stadet: TppDBPipeline;
    sta: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel7: TppLabel;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    BImprimir: TwwNavButton;
    Update: TADOCommand;
    RSNoPorNomina: TBooleanField;
    DBCheckBox2: TDBCheckBox;
    Label6: TLabel;
    wwDBEdit7: TwwDBEdit;
    RSClase: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RSTotalChange(Sender: TField);
    procedure FormDestroy(Sender: TObject);
    procedure RSEmpleadoIDChange(Sender: TField);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure AprintExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure RSClaseValidate(Sender: TField);
    procedure ABorrarExecute(Sender: TObject);
  private
  protected
      procedure UserAutocodigo; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CxCEmp: TCxCEmp;

implementation

uses Udata, uBusqTransDef, UdataNom, UUtiles, uBusqEmpleado, uBusqCxCEmp, uBusqueda;

{$R *.dfm}

procedure TCxCEmp.FormCreate(Sender: TObject);
begin
  MasterField := 'CxCEmpID';
  DetailField := 'CxCEmpID';
  inherited;
  Modulo := 'Nomina';
  //CampodeCierre := 'Fecha';
  LogField := 'CxcEmpID';
  DetalleObligatorio := false;
{  tfBusqueda := TBusqCxCEmp;
  Busqfield := 'CxCEmpID';}
  TipoTransaccion.Open;

  spName := 'NomFindCxcEmp';
  tfBusqueda := TBusqueda;
  Busqfield := 'CxcEmpId';

end;

procedure TCxCEmp.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsCuotas.Value := 1;
  rsTotal.Value := 0;
  rsDescuento.Value := 0;
  rsDescontado.Value := 0;
  rsFecha.Value := dm.DBFecha ;
  rsActivo.Value := true;
  rsNopornomina.value := false;
  rsClase.Value := 1;
end;

procedure TCxCEmp.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  EmpleadoAct.Parameters[1].value := rsEmpleadoID.value;
  if EmpleadoAct.Active Then EmpleadoAct.Requery() else EmpleadoAct.Open;

  rsDet.Parameters[1].value := rsCxCEmpID.value;
  if RsDet.Active Then RsDet.Requery() else rsDet.Open;
end;

procedure TCxCEmp.SpeedButton1Click(Sender: TObject);
var
  x : Variant;
begin
  inherited;
  x := fBuscar(TBusqEmpleado, 'EmpleadoID');
  if x <> Null then RSEmpleadoID.Value := x;
end;

procedure TCxCEmp.RSTotalChange(Sender: TField);
begin
  inherited;
  if rsCuotas.value > 0 then
    RSDescuento.value := rsTotal.value / rsCuotas.value;
end;

procedure TCxCEmp.FormDestroy(Sender: TObject);
begin
  inherited;
  TipoTransaccion.Close;
end;

Procedure TCxCEmp.UserAutocodigo;
Begin
    RSCxCEmpid.Value := DM.GetNextCounterInt('CXCEMP');
end;

procedure TCxCEmp.RSEmpleadoIDChange(Sender: TField);
begin
  inherited;
  EmpleadoAct.Parameters[1].value := rsEmpleadoID.value;
  if EmpleadoAct.Active Then EmpleadoAct.Requery() else EmpleadoAct.Open;
end;

procedure TCxCEmp.RSBeforePost(DataSet: TDataSet);
begin
  inherited;
   if RsCuotas.AsFloat <= 0 then
     raise exception.create('El numero de cuotas es incorrecto') ;

   if rsTotal.AsCurrency <= 0 then
     raise exception.create('El valor del monto es incorrecto') ;
end;

procedure TCxCEmp.AprintExecute(Sender: TObject);
begin
  inherited;
  Imprimir(RptSta);
end;

procedure TCxCEmp.AGuardarExecute(Sender: TObject);
begin
  inherited;
    Update.Parameters[1].Value := rscxcempid.Value;
    Update.Execute;
end;

procedure TCxCEmp.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsdetCxCEmpDetID.AsGuid := dm.NewGuid;
end;

procedure TCxCEmp.RSClaseValidate(Sender: TField);
begin
  inherited;
  if (sender.value <> 1) and (sender.Value <> 2) then
    raise exception.Create('Las clases validas son 1 y 2');
end;

procedure TCxCEmp.ABorrarExecute(Sender: TObject);
begin
  if application.MessageBox ('Esta seguro que desea borrar esta CxC?', 'Advertencia', MB_YESNO) = ID_YES then
  begin
    inherited;
  end;
end;

end.

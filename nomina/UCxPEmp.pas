unit UCxPEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UMasterDetail, wwdbdatetimepicker, StdCtrls, DBCtrls, wwdblook,
  Mask, wwdbedit, Wwlocate, wwDialog, wwidlg, DB, Wwdatsrc, ActnList,
  ComCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, uformmant2,
  ADODB, ImgList, wwSpeedButton, wwDBNavigator, wwclearpanel, wwcheckbox,
  uformmant1, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppCtrls, ppPrnabl, ppBands, ppCache, myChkBox, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit;

type
  TCxPEmp = class(Tfformmant2)
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
    RSEmpleadoID: TIntegerField;
    RSTipoTransaccionID: TIntegerField;
    RSFecha: TDateTimeField;
    RSActivo: TBooleanField;
    Label11: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label5: TLabel;
    DBEdit5: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    SpeedButton1: TSpeedButton;
    EmpleadoAct: TADODataSet;
    dsEmpleadoAct: TDataSource;
    TipoTransaccion: TADODataSet;
    DBCheckBox1: TDBCheckBox;
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
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    BImprimir: TwwNavButton;
    Update: TADOCommand;
    RSCxPEmpID: TIntegerField;
    RSCxPEmp: TStringField;
    RSFrecuencia: TStringField;
    RSMonto: TBCDField;
    RSPagar: TBooleanField;
    RSDetCxPEmpDetID: TGuidField;
    RSDetCxPEmpID: TIntegerField;
    RSDetFecha: TDateTimeField;
    RSDetMonto: TBCDField;
    RSDetDebito: TBooleanField;
    RSDetNominaID: TIntegerField;
    RSDetNota: TStringField;
    RSBalance: TBCDField;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel7: TppLabel;
    Label4: TLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RSEmpleadoIDChange(Sender: TField);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure AprintExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure RSDetNewRecord(DataSet: TDataSet);
  private
  protected
      procedure UserAutocodigo; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CxPEmp: TCxPEmp;

implementation

uses Udata, uBusqTransDef, UdataNom, UUtiles, uBusqEmpleado, uBusqCxCEmp,
  uBusqueda;

{$R *.dfm}

procedure TCxPEmp.FormCreate(Sender: TObject);
begin
  MasterField := 'CxPEmpID';
  DetailField := 'CxPEmpID';
  inherited;
  DetalleObligatorio := false;
  tfBusqueda := TBusqueda;
  Busqfield := 'CxPEmpID';
  spName := 'FindCxPEmp';
  TipoTransaccion.Open;
end;

procedure TCxPEmp.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsMonto.Value := 0;
  rsFecha.Value := dm.DBFecha ;
  rsActivo.Value := true;
end;

procedure TCxPEmp.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  EmpleadoAct.Parameters[1].value := rsEmpleadoID.value;
  if EmpleadoAct.Active Then EmpleadoAct.Requery() else EmpleadoAct.Open;

  rsDet.Parameters[1].value := rsCxPEmpID.value;
  if RsDet.Active Then RsDet.Requery() else rsDet.Open;
end;

procedure TCxPEmp.SpeedButton1Click(Sender: TObject);
var
  x : Variant;
begin
  inherited;
  x := fBuscar(TBusqEmpleado, 'EmpleadoID');
  if x <> Null then RSEmpleadoID.Value := x;
end;

procedure TCxPEmp.FormDestroy(Sender: TObject);
begin
  inherited;
  TipoTransaccion.Close;
end;

Procedure TCxPEmp.UserAutocodigo;
Begin
    RSCxPEmpid.Value := DM.GetNextCounterInt('CXPEMP');
end;

procedure TCxPEmp.RSEmpleadoIDChange(Sender: TField);
begin
  inherited;
  EmpleadoAct.Parameters[1].value := rsEmpleadoID.value;
  if EmpleadoAct.Active Then EmpleadoAct.Requery() else EmpleadoAct.Open;
end;

procedure TCxPEmp.RSBeforePost(DataSet: TDataSet);
begin
  inherited;
   if rsMonto.AsCurrency  <= 0 then
    raise exception.create('El valor del Monto es incorrecto') ;
end;

procedure TCxPEmp.AprintExecute(Sender: TObject);
begin
  inherited;
  RptSta.Print;
end;

procedure TCxPEmp.AGuardarExecute(Sender: TObject);
begin
  inherited;
    Update.Parameters[1].Value := rscxpempid.Value;
    Update.Execute;
end;

procedure TCxPEmp.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsdetCxPEmpDetid.AsGuid := dm.NewGuid;
  rsdetDebito.Value := true;
end;

end.

unit Unomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, basicform, StdCtrls, wwdblook, Wwlocate, wwDialog, wwidlg, DB,
  Wwdatsrc, ActnList, ComCtrls, Buttons, ExtCtrls, DBCtrls, Mask,
  wwdbdatetimepicker, wwdbedit, Wwdotdot, Wwdbcomb, uformmant1, ADODB,
  ImgList, wwSpeedButton, wwDBNavigator, wwclearpanel, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxImageComboBox,
  cxDBEdit, cxGroupBox, cxMaskEdit, cxCalendar, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxCheckBox, Gradient;

type
  TNominas = class(Tfformmant1)
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RSNominaID: TAutoIncField;
    RSTipoNominaID: TIntegerField;
    RSTipoEmpleadoID: TIntegerField;
    RSFecha: TDateTimeField;
    RSDesde: TDateTimeField;
    RSHasta: TDateTimeField;
    RSProdDesde: TDateTimeField;
    RSProdHasta: TDateTimeField;
    RSDiaFeriado: TIntegerField;
    RSCerrada: TBooleanField;
    RSMesCalendario: TSmallintField;
    RSNumeroNomina: TSmallintField;
    RSISR: TBooleanField;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Gradient1: TGradient;
    qryTipoNomina: TADOQuery;
    qryTipoNominaTipoNominaID: TIntegerField;
    qryTipoNominaTipoNomina: TStringField;
    qryTipoEmpleado: TADOQuery;
    qryTipoEmpleadoTipoEmpleadoID: TAutoIncField;
    qryTipoEmpleadoTipoEmpleado: TStringField;
    dsTipoNomina: TDataSource;
    dsTipoEmpleado: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ABorrarExecute(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure UserAutocodigo; override;  
  end;

var
  Nominas: TNominas;

implementation

uses Udata, UdataNom, UUtiles, uBusqNomina, uBusquedaRangoDX, uBusquedaDX;

{$R *.dfm}

procedure TNominas.FormCreate(Sender: TObject);
begin
  inherited;
  CampodeCierre := 'Fecha';
  Modulo := 'Nomina';
  LogField := 'NominaID';
//  tfBusqueda := TBusqNomina;
  Busqfield := 'Nominaid';
//  TFBusqueda := TBusquedaRangoDX;
//  spName := 'nomNominaFindRango';
  TFBusqueda := TBusquedaDX;
  spName := 'nomNominaFind';
  qryTipoNomina.Open();
  qryTipoEmpleado.Open();
end;

procedure TNominas.ABorrarExecute(Sender: TObject);
begin
  if application.MessageBox ('Esta seguro que desea borrar esta nomina y todas sus transacciones ?', 'Advertencia', MB_YESNO) = ID_YES then
  begin
    inherited;
  end;

end;

procedure TNominas.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsDiaFeriado.value := 0;
  rsNumeroNomina.value := 0;
  
end;

procedure TNominas.UserAutocodigo;
begin
  inherited;
    RSNominaid.Value := DM.GetNextCounterInt('NOMINA');
end;

end.

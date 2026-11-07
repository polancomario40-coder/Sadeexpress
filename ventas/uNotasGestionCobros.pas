unit uNotasGestionCobros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassRS, cxLookAndFeelPainters, ImgList, ActnList, DB,
  Wwdatsrc, StdCtrls, cxButtons, Gradient, ADODB, Mask, DBCtrls,
  cxImageComboBox, cxDBEdit, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo;

type
  TNotasGestionCobros = class(TMantClassRS)
    rsTiposNotas: TADODataSet;
    dsTiposNotas: TDataSource;
    rs: TADODataSet;
    Label2: TLabel;
    Label4: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    rsTiposNotasIdTipoNota: TStringField;
    rsTiposNotasTipoNota: TStringField;
    rsTiposNotasInformacion: TBooleanField;
    rsTiposNotasAgendar: TBooleanField;
    cxDBMemo1: TcxDBMemo;
    Label1: TLabel;
    rsidNota: TGuidField;
    rsFechaRegistro: TDateTimeField;
    rsFechaAgenda: TDateTimeField;
    rsTipoNota: TStringField;
    rsNota: TStringField;
    rsidCliente: TIntegerField;
    rsUsuario: TStringField;
    rsAgendar: TBooleanField;
    rsCerrada: TBooleanField;
    rsCerradaPor: TStringField;
    rsFechaCerrada: TDateTimeField;
    rsValidaTieneAgenda: TADODataSet;
    procedure rsNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
  private
    xxValue : variant;
    xxField : string;
    { Private declarations }        
    function validaAgenda: Boolean;
  public
    { Public declarations }
    procedure DoShowstate; override;
  end;

var
  NotasGestionCobros: TNotasGestionCobros;

implementation

uses Udata;

{$R *.dfm}

procedure TNotasGestionCobros.rsNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsidNota.AsGuid := dm.NewGuid();
  rsFechaRegistro.Value := Now;
  rsFechaAgenda.Value := Now;
  rsUsuario.Value := dm.UsuarioActual;
  rsCerrada.Value := False;
end;

procedure TNotasGestionCobros.FormCreate(Sender: TObject);
begin
  inherited;
  rsTiposNotas.Open();
  RecordSet := rs;
  AutoLocalizar := True;
  BusqField := 'idNota';
  OcultarC1 := True;
  spName := 'cxcNotasGestionCobrosFind';
end;

procedure TNotasGestionCobros.DoShowstate;
begin

  if (xField = 'idCliente') then begin
    xxValue := xvalue;
    xxField := xField;
    xValue := '';                       //se limpian los valores para que el inherited no haga nada incorrecto
    xField := '';
  end;

  inherited;

  if (xxValue <> NULL) and (xxField = 'idCliente') then
    rsidCliente.Value := xxValue;
end;

function TNotasGestionCobros.validaAgenda: Boolean;
begin
   with rsValidaTieneAgenda do
   begin
     Close;
     Parameters[1].Value := rsFechaAgenda.Value;
     Parameters[2].Value := rsidCliente.Value;
     Open;

     if recordCount > 0 then
       Result := True
     else
        Result := False;  
   end;
end;

procedure TNotasGestionCobros.AGuardarExecute(Sender: TObject);
begin
  if validaAgenda() then raise Exception.Create('Este cliente ya tiene una agenda definida..');

  if rs.State = dsBrowse then rs.Edit;

  dsTiposNotas.DataSet.Locate('idTipoNota',rsTipoNota.Value,[]);

  rsAgendar.Value := dsTiposNotas.DataSet.FieldByName('Agendar').Value;

  inherited;
end;

end.


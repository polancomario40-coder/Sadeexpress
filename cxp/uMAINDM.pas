unit uMAINDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TMainDM = class(TDataModule)
    rsBuscarSup: TADODataSet;
    rsBuscarSupidSuplidor: TIntegerField;
    rsBuscarSupNombre: TStringField;
    rsBuscarSupDireccion: TStringField;
    rsBuscarSupCiudad: TStringField;
    rsBuscarSupProvincia: TStringField;
    rsBuscarSupPais: TStringField;
    rsBuscarSupTelefono1: TStringField;
    rsBuscarSupTelefono2: TStringField;
    rsBuscarSupLimiteCredito: TBCDField;
    rsBuscarSupDiasCredito: TIntegerField;
    rsBuscarSupTipoSuplidor: TIntegerField;
    rsBuscarSupRNC: TStringField;
    rsBuscarSupFechaIngreso: TDateTimeField;
    rsBuscarSupEstatus: TBooleanField;
    rsBuscarSupEMail: TStringField;
    rsBuscarSupContacto: TStringField;
    rsBuscarSupTelContacto: TStringField;
    rsBuscarSupFax: TStringField;
    rsBuscarSupCod: TStringField;
    rsBuscarSupidMoneda: TIntegerField;
    rsListaSups: TADODataSet;
    rsBuscarSupTipoImpuesto: TIntegerField;
    rsBuscarSupidCuenta: TStringField;
    rsFecha: TADODataSet;
    rsFechadbFecha: TDateTimeField;
    rsListaSupsidSuplidor: TIntegerField;
    rsListaSupsRNC: TStringField;
    rsListaSupsNombre: TStringField;
    rsListaSupsTelefono1: TStringField;
    rsBuscarSupMostrarEnCXP: TBooleanField;
    rsBuscarSupAbrev: TStringField;
    rsBuscarSupidAuxiliar: TStringField;
    rsBuscarSupidTipoIdentificacion: TStringField;
    rsBuscarSupPedirNCF: TStringField;
    rsSupCuenta: TADODataSet;
    rsSupCuentaidSuplidor: TIntegerField;
    rsSupCuentaidMoneda: TIntegerField;
    rsSupCuentaidCuenta: TStringField;
    rsBuscarCtaSup: TADODataSet;
    rsBuscarCtaSupidSuplidor: TIntegerField;
    rsBuscarCtaSupidMoneda: TIntegerField;
    rsBuscarCtaSupidCuenta: TStringField;
    rsBuscarCtaSupidCuentaGasto: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function BuscarSupXId(const id: Integer): Boolean;
    function BuscarCuentasSuplidor(const idSup: Integer; const idMon: Integer; const Pasivo: Boolean = True): string;
    function DBFecha: TDateTime;
    procedure AbrirSuplidores(const Todos: Boolean = False);
    procedure AbrirCuentasSuplidor(const idSup: Integer);    
  end;

var
  MainDM: TMainDM;

implementation

uses Udata;

{$R *.dfm}

{ TMainDM }

procedure TMainDM.AbrirSuplidores(const Todos: Boolean);
begin
  with rsListaSups do begin
    Close();
    Parameters[1].Value := Todos;
    Open();
  end;
end;

function TMainDM.BuscarSupXId(const id: Integer): Boolean;
begin
  with rsBuscarSup do begin
    Close();
    Parameters[1].Value := id;
    Open();

    Result := not Eof;
  end;
end;

function TMainDM.DBFecha: TDateTime;
begin
  rsFecha.Open();
  try
    Result := rsFechaDBFecha.AsDateTime;
  finally
    rsFecha.Close();
  end;
end;

function TMainDM.BuscarCuentasSuplidor(const idSup,
  idMon: Integer; const Pasivo: Boolean = True): string;
begin
  with rsBuscarCtaSup do begin
    Close();
    Parameters[1].Value := idSup;
    Parameters[2].Value := idMon;
    Open();

    if Eof then
      Result := ''
    else begin
      if Pasivo then
        Result := rsBuscarCtaSupIdCuenta.Asstring
      else
        Result := rsBuscarCtaSupIdCuentaGasto.Asstring
    end
  end;
end;

procedure TMainDM.AbrirCuentasSuplidor(const idSup: Integer);
begin
  with rsSupCuenta do begin
    Close();
    Parameters[1].Value := idSup;
    Open();
  end;
end;

end.

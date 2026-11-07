unit udgiidm;

interface

uses
  SysUtils, Classes, ADODB, DB, Variants, Dialogs, Udata;

type
  TdmDGII = class(TDataModule)
    svCompfiscal: TADOCommand;
    rsTipoIngreso: TADODataSet;
    dsTipoIngreso: TDataSource;
    rsFormaPago: TADODataSet;
    rsTiposRetencion: TADODataSet;
    dsFormaPago: TDataSource;
    dsTiposRetencion: TDataSource;
    rsTiposRetencionidTiposRetencionDGII: TIntegerField;
    rsTiposRetencionTiposRetencionDGII: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private

    _topFactNCfRnc: Currency;
    _usarEcfs: Boolean;
    _autoEnviarEcfs: Boolean;
    _puedeEnviarEcfs: Boolean;
    { Private declarations }
  public
    { Public declarations }
    function GetCompFiscal(const TipoCF: string; const idCliente: Integer = 0; const opcional: Boolean = false): TSecuenciaNCF;
    function TipoDocumentoValido(const Tipo: TDocumentos;
      Documento: string): boolean;
    property TOP_FACT_NCF_RNC: Currency read _topFactNCfRnc;
    property UsarEcfs: Boolean read _usarEcfs write _usarEcfs;
    property AutoEnviarEcfs: Boolean read _autoEnviarEcfs write _autoEnviarEcfs;
    property PuedeEnviarEcfs: Boolean read _puedeEnviarEcfs write _puedeEnviarEcfs;
    procedure Refresh;    
  end;

var
  dmDGII: TdmDGII;

implementation

{$R *.dfm}

function TdmDGII.TipoDocumentoValido(const Tipo: TDocumentos; Documento: string): boolean;
var
  multiplica, longitud: smallInt;
  resto, digito, valor, suma, i: integer;
  t                 : string;
const
  peso              : array[0..7] of integer = (7, 9, 8, 6, 5, 4, 3, 2);
  remp              : string = '-';
begin

  t := documento;

  documento := trim(StringReplace(documento, remp, '', [rfReplaceAll]));

  if documento = '' then
  begin
    result := false;
    exit;
  end;
  longitud := length(documento);

    //Inicializar la variable suma
  suma := 0;
  case tipo of
    dcCedula, dcConducir, dcArmaFuego:  //Es un numero de cedula o su equivalente
      begin
            {La actual cedula electora dominicana usa un digito verificador
            calculado por modulo 10}
        for i := 0 to longitud - 2 do
        begin
          if i mod 2 = 0 then
            multiplica := 1
          else multiplica := 2;

          valor := strtoIntDef(documento[i + 1], -1) * multiplica;

                //Si el digito que se encontro no es numerico.
          if valor < 0 then break;

          if valor > 9 then
            valor := strToIntDef(copy(intTostr(valor), 1, 1), 0)
              + strToIntDef(copy(intTostr(valor), 2, 1), 0);

          suma := suma + valor;
        end;

            //ahora  la variable Valor toma el digito verificador
        valor := strToIntDef(copy(documento, longitud, 1), 0);

            //Comprar el resultado
        result := valor = (10 - (suma mod 10)) mod 10;

      end;
    dcRNC:                              //Asumimos como valor de RNC con 9 caracteres
      begin
            {Calculo del R N C  modulo 11}
        for i := 0 to longitud - 2 do
        begin
          multiplica := peso[i];

          valor := strtoIntDef(documento[i + 1], -1) * multiplica;

                //Si el digito que se encontro no es numerico.
          if valor < 0 then break;

          suma := suma + valor;
        end;

            //ahora  la variable Valor toma el digito verificador
        valor := strToIntDef(copy(documento, longitud, 1), 0);

        resto := trunc(suma - (integer(trunc(suma / 11)) * 11));

        case resto of
          0: digito := 2;
          1: digito := 1;
        else digito := 11 - resto;
        end;

            //result  :=  valor= (11-(suma mod 11)) mod 11;
        result := valor = digito;
      end;
  else
    result := documento <> '';

  end;
end;

function TdmDGII.GetCompFiscal(const TipoCF: string; const idCliente: Integer = 0; const opcional: Boolean = false): TSecuenciaNCF;
  var sec : TSecuenciaNCF;
begin
  svCompFiscal.Parameters[1].value := Null;    // retorna el comp fiscal en este parametro output
  svCompFiscal.Parameters[2].value := TipoCF;
  svCompFiscal.Parameters[3].value := idCliente;
  svCompFiscal.Parameters[4].value := Null; // retorna la fecha de vencimiento del comp fiscal en este parametro output
  svCompFiscal.Parameters[5].value := Null; // retorna el reorden del comp fiscal en este parametro output
  svCompFiscal.execute;

  if (not(svCompFiscal.Parameters[1].value = NULL) and not(svCompFiscal.Parameters[1].value = ''))  then
  begin
    sec.secuencia := svCompFiscal.Parameters[1].value;
    sec.VencimientoNCF := svCompFiscal.Parameters[4].Value;
    sec.Reorden := svCompFiscal.Parameters[5].Value;
    sec.Cancelado := False;

    if sec.Reorden then
      MessageDlg('Este tipo de comprobantes fiscales se esta agotando, verifique por favor..', mtWarning, [mbOK], 0);
  end
  else begin
    sec.Cancelado := True;
    if not Opcional then
      raise Exception.Create('No se genero la secuencia de comprobantes fiscales, verifique que tenga disponibles');
  end;

  result := sec;
end;

procedure TdmDGII.Refresh();
begin
  _topFactNCfRnc := 50000; /// TODO: default;
  _usarEcfs := True;
  _autoEnviarEcfs := True;
  _puedeEnviarEcfs := True;
  rsTipoIngreso.Open();
  rsFormaPago.Open();
  rsTiposRetencion.Open();
end;

procedure TdmDGII.DataModuleCreate(Sender: TObject);
begin
  _usarEcfs := True;
  _autoEnviarEcfs := True;
  _puedeEnviarEcfs := True;
  _topFactNCfRnc := 50000;
end;

end.

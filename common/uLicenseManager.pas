unit uLicenseManager;

interface

const
  c1 = 52845;
  c2 = 22719;
  LICENSEKEY = 2000;
  LICENSELENGTH = 48;
  IMPORTLICLENGTH = LICENSELENGTH + 38;

type
  TLicenseManager = class
  private
    FEsValida: Boolean;
    FLicenciaId: string;
    FLicenciaCodif: string;
    FFechaHoy: TDateTime;
    FExpiracion: TDateTime;
    FCancelada: Boolean;
    procedure SetFechaHoy(const Value: TDateTime);
    function GetCancelada: Boolean;
    function ConvertDate(const datestr: string): TDateTime;
    class function DecodeString(const inStr: string): string;
    class function EncodeString(const inStr: string): string;

  protected
    procedure ValidarLicencia; virtual;
  public
    property Expiracion: TDateTime read FExpiracion;
    property LicenciaId: string read FLicenciaId;
    property LicenciaCodif: string read FLicenciaCodif write FLicenciaCodif;
    property EsValida: Boolean Read FEsValida;
    property Cancelada: Boolean read GetCancelada;
    property FechaHoy: TDateTime read FFechaHoy write SetFechaHoy;

    constructor Create(const ALicStr: string; const AFecha: TDateTime);

    class function CrearLicencia(const id: string; const hasta: TDatetime): string;

    class function EncryptString(const inStr: string; Key: word = LICENSEKEY): string; virtual;
    class function DeEncryptString(const inStr: string; Key: word = LICENSEKEY): string; virtual;

    procedure AnularLicencia();
    procedure ImportarLicencia(const newlic: string);
  end;

implementation

{ TLicenseManager }

uses
  DateUtils, SysUtils, Classes;

procedure TLicenseManager.AnularLicencia;
var
  str: string;
begin
  if LicenciaId <> '' then begin
    FEsValida := False;
    str := '0' + LicenciaId + ':' + FormatDateTime('yyyymmdd',Expiracion);
    FLicenciaCodif := EncryptString(str,LICENSEKEY);
  end;
end;

class function TLicenseManager.CrearLicencia(const id: string;
  const hasta: TDatetime): string;
var
  str: string;
begin
  str := '1' + id + ':' + FormatDateTime('yyyymmdd',hasta);
  Result := EncryptString(str,LICENSEKEY);
end;

constructor TLicenseManager.Create(const ALicStr: string;
  const AFecha: TDateTime);
begin
  FechaHoy := AFecha;
  LicenciaCodif := ALicStr;
  FEsValida := False;
  FCancelada := False;
  if LicenciaCodif <> '' then
    ValidarLicencia();
end;

class function TLicenseManager.DeEncryptString(const inStr: string;  Key: word = LICENSEKEY): string;
var
  i : byte;
  ResultStr,decodedStr: string;
begin
  decodedStr := DecodeString(inStr);
  ResultStr:= decodedStr;
  for i := 1 to Length(decodedStr) do begin
    ResultStr[i] := Char (byte (decodedStr[i]) xor (Key shr 8));
    Key := (byte (decodedStr[i]) + Key) * c1 + c2;
  end;

  Result := ResultStr;
end;

class function TLicenseManager.EncodeString(const inStr: string): string;
var
  tmpStr: string;
  j: Integer;
begin
  for j := 1 to Length(inStr) do begin
    tmpStr := tmpStr + Format('%.2x',[Ord(inStr[j])]);
  end;
  Result := tmpStr;
end;

class function TLicenseManager.DecodeString(const inStr: string): string;
var
 tmpStr: string;
 hexStr: string;
 j: Integer;
begin
  j := 1;
  while j < Length(inStr) do begin
    hexStr := Copy(inStr,j,2);
    tmpStr := tmpStr + Chr(StrToInt('0x' + hexStr));
    Inc(j,2);
  end;
  Result := tmpStr;
end;

class function TLicenseManager.EncryptString(const inStr: string; Key: word = LICENSEKEY): string;
var
  i : byte;
begin
  Result:= inStr;
  for i := 1 to Length(inStr) do begin
    Result[i] := Char (byte (inStr[i]) xor (Key shr 8));
    Key := (byte(Result[i]) + Key) * c1 + c2;
  end;
  Result := EncodeString(Result);
end;

function TLicenseManager.GetCancelada: Boolean;
begin
  Result := FCancelada;
end;

procedure TLicenseManager.ImportarLicencia(const newlic: string);
var
  s: string;
  g: TGuid;
begin
  s := DeEncryptString(newlic,LICENSEKEY);
  if Length(s) <> IMPORTLICLENGTH then
    raise Exception.Create('Licencia invalida');

  try
    g := StringToGuid(Copy(s,1,38));

    if GuidToString(g) <> LicenciaId then
      Abort();

    LicenciaCodif := EncryptString('0' + Copy(s,39,LICENSELENGTH - 1),LICENSEKEY);
    ValidarLicencia();

  except
    raise Exception.Create('Licencia invalida');
  end;
end;

procedure TLicenseManager.SetFechaHoy(const Value: TDateTime);
begin
  FFechaHoy := Value;
  ValidarLicencia();
end;

function TLicenseManager.ConvertDate(const datestr: string): TDateTime;
var
  y,m,d: Word;
begin
  y := StrToInt(Copy(datestr,1,4));
  m := StrToInt(Copy(datestr,5,2));
  d := StrToInt(Copy(datestr,7,2));

  Result := EncodeDate(y,m,d);
end;

procedure TLicenseManager.ValidarLicencia;
var
  s: string;
  datestr: string;
  venc: TDateTime;
  guidstr: string;
  g: TGuid;
begin
  FEsValida := False;
  FExpiracion := IncDay(FechaHoy,-1);
  FCancelada := False;

  try
    s := DeEncryptString(LicenciaCodif, LICENSEKEY);

    if Length(s) <> LICENSELENGTH then
      Exit;

    FCancelada := Copy(s,1,1) = '0';

    guidstr := Copy(s,2,38);
    g := StringToGuid(guidstr);
    FLicenciaId := GuidToString(g);

    datestr := Copy(s,41,8);

    Venc := ConvertDate(datestr);

    FExpiracion := Venc;
    FEsValida := (FExpiracion > FechaHoy) and (not FCancelada);
  except
    Exit;
  end;
end;

end.



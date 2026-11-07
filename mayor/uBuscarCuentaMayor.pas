unit uBuscarCuentaMayor;

interface

function BuscarCtaDetalle(): string;

implementation

uses uFullTextSearch, Variants;

function BuscarCtaDetalle(): string;
var
  s: Variant;
begin
  s := TFullTextSearch.Buscar('idCuenta',False,'cgBuscarCtaDetalle');
  if s = NULL then
    Result := ''
  else
    Result := s;
end;

end.

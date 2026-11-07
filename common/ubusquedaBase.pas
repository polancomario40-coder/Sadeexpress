unit ubusquedaBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TBusquedaBase = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
     class function Buscar(ARetField : String; OcultaC1 : boolean = false; spname : string= '';
                 AAutoFit: Boolean = True; ColMaxWidth: Integer = -1) : Variant; virtual;
  end;

  TBusquedaBaseClass = class of TBusquedaBase;

var
  BusquedaBase: TBusquedaBase;

implementation

{$R *.dfm}

{ TBusquedaBase }

class function TBusquedaBase.Buscar(ARetField: String; OcultaC1: boolean;
  spname: string; AAutoFit: Boolean; ColMaxWidth: Integer): Variant;
begin
  Result := null;
end;

end.

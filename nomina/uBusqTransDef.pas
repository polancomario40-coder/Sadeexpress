unit uBusqTransDef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusquedaBasica, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, ComCtrls, wwdblook;

type
  TBusqTransDef = class(TfrmBusquedaBasica)
    qryBasicoTransaccionDefID: TIntegerField;
    qryBasicoTipoTransaccion: TStringField;
    qryBasicoFecha: TDateTimeField;
    qryBasicoCantidad: TBCDField;
    qryBasicoDesde: TDateTimeField;
    qryBasicoHasta: TDateTimeField;
    qryBasicoFijo: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure SetQry; Override;
  end;

var
  BusqTransDef: TBusqTransDef;

implementation

uses UUtiles, Udata;

{$R *.dfm}

{ TfrmBusqPaquetes }

procedure TBusqTransDef.SetQry;
begin
  inherited;
  With qryBasico, Sql Do
  Begin
    Close;
    Clear;
    Add('SELECT     td.TransaccionDefID, tt.TipoTransaccion, td.Fecha, td.Cantidad, td.Desde, td.Hasta, td.Fijo ');
    Add('FROM         TransaccionDef td INNER JOIN TipoTransaccion tt ON td.TipoTransaccionID = tt.TipoTransaccionID ');
    Add('ORDER BY ');
    Add(Campo);
    Open;
  End;
end;

end.

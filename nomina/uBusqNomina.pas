unit uBusqNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusquedaBasica, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, ComCtrls, wwdblook;

type
  TBusqNomina = class(TfrmBusquedaBasica)
    qryBasicoNominaID: TIntegerField;
    qryBasicoTipoNominaID: TIntegerField;
    qryBasicoTipoEmpleadoID: TIntegerField;
    qryBasicoFecha: TDateTimeField;
    qryBasicoDesde: TDateTimeField;
    qryBasicoHasta: TDateTimeField;
    qryBasicoNumeroNomina: TSmallintField;
    qryBasicoMesCalendario: TSmallintField;
    procedure chkactivoClick(Sender: TObject);
    procedure InventarioCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure SetQry; Override;
  end;

var
  BusqNomina: TBusqNomina;

implementation

uses UUtiles, Udata;

{$R *.dfm}

{ TfrmBusqPaquetes }

procedure TBusqNomina.SetQry;
begin
  inherited;
  With qryBasico, Sql Do
  Begin
    Close;
    Clear;
    Add('SELECT     NominaID, TipoNominaID, TipoEmpleadoID, Fecha, Desde, Hasta, NumeroNomina, MesCalendario FROM Nomina');
    Add('ORDER BY ');
    Add(Campo);
    Open;
  End;
end;

procedure TBusqNomina.chkactivoClick(Sender: TObject);
begin
  inherited;
  setqry;
end;

procedure TBusqNomina.InventarioCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  inherited;
  setqry;
end;

end.

unit CxCFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusqueda, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, wwdblook, wwdbdatetimepicker, dxCntner, dxExEdtr, dxEdLib;

type
  TFindCxc = class(TBusqueda)
    Desde: TwwDBDateTimePicker;
    Hasta: TwwDBDateTimePicker;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SetQuery(); override;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DesdeChange(Sender: TObject);
    procedure HastaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindCxc: TFindCxc;

implementation

uses Udata;

{$R *.dfm}

procedure TFindCxc.FormCreate(Sender: TObject);
begin
  Desde.Date := dm.FechaDesde;
  Hasta.Date := dm.FechaHasta;

  inherited;
end;

procedure TFindCxc.SetQuery();
begin
if Campo = '' then Campo := '2' ;

  rs.parameters[1].value := Campo + Asc;
  RS.Parameters[2].Value := Desde.Date;
  RS.Parameters[3].Value := Hasta.Date;
  if rs.Active then rs.Requery;
end;

procedure TFindCxc.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  setquery;
end;

procedure TFindCxc.DesdeChange(Sender: TObject);
begin
  inherited;
  dm.FechaDesde  := desde.Date;
end;

procedure TFindCxc.HastaChange(Sender: TObject);
begin
  inherited;
  dm.FechaHasta := hasta.Date;
end;

end.

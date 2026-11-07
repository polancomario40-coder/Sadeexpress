unit FacturaRecFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusqueda, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, wwdblook, wwdbdatetimepicker, dxCntner, dxExEdtr, dxEdLib;

type
  TFindFacturaRec = class(TBusqueda)
    Desde: TwwDBDateTimePicker;
    Hasta: TwwDBDateTimePicker;
    Label2: TLabel;
    Credito: TdxCheckEdit;
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
  FindFacturaRec: TFindFacturaRec;

implementation

uses Udata;

{$R *.dfm}

procedure TFindFacturaRec.FormCreate(Sender: TObject);
begin
  Desde.Date := dm.FechaDesde;
  Hasta.Date := dm.FechaHasta;
  inherited;
end;

procedure TFindFacturaRec.SetQuery();
begin
if Campo = '' then Campo := '2' ;

  rs.parameters[1].value := Campo + Asc;
  RS.Parameters[2].Value := Desde.Date;
  RS.Parameters[3].Value := Hasta.Date;
  RS.Parameters[4].Value := Credito.Checked;
  if rs.Active then rs.Requery;
end;

procedure TFindFacturaRec.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  setquery;
end;

procedure TFindFacturaRec.DesdeChange(Sender: TObject);
begin
  inherited;
  dm.FechaDesde := desde.Date;
end;

procedure TFindFacturaRec.HastaChange(Sender: TObject);
begin
  inherited;
  dm.FechaHasta := hasta.Date;
end;

end.

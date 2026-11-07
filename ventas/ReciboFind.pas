unit ReciboFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusqueda, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, wwdblook, wwdbdatetimepicker, dxCntner, dxExEdtr, dxEdLib;

type
  TFindRecibo = class(TBusqueda)
    Desde: TwwDBDateTimePicker;
    Hasta: TwwDBDateTimePicker;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    RSidRecibo: TGuidField;
    RSRecibo: TStringField;
    RSFecha: TDateTimeField;
    RSReferencia: TIntegerField;
    RSidCliente: TIntegerField;
    RSCliente: TStringField;
    RSValor: TBCDField;
    RSVendedor: TStringField;
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
  FindRecibo: TFindRecibo;

implementation

uses Udata;

{$R *.dfm}

procedure TFindRecibo.FormCreate(Sender: TObject);
begin
  Desde.Date := dm.FechaDesde;
  Hasta.Date := dm.FechaHasta;   
  inherited;
end;

procedure TFindRecibo.SetQuery();
begin
if Campo = '' then Campo := '2' ;

  rs.parameters[1].value := Campo + Asc;
  RS.Parameters[2].Value := Desde.Date;
  RS.Parameters[3].Value := Hasta.Date;
  if rs.Active then rs.Requery;
end;

procedure TFindRecibo.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  setquery;
end;

procedure TFindRecibo.DesdeChange(Sender: TObject);
begin
  inherited;
  dm.FechaDesde := desde.date;
  
end;

procedure TFindRecibo.HastaChange(Sender: TObject);
begin
  inherited;
  dm.FechaHasta := hasta.Date;
end;

end.

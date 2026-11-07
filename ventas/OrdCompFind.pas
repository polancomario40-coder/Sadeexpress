unit OrdCompFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusqueda, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, wwdblook, wwdbdatetimepicker, dxCntner, dxExEdtr, dxEdLib;

type
  TFindOrdComp = class(TBusqueda)
    Desde: TwwDBDateTimePicker;
    Hasta: TwwDBDateTimePicker;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    RSidOrdComp: TGuidField;
    RSOrdComp: TStringField;
    RSFecha: TDateTimeField;
    RSReferencia: TStringField;
    RSidCliente: TIntegerField;
    RSCliente: TStringField;
    RSTotal: TBCDField;
    rsidOrdCompStatus: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SetQuery(); override;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DesdeChange(Sender: TObject);
    procedure HastaChange(Sender: TObject);
  private
    { Private declarations }
   ALMACENDEFAULT: string;
  public
    { Public declarations }
  end;

var
  FindOrdComp: TFindOrdComp;

implementation

uses Udata;

{$R *.dfm}

procedure TFindOrdComp.FormCreate(Sender: TObject);
begin
  Desde.Date := dm.FechaDesde;
  Hasta.Date := dm.FechaHasta;
  ALMACENDEFAULT := dm.GetPCSetting('ALMACENDEFAULT');
  inherited;
end;

procedure TFindOrdComp.SetQuery();
begin
if Campo = '' then Campo := '2' ;

  rs.parameters[1].value := Campo + Asc;
  RS.Parameters[2].Value := Desde.Date;
  RS.Parameters[3].Value := Hasta.Date;
  rs.Parameters[4].Value := ALMACENDEFAULT;
  if rs.Active then rs.Requery;
end;

procedure TFindOrdComp.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  setquery;
end;

procedure TFindOrdComp.DesdeChange(Sender: TObject);
begin
  inherited;
  dm.FechaDesde := desde.date;
end;

procedure TFindOrdComp.HastaChange(Sender: TObject);
begin
  inherited;
  dm.FechaHasta := hasta.date;
end;

end.

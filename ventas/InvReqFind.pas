unit InvReqFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusqueda, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, wwdblook, wwdbdatetimepicker, dxCntner, dxExEdtr, dxEdLib,
  cxControls, cxContainer, cxEdit, cxCheckBox;

type
  TFindInvReq = class(TBusqueda)
    Desde: TwwDBDateTimePicker;
    Hasta: TwwDBDateTimePicker;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    RSidInvReq: TGuidField;
    RSInvReq: TStringField;
    RSFecha: TDateTimeField;
    RSReferencia: TStringField;
    RSAutorizado: TStringField;
    RSOrdTrab: TStringField;
    ent: TcxCheckBox;
    RSSolicitante: TStringField;
    RSDepartamento: TStringField;
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
  FindInvReq: TFindInvReq;

implementation

uses Udata;

{$R *.dfm}

procedure TFindInvReq.FormCreate(Sender: TObject);
begin
  Desde.Date := dm.FechaDesde;
  Hasta.Date := dm.FechaHasta;

  inherited;
end;

procedure TFindInvReq.SetQuery();
begin
if Campo = '' then Campo := '2' ;

  rs.parameters[1].value := Campo + Asc;
  RS.Parameters[2].Value := Desde.Date;
  RS.Parameters[3].Value := Hasta.Date;
  if ent.state = cbsGrayed then
    RS.Parameters[4].Value := null
  else
    RS.Parameters[4].Value := ent.checked;
  if rs.Active then rs.Requery;
end;

procedure TFindInvReq.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  setquery;
end;

procedure TFindInvReq.DesdeChange(Sender: TObject);
begin
  inherited;
  dm.FechaDesde := desde.Date;
  
end;

procedure TFindInvReq.HastaChange(Sender: TObject);
begin
  inherited;
  dm.FechaHasta := hasta.Date;
end;

end.

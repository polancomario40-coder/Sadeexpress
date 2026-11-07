unit uLogView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, DB, ADODB,
  StdCtrls, Buttons, wwdbdatetimepicker, dxCntner, Wwdatsrc, dxExEdtr;

type
  TLogsView = class(TFForm)
    dxDBGrid1: TdxDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    desde: TwwDBDateTimePicker;
    hasta: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    rsLog: TADODataSet;
    rsLogFechahora: TDateTimeField;
    rsLogUsuario: TStringField;
    rsLogAccion: TStringField;
    rsLogObjeto: TStringField;
    dxDBGrid1Fechahora: TdxDBGridDateColumn;
    dxDBGrid1Usuario: TdxDBGridMaskColumn;
    dxDBGrid1Accion: TdxDBGridMaskColumn;
    dxDBGrid1Objeto: TdxDBGridMaskColumn;
    BitBtn2: TBitBtn;
    rsLogidLoging: TGuidField;
    rsLogReferencia: TStringField;
    dxDBGrid1Referencia: TdxDBGridMaskColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogsView: TLogsView;

implementation

uses Udata;

{$R *.dfm}

procedure TLogsView.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with rsLog do begin
    Close();
    Parameters[1].Value := desde.Date;
    Parameters[2].Value := hasta.Date;
    Open();
  end;
end;

procedure TLogsView.FormCreate(Sender: TObject);
begin
  inherited;
  desde.Date := dm.DBFecha;
  hasta.Date := dm.DBFecha ;
end;

procedure TLogsView.BitBtn2Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.

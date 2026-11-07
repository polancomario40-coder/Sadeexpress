unit UHorario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, basicform, DB, ADODB, Wwlocate, wwDialog, wwidlg, Wwdatsrc,
  ActnList, ComCtrls, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, uformmant1, ImgList,
  wwSpeedButton, wwDBNavigator, wwclearpanel, cxCheckBox, cxDBEdit,
  cxGroupBox, Gradient, cxControls, cxContainer, cxEdit, cxTextEdit;

type
  THorario = class(Tfformmant1)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxDBTimeEdit1: TdxDBTimeEdit;
    dxDBTimeEdit2: TdxDBTimeEdit;
    Label5: TLabel;
    dxDBTimeEdit3: TdxDBTimeEdit;
    dxDBTimeEdit4: TdxDBTimeEdit;
    Label7: TLabel;
    dxDBTimeEdit5: TdxDBTimeEdit;
    dxDBTimeEdit6: TdxDBTimeEdit;
    Label9: TLabel;
    dxDBTimeEdit7: TdxDBTimeEdit;
    dxDBTimeEdit8: TdxDBTimeEdit;
    Label11: TLabel;
    dxDBTimeEdit9: TdxDBTimeEdit;
    dxDBTimeEdit10: TdxDBTimeEdit;
    Label13: TLabel;
    dxDBTimeEdit11: TdxDBTimeEdit;
    dxDBTimeEdit12: TdxDBTimeEdit;
    Label15: TLabel;
    dxDBTimeEdit13: TdxDBTimeEdit;
    dxDBTimeEdit14: TdxDBTimeEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    RSidHorario: TStringField;
    RSHorario: TStringField;
    RSLunesEnt: TDateTimeField;
    RSLunesSal: TDateTimeField;
    RSMartesEnt: TDateTimeField;
    RSMartesSal: TDateTimeField;
    RSMiercolesEnt: TDateTimeField;
    RSMiercolesSal: TDateTimeField;
    RSJuevesEnt: TDateTimeField;
    RSJuevesSal: TDateTimeField;
    RSViernesEnt: TDateTimeField;
    RSViernesSal: TDateTimeField;
    RSSabadoEnt: TDateTimeField;
    RSSabadoSal: TDateTimeField;
    RSDomingoEnt: TDateTimeField;
    RSDomingoSal: TDateTimeField;
    RSLunesHoras: TIntegerField;
    RSMartesHoras: TIntegerField;
    RSMiercolesHoras: TIntegerField;
    RSJuevesHoras: TIntegerField;
    RSViernesHoras: TIntegerField;
    RSDomingoHoras: TIntegerField;
    RSDescansoDoble: TBooleanField;
    RSPagaNocturna: TBooleanField;
    RSExtraDiario: TBooleanField;
    RSMinutosTarde: TIntegerField;
    RSSabadoHoras: TIntegerField;
    RSTiempoAlmuerzo: TBCDField;
    RSGeneraHorasNormales: TBooleanField;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    RSReferencia: TStringField;
    Gradient1: TGradient;
    cxGroupBox1: TcxGroupBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Horario: THorario;

implementation

uses Udata, uBusqueda;

{$R *.dfm}

procedure THorario.FormCreate(Sender: TObject);
begin
  inherited;
  spName := 'FindHorario';
  tfBusqueda := TBusqueda;
  Busqfield := 'idHorario';
  OcultarC1 := false;
end;

end.

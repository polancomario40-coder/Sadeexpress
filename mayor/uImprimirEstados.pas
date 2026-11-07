unit uImprimirEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  DB, DateUtils, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB,
  cxCheckBox;

type
  TImprimirEstados = class(TForm)
    Label1: TLabel;
    deHasta: TcxDateEdit;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    Label2: TLabel;
    rsEstados: TADODataSet;
    luEstado: TcxLookupComboBox;
    ds: TDataSource;
    rsEstadosidEstado: TIntegerField;
    rsEstadosDescripcion: TStringField;
    rsEstadosTipo: TStringField;
    cbVertical: TcxCheckBox;
    cCalcBG: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImprimirEstados: TImprimirEstados;

implementation

uses ugldm, uBalanceGral, uEstadoResultados, Udata;

{$R *.dfm}

procedure TImprimirEstados.FormCreate(Sender: TObject);
begin
  rsEstados.Open();
  luEstado.EditValue := rsestadosIdestado.Value;
  deHasta.Date := gldm.GlobalHasta;
end;

procedure TImprimirEstados.cxButton2Click(Sender: TObject);
begin
  if gldm.GlobalHasta <> deHasta.Date then
    gldm.GlobalHasta := deHasta.Date;

  if rsEstados.Locate('idEstado',luEstado.EditValue,[]) then begin
    if rsEstadosTipo.Value = 'B' then begin
      ImprimirBalanceGral(rsEstadosIdEstado.Value,DateOf(deHasta.Date), cbVertical.Checked);
    end
    else
      ImprimirResultados(rsEstadosIdEstado.Value,DateOf(deHasta.Date), cbVertical.Checked);
  end;
end;

end.

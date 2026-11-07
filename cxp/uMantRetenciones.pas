unit uMantRetenciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassRS, cxLookAndFeelPainters, DB, ADODB, ImgList,
  ActnList, Wwdatsrc, StdCtrls, cxButtons, Gradient, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxCheckBox,
  cxButtonEdit;

type
  TMantRetenciones = class(TMantClassRS)
    rs: TADODataSet;
    rsidRetencion: TAutoIncField;
    rsRetencion: TStringField;
    rsPorcentaje: TFloatField;
    rsidCuenta: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1idRetencion: TcxGridDBColumn;
    cxGrid1DBTableView1Retencion: TcxGridDBColumn;
    cxGrid1DBTableView1Porcentaje: TcxGridDBColumn;
    cxGrid1DBTableView1idCuenta: TcxGridDBColumn;
    rsItbis: TBooleanField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    rsUidRetencion: TGuidField;
    rsClase: TStringField;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    procedure cxGrid1DBTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantRetenciones: TMantRetenciones;

implementation

uses Udata, UUtiles, uBuscarCuentaMayor;

{$R *.dfm}

procedure TMantRetenciones.cxGrid1DBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  s: string;
begin
  inherited;
  if appEstado <> appBrowse then begin
    s := BuscarCtaDetalle();
    if s <> '' then begin
      if not (rs.State in dsEditModes) then
        rs.Edit();

      rsidCuenta.Value := s;
    end;
  end;
end;

end.

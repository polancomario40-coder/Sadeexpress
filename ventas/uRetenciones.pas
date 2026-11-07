unit uRetenciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TRetenciones = class(TMantConf)
    rsRetenciones: TADODataSet;
    rsRetencionesTipoRetencion: TAutoIncField;
    rsRetencionesTipoEntidad: TIntegerField;
    rsRetencionesDescripcion: TStringField;
    rsRetencionesidCuenta: TStringField;
    rsRetencionesPorcentaje: TBCDField;
    rsRetencionesPorDefecto: TBooleanField;
    rsRetencionesUidTiposRetencion: TGuidField;
    procedure rsRetencionesNewRecord(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Retenciones: TRetenciones;

implementation

uses Udata, uFullTextSearch, uBuscarCuentaMayor;

{$R *.dfm}

procedure TRetenciones.rsRetencionesNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsRetencionesuidTiposRetencion.AsGuid := dm.NewGuid;
end;

procedure TRetenciones.wwDBGrid1DblClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if rsRetenciones.State in dsEditModes then begin
    if wwDBGrid1.SelectedField = rsRetencionesidCuenta then begin
       s := BuscarCtaDetalle();
       if s <> '' then
         rsRetencionesIdCuenta.Value := s;
    end;
  end;
end;

end.

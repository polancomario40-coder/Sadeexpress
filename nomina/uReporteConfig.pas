unit uReporteConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TReporteConfiguracion = class(TMantConf)
    rsReportes: TADODataSet;
    rsReportesIdReporte: TGuidField;
    rsReportesReporte: TStringField;
    rsReportesNomColum01: TStringField;
    rsReportesNomColum02: TStringField;
    rsReportesNomColum03: TStringField;
    rsReportesNomColum04: TStringField;
    rsReportesNomColum05: TStringField;
    rsReportesNomColum06: TStringField;
    rsReportesNomColum07: TStringField;
    rsReportesNomColum08: TStringField;
    rsReportesNomColum09: TStringField;
    rsReportesNomColum10: TStringField;
    rsReportesNomColum11: TStringField;
    rsReportesNomColum12: TStringField;
    rsReportesNomColum13: TStringField;
    rsReportesNomColum14: TStringField;
    rsReportesNomColum15: TStringField;
    rsReportesNomColum16: TStringField;
    rsReportesNomColum17: TStringField;
    rsReportesNomColum18: TStringField;
    rsReportesTransColum01: TStringField;
    rsReportesTransColum02: TStringField;
    rsReportesTransColum03: TStringField;
    rsReportesTransColum04: TStringField;
    rsReportesTransColum05: TStringField;
    rsReportesTransColum06: TStringField;
    rsReportesTransColum07: TStringField;
    rsReportesTransColum08: TStringField;
    rsReportesTransColum09: TStringField;
    rsReportesTransColum10: TStringField;
    rsReportesTransColum11: TStringField;
    rsReportesTransColum12: TStringField;
    rsReportesTransColum13: TStringField;
    rsReportesTransColum14: TStringField;
    rsReportesTransColum15: TStringField;
    rsReportesTransColum16: TStringField;
    rsReportesTransColum17: TStringField;
    rsReportesTransColum18: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReporteConfiguracion: TReporteConfiguracion;

implementation

uses Udata;

{$R *.dfm}

end.

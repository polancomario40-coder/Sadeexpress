unit UReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, ppCtrls, ppPrnabl, ppEndUsr, ppRptExp, ADODB,
  ppModule, daDataModule;

type
  TReporte = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reporte: TReporte;

implementation

uses Udata;

{$R *.dfm}

end.

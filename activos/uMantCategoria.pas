unit uMantCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, ImgList, DBActns, ActnList, DB, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid, ADODB;

type
  TMantCategoria = class(TMantConf)
    rs: TADODataSet;
    rsidCategoria: TAutoIncField;
    rsCategoria: TStringField;
    rsPorcentaje: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantCategoria: TMantCategoria;

implementation

uses Udata;

{$R *.dfm}

end.

unit uZona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TZona = class(TMantConf)
    RS: TADODataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Zona: TZona;

implementation

uses Udata;

{$R *.dfm}

end.

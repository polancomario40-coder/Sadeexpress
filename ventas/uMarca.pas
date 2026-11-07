unit uMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TMarca = class(TMantConf)
    rsMarca: TADODataSet;
    rsMarcaidMarca: TStringField;
    rsMarcaMarca: TStringField;
    rsMarcaUidMarca: TGuidField;
    rsMarcaAbrev: TStringField;
    procedure rsMarcaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Marca: TMarca;

implementation

uses Udata;

{$R *.dfm}

procedure TMarca.rsMarcaNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsmarcauidmarca.AsGuid := dm.NewGuid;
end;

end.

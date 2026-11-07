unit UProduccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UModelTrans, Wwdbigrd, Wwdbgrid, wwDialog, wwidlg, DB, Wwdatsrc,
  Grids, DBGrids, StdCtrls, Wwkeycb, wwfltdlg, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, DBCtrls, wwdblook, ADODB, Wwdbdlg,
  ActnList, ComCtrls, ToolWin, ImgList, Buttons;

type
  TProduccion = class(TModeloTrans)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Produccion: TProduccion;

implementation

uses Udata, UdataNom;

{$R *.dfm}

end.

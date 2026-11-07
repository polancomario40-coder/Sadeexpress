unit UResultado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UModelTrans, wwfltdlg, wwDialog, wwidlg, DB, Wwdatsrc, StdCtrls,
  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwrcdvw, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, DBCtrls, wwdblook, ADODB, Wwdbdlg,
  ActnList, ComCtrls, ToolWin, ImgList, Buttons;

type
  TResultado = class(TModeloTrans)
    VerRec: TwwRecordViewDialog;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Resultado: TResultado;

implementation

uses Udata, UdataNom;

{$R *.dfm}

procedure TResultado.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  verrec.Execute ;
end;

end.

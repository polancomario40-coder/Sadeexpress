unit uClienteGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TClienteGrupo = class(TMantConf)
    qryClienteGrupo: TADOQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteGrupo: TClienteGrupo;

implementation

uses Udata;

{$R *.dfm}

procedure TClienteGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  qryClienteGrupo.Open;
end;

end.

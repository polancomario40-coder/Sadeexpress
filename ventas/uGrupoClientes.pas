unit uGrupoClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, ImgList, DBActns, ActnList, DB, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid, ADODB;

type
  TGrupoCliente = class(TMantConf)
    qryGrupoCliente: TADOQuery;
    qryGrupoClienteIdGrupo: TStringField;
    qryGrupoClienteGrupo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GrupoCliente: TGrupoCliente;

implementation

uses Udata;

{$R *.dfm}

end.

unit uFactorDistrib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, DB, ADODB,
  Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid;

type
  TFactorDistrib = class(TFForm)
    wwDBGrid1: TwwDBGrid;
    rs: TADODataSet;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FactorDistrib: TFactorDistrib;

implementation

uses Udata;

{$R *.dfm}

procedure TFactorDistrib.FormCreate(Sender: TObject);
begin
  inherited;
  rs.open;
end;

end.

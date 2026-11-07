unit uBuscarCuentaMayor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusquedaDX, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxContainer, cxCheckBox, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit;

type
  TBuscarCuentaMayor = class(TBusquedaDX)
    edFiltro: TcxTextEdit;
    cbDet: TcxCheckBox;
    RSidCuenta: TStringField;
    RSDescripcion: TStringField;
    tblViewidCuenta: TcxGridDBColumn;
    tblViewDescripcion: TcxGridDBColumn;
    procedure edFiltroPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetQuery(); override;
  public
    { Public declarations }
    procedure ReCreate(const spName : string); override;
  end;

  function BuscarCtaDetalle: string;

var
  BuscarCuentaMayor: TBuscarCuentaMayor;

implementation

{$R *.dfm}

{ TBusquedaDX1 }

procedure TBuscarCuentaMayor.ReCreate(const spName: string);
begin
  inherited ReCreate('');
end;

procedure TBuscarCuentaMayor.SetQuery;
begin
  inherited;
  rs.Close();
  rs.parameters[1].value := cbDet.Checked;
  rs.parameters[2].value := edFiltro.Text;
  rs.Open();
end;

function BuscarCtaDetalle: string;
var
  num: Variant;
begin
  num := TBuscarCuentaMayor.Buscar('idCuenta');
  if num = NULL then
    Result := ''
  else
    Result := num;
end;

procedure TBuscarCuentaMayor.edFiltroPropertiesChange(Sender: TObject);
begin
  inherited;
  SetQuery();
end;

procedure TBuscarCuentaMayor.FormCreate(Sender: TObject);
begin
  inherited;
  //spName := '';
  ReturnField := 'idCuenta';
  AutoCreateCols := False;
end;

end.
 
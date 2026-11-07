unit uProMovTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxButtonEdit;

type
  TProMovTipo = class(TMantConf)
    RS: TADODataSet;
    RSidProMovTipo: TIntegerField;
    RSProMovTipo: TStringField;
    RSSalida: TBooleanField;
    RSUProMovTipoID: TGuidField;
    RSidCuenta: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1idProMovTipo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ProMovTipo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1idCuenta: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn;
    procedure cxGrid1DBBandedTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure RSidCuentaValidate(Sender: TField);
    procedure RSNewRecord(DataSet: TDataSet);
  private
    floading : boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProMovTipo: TProMovTipo;

implementation

uses Udata, uBuscarCuentaMayor;

{$R *.dfm}

procedure TProMovTipo.cxGrid1DBBandedTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  floading := true;
  rsidcuenta.value := BuscarCtaDetalle();
  floading := false;
end;

procedure TProMovTipo.RSidCuentaValidate(Sender: TField);
var
  s :  string;
begin
  inherited;
  if not floading then
     if RSidCuenta.Value <> '' then
        if not dm.ValidarCuenta(sender.Value, s) then
          raise exception.create('Error en la cuenta seleccionada');
end;

procedure TProMovTipo.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsupromovtipoid.AsGuid := dm.NewGuid;
end;

end.

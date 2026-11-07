unit uProductoEspec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant1, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, Mask, DBCtrls, DB, ADODB, ActnList,
  ImgList, Wwdatsrc, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  cxCalendar, cxDBEdit, cxMemo;

type
  TProductoEspec = class(Tfformmant1)
    Label1: TLabel;
    Label5: TLabel;
    Espec: TcxDBMemo;
    RSidProducto: TStringField;
    RSEspecificacion: TStringField;
    RSFechaEspec: TDateTimeField;
    cxDBDateEdit1: TcxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductoEspec: TProductoEspec;

implementation

uses Udata, uBusqueda;

{$R *.dfm}

procedure TProductoEspec.FormCreate(Sender: TObject);
begin
  inherited;
  logField := 'idProducto';
  spName := 'FindProductoEspec';
  Busqfield := 'idProducto';
  tfBusqueda := TBusqueda;
  OcultarC1 := false;
end;

procedure TProductoEspec.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSFechaEspec.Value := dm.DBFecha();
end;

end.

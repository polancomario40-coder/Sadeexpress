unit uMantImpuestos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, ADODB, dxCntner, Gradient, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, Buttons,
  uMantClassRS, cxLookAndFeelPainters, ImgList, ActnList, Wwdatsrc,
  StdCtrls, cxButtons, cxButtonEdit, cxCheckBox;

type
  TMantImpuestos = class(TMantClassRS)
    rsImpuestos: TADODataSet;
    rsImpuestosTipoImpuesto: TAutoIncField;
    rsImpuestosDescripcion: TStringField;
    rsImpuestosPorcentaje: TBCDField;
    rsImpuestosTitulo: TStringField;
    rsImpuestosidCuenta: TStringField;
    rsImpuestosAutoIncluir: TBooleanField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TipoImpuesto: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1Porcentaje: TcxGridDBColumn;
    cxGrid1DBTableView1idCuenta: TcxGridDBColumn;
    cxGrid1DBTableView1AutoIncluir: TcxGridDBColumn;
    cxButton1: TcxButton;
    rsImpuestosUidTipoImpuesto: TGuidField;
    rsImpuestosITBIS: TBooleanField;
    rsImpuestosActivo: TBooleanField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantImpuestos: TMantImpuestos;

implementation

uses Udata, uBuscarCuentaMayor, UUtiles;

{$R *.dfm}

procedure TMantImpuestos.FormCreate(Sender: TObject);
begin
  inherited;
  rsImpuestos.Open();

end;

procedure TMantImpuestos.cxGrid1DBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  s: string;
begin
  inherited;
  if appEstado <> appBrowse then begin
    s := BuscarCtaDetalle();
    if s <> '' then begin
      if not (rsImpuestos.State in dsEditModes) then
        rsImpuestos.Edit();

      rsImpuestosidCuenta.Value := s;
    end;
  end;
end;

end.

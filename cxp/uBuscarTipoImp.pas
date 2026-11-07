unit uBuscarTipoImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, ADODB, dxCntner, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, Buttons, Gradient,
  ImgList, ActnList, Wwdatsrc, uSimpleForm;

type
  TfBuscarTipoImp = class(TSimpleForm)
    rsImps: TADODataSet;
    rsImpsTipoImpuesto: TAutoIncField;
    rsImpsDescripcion: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TipoImpuesto: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscarTipoImp: TfBuscarTipoImp;

function BuscarImpuesto: Integer;

implementation

uses uMAINDM, Udata;

{$R *.dfm}

procedure TfBuscarTipoImp.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfBuscarTipoImp.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfBuscarTipoImp.FormCreate(Sender: TObject);
begin
  inherited;
  rsImps.Open();
end;

function BuscarImpuesto: Integer;
begin
  with TfBuscarTipoImp.Create(Application) do begin
    if ShowModal() = mrOk then
      Result := rsImpsTipoImpuesto.AsInteger
    else
      Result := -1;
    Release();
  end;
end;

end.


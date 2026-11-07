unit uCargaSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

Function ShowCargaSelect : String;

type
  TCargaSelect = class(TFFormx)
    qryCargas: TADOQuery;
    qryCargasIdCarga: TAutoIncField;
    qryCargasCarga: TStringField;
    qryCargasspName: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsCarga: TDataSource;
    cxGrid1DBTableView1IdCarga: TcxGridDBColumn;
    cxGrid1DBTableView1Carga: TcxGridDBColumn;
    cxGrid1DBTableView1spName: TcxGridDBColumn;
    cxButton4: TcxButton;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CargaSelect: TCargaSelect;

implementation

uses Udata;

{$R *.dfm}

Function ShowCargaSelect : String;
Begin
  With tCargaSelect.Create(Application) Do
  Begin
    If ShowModal = mrOk Then
      Result := qryCargasspName.Value
    Else
      Result := ''
  End;
End;

procedure TCargaSelect.FormCreate(Sender: TObject);
begin
  inherited;
  qryCargas.Open();
end;

end.

unit uCargaTransSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

Function ShowCargaTransSelect(NominaId : Integer) : Variant;

type
  TCargaTransSelect = class(TFFormx)
    qryCargas: TADOQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsCarga: TDataSource;
    cxButton4: TcxButton;
    cxButton1: TcxButton;
    qryCargasIdTransParaNomina: TGuidField;
    qryCargasTransParaNomina: TStringField;
    cxGrid1DBTableView1IdTransParaNomina: TcxGridDBColumn;
    cxGrid1DBTableView1TransParaNomina: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CargaTransSelect: TCargaTransSelect;

implementation

uses Udata;

{$R *.dfm}

Function ShowCargaTransSelect(NominaId : Integer) : Variant;
Begin
  With tCargaTransSelect.Create(Application) Do
  Begin
    qryCargas.Close();
    qryCargas.Parameters.ParamByName('NominaId').Value := NominaId;
    qryCargas.Open();
    If ShowModal = mrOk Then
      Result := qryCargasIdTransParaNomina.Value
    Else
      Result := Null
  End;
End;

procedure TCargaTransSelect.FormCreate(Sender: TObject);
begin
  inherited;
//  qryCargas.Open();
end;

end.

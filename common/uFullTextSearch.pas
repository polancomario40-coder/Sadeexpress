unit uFullTextSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusquedaDX, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxContainer, cxCheckBox, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit;

type
  TFullTextSearch = class(TBusquedaDX)
    edFiltro: TcxTextEdit;
    procedure edFiltroPropertiesChange(Sender: TObject);
  private
    { Private declarations }

  protected
    procedure SetQuery; override;
  public
    { Public declarations }
  end;

var
  FullTextSearch: TFullTextSearch;

implementation

{$R *.dfm}

procedure TFullTextSearch.edFiltroPropertiesChange(Sender: TObject);
begin
  inherited;
  SetQuery();
end;

procedure TFullTextSearch.SetQuery;
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := edFiltro.Text;
    Open();
  end;
  SetBestFit();
end;

end.

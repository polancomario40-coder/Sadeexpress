unit uSelEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxHyperLinkEdit, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGridLevel, cxGridCardView, cxGridDBCardView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  jpeg, ExtCtrls, cxContainer, cxGroupBox, Gradient;

type
  TSelEmpresa = class(TForm)
    ds: TDataSource;
    Gradient1: TGradient;
    cxGroupBox1: TcxGroupBox;
    bCancel: TcxButton;
    bOk: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Empresa: TcxGridDBBandedColumn;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1Empresa: TcxGridDBCardViewRow;
    cxGrid1DBCardView1RNC: TcxGridDBCardViewRow;
    cxGrid1Level1: TcxGridLevel;
    Image1: TImage;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    procedure cxGrid1DBBandedTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelEmpresa: TSelEmpresa;

function BuscarEmpresa(const idUsr: string; const TermOnCancel: Boolean = True): Variant;
function BuscarConStrEmpresa(const idUsr: string; const TermOnCancel: Boolean = True): string;

implementation

uses udmRepository;

{$R *.dfm}


function BuscarEmpresa(const idUsr: string; const TermOnCancel: Boolean = True): Variant;
var
  rows: Integer;
begin
  dmRepository.AbrirEmpresas(idUsr);
  rows := dmRepository.rsEmpresasUsr.RecordCount;
  if rows = 0 then begin
    Result := null;
    ShowMessage('Usted no tiene asignada ninguna empresa, el programa terminara ahora');
    Application.Terminate();
  end
  else begin
    if rows = 1 then
      Result := dmRepository.rsEmpresasUsrIdEmpresa.Value
    else begin
      with TSelEmpresa.Create(Application) do begin
        if ShowModal() = mrOk then
          Result := dmRepository.rsEmpresasUsrIdEmpresa.Value
        else if TermOnCancel then
          Application.Terminate();

        Release();
      end;
    end;
  end;
end;

function BuscarConStrEmpresa(const idUsr: string; const TermOnCancel: Boolean = True): string;
var
  i: Variant;
begin
  i := BuscarEmpresa(idUsr, TermOnCancel);
  if i = null then
    Result := ''
  else begin
    Result := dmRepository.GetCIAConString(i);
  end;
end;

procedure TSelEmpresa.cxGrid1DBBandedTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  AHandled := True;
  ModalResult := mrOk;
end;

procedure TSelEmpresa.FormShow(Sender: TObject);
begin
  cxGrid1.SetFocus();
end;

procedure TSelEmpresa.cxGrid1DBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 // if AItem.Focused then
//    AStyle := cxStyle2
 // else
//    AStyle := nil;
end;

end.

unit uListaSups;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  dxExEdtr, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit;

type
  TfListaSups = class(TForm)
    ds: TDataSource;
    edFiltro: TcxTextEdit;
    Grid: TcxGrid;
    tblView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    RS: TADODataSet;
    RSidSuplidor: TIntegerField;
    RSNombre: TStringField;
    RSTelefono1: TStringField;
    RSTelefono2: TStringField;
    RSRNC: TStringField;
    RSContacto: TStringField;
    tblViewidSuplidor: TcxGridDBColumn;
    tblViewNombre: TcxGridDBColumn;
    tblViewTelefono1: TcxGridDBColumn;
    tblViewTelefono2: TcxGridDBColumn;
    tblViewRNC: TcxGridDBColumn;
    tblViewContacto: TcxGridDBColumn;
    cbDet: TcxCheckBox;
    procedure edFiltroPropertiesChange(Sender: TObject);
    procedure tblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure Actualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaSups: TfListaSups;

function BuscarSuplidor(const Todos: Boolean = False): Integer;

implementation

{$R *.dfm}

function BuscarSuplidor(const Todos: Boolean = False): Integer;
begin
  with TfListaSups.Create(Application) do begin
    Actualizar();
    if ShowModal() = mrOk then
      Result := rsidSuplidor.AsInteger
    else
      Result := -1;

    Free();
  end;
end;

procedure TfListaSups.edFiltroPropertiesChange(Sender: TObject);
begin
  Actualizar();
end;

procedure TfListaSups.Actualizar();
begin
  with rs do begin
    Close();
    Parameters[1].Value := cbDet.Checked;
    Parameters[2].Value := edFiltro.Text;
    Open();
  end;
end;

procedure TfListaSups.tblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ModalResult := mrOk;
  AHandled := True;
end;

end.

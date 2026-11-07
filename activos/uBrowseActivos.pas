unit uBrowseActivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxButtonEdit, cxSpinEdit;

type
  TfrBrowseActivos = class(TFrame)
    ds: TDataSource;
    rsActivos: TADODataSet;
    rsActivosCategoria: TStringField;
    rsActivosidActivo: TAutoIncField;
    rsActivosDescripcion: TStringField;
    rsActivosFechaAdq: TDateTimeField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxGrid1DBTableView1Categoria: TcxGridDBColumn;
    cxGrid1DBTableView1idActivo: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1FechaAdq: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FIdUbicacion: Integer;
    procedure SetUbicacion(const Value: Integer);
    procedure EditarActivo;     
    { Private declarations }
  public
    { Public declarations }
    property IdUbicacion: Integer read FIdUbicacion write SetUbicacion;
    procedure RefreshButtons;
  end;

implementation

uses Udata, uMantActivos, UUtiles;

{$R *.dfm}

{ TfrBrowseActivos }

procedure TfrBrowseActivos.SetUbicacion(const Value: Integer);
begin
  if FIdUbicacion <> Value then begin
    FIdUbicacion := Value;

    if Value = 0 then
      rsActivos.Close()
    else begin
      rsActivos.Close();
      rsActivos.Parameters[1].Value := Value;
      rsActivos.Open();
    end;
  end;
end;

procedure TfrBrowseActivos.cxButton1Click(Sender: TObject);
begin
  ModalShow(TMantActivos, showInsert, IdUbicacion, 'IdUbicacion', True);
  rsActivos.Requery();
end;

procedure TfrBrowseActivos.EditarActivo;
begin
  ModalShow(TMantActivos, showFind, rsActivosidActivo.AsInteger, 'IdActivo', True);
  rsActivos.Requery();
end;

procedure TfrBrowseActivos.cxButton2Click(Sender: TObject);
begin
  EditarActivo();
end;

procedure TfrBrowseActivos.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  EditarActivo();
  AHandled := True;
end;

procedure TfrBrowseActivos.RefreshButtons;
begin
  cxButton1.Enabled := dm.Tienepermiso(pAgregar,dm.apppermisos('MantActivos'));
  cxButton2.Enabled := dm.Tienepermiso(pAbrir,dm.apppermisos('MantActivos'));
end;

end.

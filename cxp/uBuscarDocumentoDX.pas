unit uBuscarDocumentoDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusquedaDX, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxContainer, cxCheckBox, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TBuscarDocumentoDX = class(TBusquedaDX)
    RSidDocumento: TIntegerField;
    RSReferencia: TStringField;
    RSFecha: TDateTimeField;
    RSTotal: TBCDField;
    RSTelefono1: TStringField;
    RSNombre: TStringField;
    RSRNC: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    edFiltro: TcxTextEdit;
    tblViewReferencia: TcxGridDBColumn;
    tblViewFecha: TcxGridDBColumn;
    tblViewTotal: TcxGridDBColumn;
    tblViewTelefono1: TcxGridDBColumn;
    tblViewNombre: TcxGridDBColumn;
    tblViewRNC: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure edFiltroPropertiesChange(Sender: TObject);
  private
    FidTrans: Integer;
    { Private declarations }
  protected
    procedure SetQuery; override;

  public
    { Public declarations }
    property idTrans: Integer read FidTrans write FidTrans;

    procedure ReCreate(const spName : string); override;

    class function BuscarPorTipo(const idTr: Integer): Variant;
  end;

var
  BuscarDocumentoDX: TBuscarDocumentoDX;

implementation

uses Udata;

{$R *.dfm}

{ TBuscarDocumentoDX }

procedure TBuscarDocumentoDX.ReCreate(const spName: string);
begin
  inherited ReCreate('');
end;

procedure TBuscarDocumentoDX.SetQuery;
begin
//  inherited;
  rs.Close();
  rs.parameters[1].value := deDesde.Date;
  rs.parameters[2].value := deHasta.Date;
  rs.Parameters[3].Value := edFiltro.Text;
  rs.Parameters[4].Value := idTrans;
  rs.Open();
end;

class function TBuscarDocumentoDX.BuscarPorTipo(const idTr: Integer): Variant;
var
  ffbusq : TBuscarDocumentoDX;
begin
  ffBusq := Self.Create(Application);

  with (ffBusq) do begin
    try
      AutoCreateCols := False;
      ReturnField := 'idDocumento';
      idTrans := idTr;
      AutoFit := False;

      cbAutoFit.Checked := AutoFit;
      Ocultar := True;

      setQuery();
      setGrid;
      SetBestFit();

      if ShowModal() = mrOk then begin
       if RS.FieldByName(ReturnField).isnull then
         Result := null
       else
         Result := RS.FieldByName(ReturnField).Value;
      end
      else
       Result := null;
     finally
       Release();
     end;
  end;
end;


procedure TBuscarDocumentoDX.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TBuscarDocumentoDX.edFiltroPropertiesChange(Sender: TObject);
begin
  inherited;
  if (deDesde.EditValue <> NULL) and (deHasta.EditValue <> NULL) then
    SetQuery();
end;

end.

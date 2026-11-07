unit uSimpleForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, Grids, dxEditor, dxCntner, dxExEdtr,
  dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,ppReport,uutiles,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Gradient;

type
  TSimpleForm = class(TForm)
    ds: TDataSource;
    Gradient1: TGradient;
    Gradient2: TGradient;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    FEnter2Tab: Boolean;
    { Private declarations }
  protected
    Modulo : string;
    property Enter2Tab: Boolean read FEnter2Tab write FEnter2Tab;
  public
    { Public declarations }
    procedure Nuevo; virtual;
    procedure Editar; virtual;
    procedure Guardar; virtual;
    procedure Cancelar; virtual;
    procedure Salir; virtual;

    function Iif(const bool: Boolean; const val1: string; const val2: string = ''): string;
    procedure Imprimir(rpt: TppReport);
    constructor Create(Aowner: TComponent); override;
  end;

var
  SimpleForm: TSimpleForm;

implementation

{$R *.dfm}

procedure TSimpleForm.Cancelar;
begin
  
end;

constructor TSimpleForm.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
  Enter2Tab := True;
end;

procedure TSimpleForm.Editar;
begin

end;

procedure TSimpleForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not Enter2Tab then
    exit;
    
  case Key of
    vk_return: begin
      if not (ActiveControl is TCustomGrid) and
        (not (ActiveControl is TdxDBGrid)) and
        (not (ActiveControl is TdxDBMemo)) then begin
        SelectNext(ActiveControl, True, True);
        Key := 0;
      end;
    end;
  end;
end;

procedure TSimpleForm.Guardar;
begin

end;

function TSimpleForm.Iif(const bool: Boolean; const val1,
  val2: string): string;
begin
  if bool then
    Result := val1
  else
    Result := val2;
end;

procedure TSimpleForm.Nuevo;
begin

end;

procedure TSimpleForm.Salir;
begin

end;

procedure TSimpleForm.FormCreate(Sender: TObject);
begin
  Modulo := '';
end;

procedure TSimpleForm.Imprimir(rpt: TppReport);
begin
  uutiles.ImprimirReporte(rpt);
end;

end.

unit uMantClassBco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, Grids, dxEditor, dxCntner, dxExEdtr,
  dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, ppReport,UUtiles,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Gradient;

type
  TMantClassBco = class(TForm)
    StyleController: TdxEditStyleController;
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
    procedure Imprimir(rpt:TppReport);

    function Iif(const bool: Boolean; const val1: string; const val2: string = ''): string;
    constructor Create(Aowner: TComponent); override;
  end;

var
  MantClassBco: TMantClassBco;

implementation

{$R *.dfm}

procedure TMantClassBco.Cancelar;
begin
  
end;

constructor TMantClassBco.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
  Enter2Tab := True;
end;

procedure TMantClassBco.Editar;
begin

end;

procedure TMantClassBco.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TMantClassBco.Guardar;
begin

end;

function TMantClassBco.Iif(const bool: Boolean; const val1,
  val2: string): string;
begin
  if bool then
    Result := val1
  else
    Result := val2;
end;

procedure TMantClassBco.Nuevo;
begin

end;

procedure TMantClassBco.Salir;
begin

end;

procedure TMantClassBco.FormCreate(Sender: TObject);
begin
  Modulo := '';
end;

procedure TMantClassBco.Imprimir(rpt: TppReport);
begin
  uutiles.ImprimirReporte(rpt);
end;

end.

unit uMantNotasFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, cxLookAndFeelPainters, DB, ADODB, StdCtrls,
  cxButtons, ImgList, ActnList, Wwdatsrc, Gradient, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, uMantClassRS,
  cxMemo;

type
  TMantNotasFacturas = class(TMantClassRS)
    rsNota: TADODataSet;
    Label2: TLabel;
    cxDBMemo1: TcxDBMemo;
    rsNotaidNota: TAutoIncField;
    rsNotaNota: TStringField;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    function Localizar(const id: Variant): Boolean; override;    
  end;

var
  MantNotasFacturas : TMantNotasFacturas;

implementation

uses Udata, uBusqueda;

{$R *.dfm}

procedure TMantNotasFacturas.FormCreate(Sender: TObject);
begin
  inherited;
  FormTitle := 'Notas de Facturas';
  spName := 'spfrNotasFacturas';
  Busqfield := 'idNota';
  TFBusqueda := TBusqueda;
end;

function TMantNotasFacturas.Localizar(const id: Variant): Boolean;
begin
  with rsNota do begin
    Close();
    Parameters[0].Value := id;
    Open();
    Result := not Eof;
  end;
end;

procedure TMantNotasFacturas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Enter2Tab := False;

  inherited;

end;

end.


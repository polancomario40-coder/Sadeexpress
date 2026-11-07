unit uMantTipoIngreso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, cxLookAndFeelPainters, DB, ADODB, StdCtrls,
  cxButtons, ImgList, ActnList, Wwdatsrc, Gradient, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, uMantClassRS,
  cxMemo;

type
  TMantTipoIngreso = class(TMantClassRS)
    rs: TADODataSet;
    Label1: TLabel;
    edCodigo: TcxDBTextEdit;
    Label2: TLabel;
    Label11: TLabel;
    edDescripcion: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    rsidTipo: TIntegerField;
    rsTipo: TStringField;
    rsComentario: TStringField;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function Localizar(const id: Variant): Boolean; override;
  public
    { Public declarations }
  end;

var
  MantTipoIngreso: TMantTipoIngreso;

implementation

uses Udata, uBusqueda;

{$R *.dfm}

procedure TMantTipoIngreso.FormCreate(Sender: TObject);
begin
  inherited;
  spName := 'svListaTipoIngreso';
  Busqfield := 'idTipo';
  TFBusqueda := TBusqueda;
end;

function TMantTipoIngreso.Localizar(const id: Variant): Boolean;
begin
  with rs do begin
    Close();
    Parameters[1].Value := id;
    Open();

    Result := not Eof;
  end;
end;

end.

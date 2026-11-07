unit uMantUbicaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, cxLookAndFeelPainters, DB, ADODB, StdCtrls,
  cxButtons, ImgList, ActnList, Wwdatsrc, Gradient, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, uMantClassRS;

type
  TMantUbicaciones = class(TMantClassRS)
    rsUbics: TADODataSet;
    rsUbicsidUbicacion: TAutoIncField;
    rsUbicsidUbicMadre: TIntegerField;
    rsUbicsDescripcion: TStringField;
    Label1: TLabel;
    edIdUbic: TcxDBTextEdit;
    Label2: TLabel;
    Label11: TLabel;
    luUbic: TcxDBLookupComboBox;
    edDescr: TcxDBTextEdit;
    rsMadres: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dsMadres: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    function Localizar(const id: Variant): Boolean; override;
  public
    { Public declarations }
  end;

var
  MantUbicaciones: TMantUbicaciones;

implementation

uses Udata, uBusqueda;

{$R *.dfm}

procedure TMantUbicaciones.FormCreate(Sender: TObject);
begin
  inherited;
  rsMadres.Open();

  FormTitle := 'Registro de Ubicaciones';
  spName := 'afListaUbicaciones';
  Busqfield := 'idUbicacion';
  TFBusqueda := TBusqueda;   
end;

function TMantUbicaciones.Localizar(const id: Variant): Boolean;
begin
  with rsUbics do begin
    Close();
    Parameters[0].Value := id;
    Open();
    Result := not Eof;
  end;
end;

procedure TMantUbicaciones.ANuevoExecute(Sender: TObject);
begin
  rsMadres.Close;
  rsMadres.Open;
  inherited;

end;

end.

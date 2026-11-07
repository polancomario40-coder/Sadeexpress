unit uMantAdiciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, ADODB, ImgList, ActnList, Wwdatsrc, Gradient,
  cxLookAndFeelPainters, cxSpinEdit, cxDBEdit, StdCtrls, cxButtons,
  cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxMemo, cxControls,
  cxContainer, cxEdit, cxTextEdit, DBActns, DateUtils;

type
  TMantAdiciones = class(TMantClass)
    rsAdiciones: TADODataSet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    edIdActivo: TcxDBTextEdit;
    mmDescr: TcxDBMemo;
    deAdq: TcxDBDateEdit;
    edRef: TcxDBTextEdit;
    edValor: TcxDBCurrencyEdit;
    edValRes: TcxDBCurrencyEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    Label4: TLabel;
    deAct: TcxDBDateEdit;
    spVida: TcxDBSpinEdit;
    Label5: TLabel;
    Label10: TLabel;
    edSerie: TcxDBTextEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton8: TcxButton;
    rsAdicionesidAdicion: TAutoIncField;
    rsAdicionesDescripcion: TStringField;
    rsAdicionesidActivo: TIntegerField;
    rsAdicionesFecha: TDateTimeField;
    rsAdicionesValor: TBCDField;
    rsAdicionesVidaUtil: TBCDField;
    rsAdicionesDocumentoAdq: TStringField;
    rsAdicionesFechaAdq: TDateTimeField;
    rsAdicionesReferencia: TStringField;
    rsAdicionesAutomatica: TBooleanField;
    rsAdicionesValorResidual: TBCDField;
    rsAdicionesStatus: TStringField;
    rsAdicionesFechaStatus: TDateTimeField;
    rsAdicionesNumeroSerie: TStringField;
    ANext: TDataSetPrior;
    APrior: TDataSetNext;
    rsAdicionesFechaActivacion: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure rsAdicionesNewRecord(DataSet: TDataSet);
    procedure rsAdicionesFechaActivacionValidate(Sender: TField);
  private
    { Private declarations }
  protected
    function Localizar(const id: Variant): Boolean; override;
  public
    { Public declarations }
  end;

var
  MantAdiciones: TMantAdiciones;

implementation

uses Udata, uformx;

{$R *.dfm}

procedure TMantAdiciones.FormCreate(Sender: TObject);
begin
  inherited;
  FormTitle := 'Registro de Adiciones a Activos';
end;

function TMantAdiciones.Localizar(const id: Variant): Boolean;
begin
//  Result := Inherited Localizar(id);
  with rsAdiciones do begin
    Close();
    Parameters[01].Value := id;
    Open();
    Result := not Eof;
  end;
end;

procedure TMantAdiciones.rsAdicionesNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsAdicionesStatus.Value := 'A';
  rsAdicionesFecha.Value := DateOf(Date());
  rsAdicionesFechaActivacion.Value := StartOfTheMonth(DateOf(Date()));
  rsAdicionesFechaStatus.Value := DateOf(Date());
  rsAdicionesidActivo.Value := XValue;
end;

procedure TMantAdiciones.rsAdicionesFechaActivacionValidate(
  Sender: TField);
begin
  inherited;
  if DayOf(rsAdicionesFechaActivacion.AsDateTime) <> 1 then
    raise Exception.Create('La fecha de activacion debe ser el primer dia del mes');
end;

end.

unit uBuscarCargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSearchClass, dxExEdtr, cxLookAndFeelPainters, DB, ADODB,
  dxCntner, cxTextEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxSpinEdit, StdCtrls, cxButtons,
  dxNavBarCollns, dxNavBarBase, ExtCtrls, dxNavBar, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, Buttons, Gradient;

type
  TfBuscarCargos = class(TSearchForm)
    rsRecsidDocumento: TIntegerField;
    rsRecsReferencia: TStringField;
    rsRecsFecha: TDateTimeField;
    rsRecsTotal: TBCDField;
    rsRecsTelefono1: TStringField;
    rsRecsNombre: TStringField;
    rsRecsRNC: TStringField;
    dxDBGrid1idDocumento: TdxDBGridMaskColumn;
    dxDBGrid1Referencia: TdxDBGridMaskColumn;
    dxDBGrid1Fecha: TdxDBGridDateColumn;
    dxDBGrid1Total: TdxDBGridCurrencyColumn;
    dxDBGrid1Telefono1: TdxDBGridMaskColumn;
    dxDBGrid1Nombre: TdxDBGridMaskColumn;
    dxDBGrid1RNC: TdxDBGridMaskColumn;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscarCargos: TfBuscarCargos;

implementation

uses uMAINDM, Udata;

{$R *.dfm}

procedure TfBuscarCargos.FormCreate(Sender: TObject);
begin
  inherited;
  idField := 'IdDocumento';
  RefField := 'Referencia';
  NameField := 's.Nombre';
  DateField := 'Fecha';
end;

end.

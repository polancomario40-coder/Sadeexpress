unit uBuscarSolicitudes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSearchClass, cxLookAndFeelPainters, dxExEdtr, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB, dxCntner, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxSpinEdit, StdCtrls, cxButtons, dxNavBarCollns, dxNavBarBase, ExtCtrls,
  dxNavBar, Gradient, Buttons;

type
  TBuscarSolicitudes = class(TSearchForm)
    rsRecsidSolicitud: TIntegerField;
    rsRecsNumero: TIntegerField;
    rsRecsFecha: TDateTimeField;
    rsRecsTotal: TBCDField;
    rsRecsNombre: TStringField;
    rsRecsRNC: TStringField;
    rsRecsTelefono1: TStringField;
    dxDBGrid1idSolicitud: TdxDBGridMaskColumn;
    dxDBGrid1Numero: TdxDBGridMaskColumn;
    dxDBGrid1Fecha: TdxDBGridDateColumn;
    dxDBGrid1Total: TdxDBGridCurrencyColumn;
    dxDBGrid1Nombre: TdxDBGridMaskColumn;
    dxDBGrid1RNC: TdxDBGridMaskColumn;
    dxDBGrid1Telefono1: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarSolicitudes: TBuscarSolicitudes;

implementation

uses uMAINDM, Udata;

{$R *.dfm}

procedure TBuscarSolicitudes.FormCreate(Sender: TObject);
begin
  inherited;
  idField := 'idSolicitud';
  NameField := 'e.Nombre';
  DateField := 'Fecha';
end;

end.

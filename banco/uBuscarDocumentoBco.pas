unit uBuscarDocumentoBco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSearchClass, cxLookAndFeelPainters, dxExEdtr, DB, ADODB,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, cxTextEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxMaskEdit, cxSpinEdit,
  StdCtrls, cxButtons, dxNavBarCollns, dxNavBarBase, ExtCtrls, dxNavBar,
  Gradient, Buttons, dxDBTLCl, dxGrClms;

type
  TBuscarDocumentos = class(TSearchForm)
    rsRecsidDocumento: TIntegerField;
    rsRecsReferencia: TStringField;
    rsRecsFecha: TDateTimeField;
    rsRecsTipoTransaccion: TStringField;
    rsRecsDebCre: TWordField;
    rsRecsNombre: TStringField;
    dxDBGrid1idDocumento: TdxDBGridMaskColumn;
    dxDBGrid1Referencia: TdxDBGridMaskColumn;
    dxDBGrid1Fecha: TdxDBGridDateColumn;
    dxDBGrid1TipoTransaccion: TdxDBGridMaskColumn;
    dxDBGrid1DebCre: TdxDBGridMaskColumn;
    dxDBGrid1Nombre: TdxDBGridMaskColumn;
    rsRecsConcepto: TStringField;
    dxDBGrid1Column7: TdxDBGridColumn;
    rsRecsGUIDDocumento: TGuidField;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarDocumentos: TBuscarDocumentos;

implementation

uses udmBancos, Udata;

{$R *.dfm}

procedure TBuscarDocumentos.FormCreate(Sender: TObject);
begin
  inherited;
  idField := 'GUIDDocumento';
  DateField := 'Fecha';
  NameField := 'Concepto';
  deDesde.Date := dmBanco.FechaDesde;
  deHasta.Date := dmBanco.FechaHasta;
end;

procedure TBuscarDocumentos.cxButton1Click(Sender: TObject);
begin
  inherited;
  dmBanco.FechaDesde := deDesde.Date;
  dmBanco.FechaHasta := deHasta.Date;
end;

end.

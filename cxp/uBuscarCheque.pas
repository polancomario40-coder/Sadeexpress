unit uBuscarCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSearchClass, cxLookAndFeelPainters, dxExEdtr, DB, ADODB,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, cxTextEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxMaskEdit, cxSpinEdit,
  StdCtrls, cxButtons, dxNavBarCollns, dxNavBarBase, ExtCtrls, dxNavBar,
  Gradient, Buttons, dxDBTLCl, dxGrClms;

type
  TBuscarCheques = class(TSearchForm)
    nbgDoc: TdxNavBarGroup;
    nbgDocControl: TdxNavBarGroupControl;
    Label6: TLabel;
    edDoc: TcxTextEdit;
    rsRecsidDocumento: TIntegerField;
    rsRecsReferencia: TStringField;
    rsRecsFecha: TDateTimeField;
    rsRecsTotal: TBCDField;
    rsRecsTelefono1: TStringField;
    rsRecsNombre: TStringField;
    rsRecsRNC: TStringField;
    rsRecsDocXPagar: TIntegerField;
    rsRecsRefDoc: TStringField;
    rsRecsFechaDoc: TDateTimeField;
    dxDBGrid1idDocumento: TdxDBGridMaskColumn;
    dxDBGrid1Referencia: TdxDBGridMaskColumn;
    dxDBGrid1Fecha: TdxDBGridDateColumn;
    dxDBGrid1Total: TdxDBGridCurrencyColumn;
    dxDBGrid1Telefono1: TdxDBGridMaskColumn;
    dxDBGrid1Nombre: TdxDBGridMaskColumn;
    dxDBGrid1RNC: TdxDBGridMaskColumn;
    dxDBGrid1RefDoc: TdxDBGridMaskColumn;
    dxDBGrid1FechaDoc: TdxDBGridDateColumn;
    cxButton4: TcxButton;
    procedure cxButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure PrepararSQLDoc;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarCheques: TBuscarCheques;

implementation

uses Udata;

{$R *.dfm}

procedure TBuscarCheques.PrepararSQLDoc;
var
 doc: string;
 sWhere: string;
 SQLDOCUMENTOS: string;
begin
  SQLDOCUMENTOS := 'select	d.idDocumento, ' +
                         'd.Referencia, ' +
                         'd.Fecha, ' +
                         'd.Total, ' +
                         's.Telefono1, ' +
                         's.Nombre, ' +
                         's.RNC, ' +
                         'dp.idDocumento as DocXPagar, ' +
                         'dp.Referencia as RefDoc, ' +
                         'dp.Fecha as FechaDoc ' +
                   'from cxpDocumentos d join cxpDocumentosDtl dd on d.idDocumento = dd.idDocumento  ' +
                   'join cxpDocumentos dp on dd.IdDocXPagar = dp.idDocumento ' +
                   'left join cxpSuplidores s on d.idSuplidor = s.idSuplidor ' +
                   'where d.idTrans = 20 ';

  doc := Trim(edDoc.Text);

  with rsRecs do begin
    Close();
    if doc <> '' then begin
       sWhere := ' and dp.Referencia = ' + QuotedStr(doc);

      sWhere := sWhere + #13 + ' order by d.Fecha';
      CommandText := SQLDOCUMENTOS + #13 + sWhere;
      try
        Open();
      except
        ShowMessage('Error buscando registros verifique que los numeros sean validos');
      end;
    end;
  end;
end;

procedure TBuscarCheques.cxButton4Click(Sender: TObject);
begin
  inherited;
  PrepararSQLDoc();
end;

procedure TBuscarCheques.FormCreate(Sender: TObject);
begin
  inherited;
  idField := 'idDocumento';
  NameField := 'Nombre';
  DateField := 'Fecha';
end;

end.

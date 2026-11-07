unit uGenDocumentoRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxButtonEdit, cxDBLookupComboBox, cxCurrencyEdit, cxImageComboBox,
  cxSpinEdit, cxCheckBox, cxMemo;

type
  TGenDocumentoRec = class(TFForm)
    rs: TADODataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Suplidor: TcxGridDBColumn;
    cxGrid1DBTableView1Concepto: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1Desde: TcxGridDBColumn;
    cxGrid1DBTableView1Hasta: TcxGridDBColumn;
    cxGrid1DBTableView1GenerarDia: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    rsHist: TADODataSet;
    dsHist: TwwDataSource;
    rsHistidDocumentoRecHist: TIntegerField;
    rsHistidDocumento: TGuidField;
    rsHistGuidDocumento: TGuidField;
    rsHistFecha: TDateTimeField;
    rsHistUsuario: TStringField;
    rsHistFechaGenerado: TDateTimeField;
    rsHistStatus: TStringField;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    rsHiststrGenerado: TStringField;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1DBColumn2: TcxGridDBColumn;
    Label1: TLabel;
    deFecha: TcxDateEdit;
    cxButton1: TcxButton;
    rsBuscarHist: TADODataSet;
    rsBuscarHistidDocumentoRecHist: TIntegerField;
    rsBuscarHistidDocumento: TGuidField;
    rsBuscarHistGuidDocumento: TGuidField;
    rsBuscarHistFecha: TDateTimeField;
    rsBuscarHistUsuario: TStringField;
    rsBuscarHistFechaGenerado: TDateTimeField;
    rsBuscarHistStatus: TStringField;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cGenDoc: TADOCommand;
    cBorrarGen: TADOCommand;
    rsHistidDocumentoGenerado: TIntegerField;
    cbTodos: TcxCheckBox;
    rsiddocumento: TGuidField;
    rsidSuplidor: TIntegerField;
    rsSuplidor: TStringField;
    rsValor: TBCDField;
    rsidMoneda: TIntegerField;
    rsMoneda: TStringField;
    rsConcepto: TStringField;
    rsReferencia: TStringField;
    rsGenerarDia: TIntegerField;
    rsDesde: TDateTimeField;
    rsHasta: TDateTimeField;
    deHoy: TcxDateEdit;
    Label2: TLabel;
    edNCF: TcxTextEdit;
    Label3: TLabel;
    mConcepto: TcxMemo;
    procedure rsHistCalcFields(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure rsAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cbTodosPropertiesChange(Sender: TObject);
    function BuildConcepto(const fec:TDateTime; const conc: string): string;
  private
    procedure AbrirHistorial;
    function BuscarHistoria(const id: Variant;
      const fec: TDateTime): Boolean;
    function GenerarDocumento(const id: Variant;
      const fec: TDateTime; const ncf: string; const conc: string): Boolean;
    function AbrirDocumentosRec(const fec: TDateTime;
      const todos: Boolean): Integer;
    { Private declarations }
  public
    { Public declarations }
    class procedure MostrarDocumentosRecurrentes;
  end;

var
  GenDocumentoRec: TGenDocumentoRec;

implementation

uses Udata, UUtiles, uMantDocumentos, StrUtils;

{$R *.dfm}

procedure TGenDocumentoRec.rsHistCalcFields(DataSet: TDataSet);
begin
  inherited;
  rsHiststrGenerado.Value := 'Generado el ' + FormatdateTime('dd/mm/yyyy @ hh:nn',rsHistFechaGenerado.Value) +
                             ' por ' + rsHistUsuario.Value;
end;

procedure TGenDocumentoRec.cxButton1Click(Sender: TObject);
begin
  inherited;

  if BuscarHistoria(rsidDocumento.Value, deFecha.Date) then begin
    if not Confirmar('Este documento se ha generado ya para esta fecha, desea hacerlo otra vez ?' +
                 #13 + 'El documento anterior sera reemplazado' ) then
      Exit;
  end;
  if edNCF.Text = '' then begin
    if Confirmar('No ha escrito un NCF para este documento, desea generarlo de todas formas?') then
      GenerarDocumento(rsidDocumento.Value, deFecha.Date, edNCF.Text, mConcepto.Text);
  end;
end;

function TGenDocumentoRec.BuscarHistoria(const id: Variant; const fec: TDateTime): Boolean;
begin
  with rsBuscarHist do begin
    Close();
    Parameters[1].Value := rsIdDocumento.Value;
    parameters[2].Value := deFecha.Date;
    Open();
    Result := not Eof;
  end;
end;

function TGenDocumentoRec.GenerarDocumento(const id: Variant; const fec: TDateTime; const ncf: string; const conc: string): Boolean;
begin
  with cGenDoc do begin
    Parameters[1].Value := rsIdDocumento.Value;
    parameters[2].Value := deFecha.Date;
    Parameters[3].Value := dm.UsuarioActual;
    Parameters[4].Value := ncf;
    Parameters[5].Value := conc;
    Execute();
  end;
  AbrirHistorial();
  Result := True;
end;

procedure TGenDocumentoRec.AbrirHistorial;
begin
  with rsHist do begin
    Close();
    if rs.Active and (not rsIdDocumento.IsNull) then begin
      Parameters[1].Value := rsIdDocumento.Value;
      Open();
    end;
  end;
end;

procedure TGenDocumentoRec.rsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AbrirHistorial();
  mConcepto.Text := rsConcepto.Value;
  edNCF.Text := '';
end;

procedure TGenDocumentoRec.FormCreate(Sender: TObject);
begin
  inherited;
  deFecha.Date := dm.DBFecha;
  deHoy.Date := deFecha.Date;

  cbTodosPropertiesChange(nil);
end;

procedure TGenDocumentoRec.cxButton3Click(Sender: TObject);
begin
  inherited;
  if dm.Cierre() >= rsHistFecha.Value then
    raise Exception.Create('La fecha de este documento ya esta cerrada, no puede borrarlo');

  if Confirmar('Esta seguro de eliminar este documento?') then begin
    with cBorrarGen do begin
      Parameters[1].Value := rsHistidDocumento.Value;
      Parameters[2].Value := rsHistFecha.Value;
      Parameters[3].Value := dm.UsuarioActual;
      Execute();
    end;
    AbrirHistorial();
  end;
end;

procedure TGenDocumentoRec.cxButton2Click(Sender: TObject);
begin
  inherited;
  ModalShow(TfMantDocumentos,ShowFind,rsHistidDocumentoGenerado.AsInteger,'idDocumento',True);
end;

function TGenDocumentoRec.AbrirDocumentosRec(const fec: TDateTime; const todos: Boolean): Integer;
begin
  with rs do begin
    Close();
    Parameters[1].Value := fec;
    Parameters[2].Value := todos;
    Open();

    Result := RecordCount;
  end;
end;

procedure TGenDocumentoRec.cbTodosPropertiesChange(Sender: TObject);
begin
  inherited;
  AbrirDocumentosRec(deHoy.Date, not cbTodos.Checked);
end;

class procedure TGenDocumentoRec.MostrarDocumentosRecurrentes;
var
  i: Integer;
begin
  with TGenDocumentoRec.Create(Application) do begin
    i := rs.RecordCount;
    if i > 0 then begin
      if Confirmar(Format('Hay %d documentos recurrentes pendientes de generar,' + #13 +
                          'quiere hacerlo ahora?',[i])) then
        ShowModal();
    end;

    Release();
  end;
end;

function TGenDocumentoRec.BuildConcepto(const fec: TDateTime;
  const conc: string): string;
begin
  Result := AnsiReplaceStr(Conc,'<FECHA>',FormatDateTime('dd/mm/yyyy',fec));
  Result := AnsiReplaceStr(Result,'<MES>',FormatDateTime('mmmmm',fec));
end;

end.

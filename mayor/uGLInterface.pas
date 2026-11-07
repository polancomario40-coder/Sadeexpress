unit uGLInterface;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, wwdbdatetimepicker, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxExEdtr, cxControls, dateutils,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfGLInterface = class(TForm)
    rsGenEntradas: TADODataSet;
    rsGenEntradasNumEntrada: TStringField;
    rsGenEntradasDescripcion: TStringField;
    rsGenEntradasConcepto: TStringField;
    rsGenEntradasTipoEntrada: TStringField;
    EDSource: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1NumEntrada: TdxDBGridMaskColumn;
    dxDBGrid1Descripcion: TdxDBGridMaskColumn;
    dxDBGrid1Concepto: TdxDBGridMemoColumn;
    dxDBGrid1TipoEntrada: TdxDBGridMaskColumn;
    dxDBGrid1sprocNomb: TdxDBGridMaskColumn;
    dtDesde: TcxDateEdit;
    dtHasta: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    cmdSproc: TADOCommand;
    cmdImportED: TADOCommand;
    rsGenEntradassprocNomb: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure GenerarEntrada;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGLInterface: TfGLInterface;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TfGLInterface.GenerarEntrada;
var
  SQLExec: string;
  fec: TDateTime;
begin
  fec := dtDesde.Date;
  while fec <= dtHasta.Date do begin
    SQLExec := Format('exec %s ''%s'', ''%s''',
                    [rsGenEntradassprocNomb.AsString,
                     FormatDateTime('mm/dd/yyyy',fec),
                     FormatDateTime('mm/dd/yyyy',fec)]);
    dm.Coneccion.Execute(SQLExec);
    IncDay(fec);
  end;
{  with cmdSproc do begin
    CommandText := rsGenEntradassprocNomb.AsString;
    Parameters[1].Value := int(dtDesde.Date);
    Parameters[2].Value := int(dtHasta.Date);
    Execute();
  end;
}
  with cmdImportED do begin
    Parameters[1].Value := rsGenEntradasNumEntrada.AsString;
    Parameters[2].Value := int(dtHasta.Date);
    Execute();
  end;
end;

procedure TfGLInterface.BitBtn1Click(Sender: TObject);
begin
  GenerarEntrada();
end;

procedure TfGLInterface.FormCreate(Sender: TObject);
begin
  rsGenEntradas.Open();
end;

end.

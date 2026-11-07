unit uClasificacionTipoAnulacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, Gradient, ADODB, cxDBLookupComboBox, Mask, DBCtrls,
  cxExportGrid4Link;

type
  TClasificacionTipoAnulacion = class(TFForm)
    Gradient2: TGradient;
    Label2: TLabel;
    Gradient1: TGradient;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsTipoAnulacion: TDataSource;
    bSalir: TcxButton;
    cxButton1: TcxButton;
    Label4: TLabel;
    dtpDesde: TcxDateEdit;
    Gradient4: TGradient;
    Label1: TLabel;
    dtpHasta: TcxDateEdit;
    spTipoAnulacion: TADOStoredProc;
    spTipoAnulacionId: TGuidField;
    spTipoAnulacionCodigo: TStringField;
    spTipoAnulacionTipo: TStringField;
    spFacturasCanceladas: TADOStoredProc;
    spFacturasCanceladasId: TGuidField;
    spFacturasCanceladasFactura: TStringField;
    spFacturasCanceladasFecha: TDateTimeField;
    spFacturasCanceladasReferencia: TStringField;
    spFacturasCanceladasCompFiscal: TStringField;
    spFacturasCanceladasTipoAnulacion: TStringField;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Factura: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1CompFiscal: TcxGridDBColumn;
    cxGrid1DBTableView1TipoAnulacion: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    spToDgiiNCFAnulados: TADOStoredProc;
    spToDgiiNCFAnuladosCadena: TStringField;
    Save: TSaveDialog;
    OpenFile: TOpenDialog;
    cxButton4: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClasificacionTipoAnulacion: TClasificacionTipoAnulacion;

implementation

uses Udata, uTipoAnulaciones;

{$R *.dfm}

procedure TClasificacionTipoAnulacion.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spFacturasCanceladas, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;

    Open();
  End;
end;

procedure TClasificacionTipoAnulacion.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date;
  dtpHasta.Date := Date;

  spTipoAnulacion.Open();
end;

procedure TClasificacionTipoAnulacion.bSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TClasificacionTipoAnulacion.cxGrid1DBTableView1DblClick(
  Sender: TObject);
Var
  Resultado : String;
begin
  inherited;
  If Not spFacturasCanceladas.IsEmpty Then
  Begin
    Resultado := ShowTipoAnulacion;
    If Resultado <> '-1' Then
    Begin
      spFacturasCanceladas.Edit;
      spFacturasCanceladasTipoAnulacion.Value := Resultado;
      spFacturasCanceladas.Post;
    End;
  End;
end;

procedure TClasificacionTipoAnulacion.cxButton2Click(Sender: TObject);
Var
  Archivo : TextFile;
begin
  inherited;
  With spToDgiiNCFAnulados, Parameters Do
  Begin
    If Save.Execute Then
    Begin
      Close;
      ParamByName('@Desde').Value := dtpDesde.Date;
      ParamByName('@Hasta').Value := dtpHasta.Date;

      Open;

      First;
      AssignFile(Archivo, Save.FileName);

      ReWrite(Archivo);
      While Not Eof Do
      Begin
        Write(Archivo, spToDgiiNCFAnuladosCadena.AsString + #13 + #10);

        Next;
      End;
      Close;
      CloseFile(Archivo);
    End;
  End;
end;

procedure TClasificacionTipoAnulacion.cxButton4Click(Sender: TObject);
begin
  inherited;
    if openfile.execute then ExportGrid4ToExcel(openfile.filename, cxGrid1);
end;

end.

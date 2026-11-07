unit uArchivo6082018;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,cxExportGrid4Link,
  cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, Gradient, ADODB, cxDBLookupComboBox, Mask, DBCtrls, cxLookAndFeels, Menus;

type
  TArchivo6082018 = class(TFForm)
    Gradient2: TGradient;
    Label2: TLabel;
    Gradient1: TGradient;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    bSalir: TcxButton;
    cxButton1: TcxButton;
    Label4: TLabel;
    dtpDesde: TcxDateEdit;
    Label1: TLabel;
    dtpHasta: TcxDateEdit;
    Save: TSaveDialog;
    cxGrid1DBTableView1IdFactura: TcxGridDBColumn;
    cxGrid1DBTableView1Factura: TcxGridDBColumn;
    cxGrid1DBTableView1TipoIdentificacion: TcxGridDBColumn;
    cxGrid1DBTableView1ClienteRNC: TcxGridDBColumn;
    cxGrid1DBTableView1CompFiscal: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Subtotal: TcxGridDBColumn;
    OpenFile: TOpenDialog;
    cxButton4: TcxButton;
    rs: TADODataSet;
    rsIdFactura: TGuidField;
    rsFactura: TStringField;
    rsClienteRNC: TStringField;
    rsIdTipoIdentificacion: TStringField;
    rsTipoIdentificacion: TStringField;
    rsCompFiscal: TStringField;
    rsFecha: TDateTimeField;
    rsTotal: TBCDField;
    rsTipoAnulacion: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Archivo6082018: TArchivo6082018;

implementation

uses Udata, Math, UUtiles, uFactura;

{$R *.dfm}

procedure TArchivo6082018.cxButton1Click(Sender: TObject);
begin
  inherited;
  With rs Do
  Begin
    Close();
    Parameters[1].Value := dtpDesde.Date;
    Parameters[2].Value := dtpHasta.Date;
    Open();
  End;
end;

procedure TArchivo6082018.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date;
  dtpHasta.Date := Date;
end;

procedure TArchivo6082018.bSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TArchivo6082018.cxButton2Click(Sender: TObject);
Var
  Archivo : TStringList;
  rnc: string;
begin
  inherited;
  if not Save.Execute() then
   Exit;

  rnc := StringReplace(dm.ConfiguracionRNC.Value,'-','', [rfReplaceAll]);

  Archivo := TStringList.Create();
  Archivo.Add('608' + '|' + rnc + '|' + FormatDateTime('YYYYMM',dtpHasta.Date) +'|' + FormatFloat('#######0', rs.RecordCount));

  with rs do begin
      First();
      while not Eof do begin
        Archivo.Add(rsCompFiscal.Value + '|' + FormatDateTime('YYYYMMDD',rsFecha.Value) + '|' + rsTipoAnulacion.Value);
        Next();
      end;
  end;

  Archivo.SaveToFile(Save.FileName);
end;

procedure TArchivo6082018.cxButton4Click(Sender: TObject);
begin
  inherited;
  if openfile.execute() then
    ExportGrid4ToExcel(openfile.filename, cxGrid1);
end;

procedure TArchivo6082018.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalShow(TFactura, ShowFind, rsidFactura.Value,'idFactura',True);
end;

end.

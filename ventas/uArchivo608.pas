unit uArchivo608;

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
  TArchivo608 = class(TFForm)
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
    spFacturas: TADOStoredProc;
    spToDgiiVentas: TADOStoredProc;
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
    spToDgiiVentasCadena: TStringField;
    spFacturasIdFactura: TGuidField;
    spFacturasFactura: TStringField;
    spFacturasClienteRNC: TStringField;
    spFacturasTipoIdentificacion: TStringField;
    spFacturasCompFiscal: TStringField;
    spFacturasFecha: TDateTimeField;
    spFacturasTotal: TBCDField;
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
  Archivo608: TArchivo608;

implementation

uses Udata, Math, UUtiles, uFactura;

{$R *.dfm}

procedure TArchivo608.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spFacturas, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;

    Open();
  End;
end;

procedure TArchivo608.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date;
  dtpHasta.Date := Date;
end;

procedure TArchivo608.bSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TArchivo608.cxButton2Click(Sender: TObject);
Var
  Archivo : TextFile;
begin
  inherited;
  With spToDgiiVentas, Parameters Do
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
        Write(Archivo, spToDgiiVentasCadena.AsString + #13 + #10);

        Next;
      End;
      Close;
      CloseFile(Archivo);
    End;
  End;
end;

procedure TArchivo608.cxButton4Click(Sender: TObject);
begin
  inherited;
  if openfile.execute() then
    ExportGrid4ToExcel(openfile.filename, cxGrid1);
end;

procedure TArchivo608.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalShow(TFactura, ShowFind, spFacturasidFactura.Value,'idFactura',True);
end;

end.

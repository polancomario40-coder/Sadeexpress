unit uToDgiiNcfVentas;

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
  TToDgiiNcfVentas = class(TFForm)
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
    spFacturasIdFactura: TGuidField;
    spFacturasFactura: TStringField;
    spFacturasClienteRNC: TStringField;
    spFacturasCompFiscal: TStringField;
    spFacturasFecha: TDateTimeField;
    spFacturasItbis: TBCDField;
    spFacturasSubtotal: TBCDField;
    spToDgiiVentasCadena: TStringField;
    spFacturasTipoIdentificacion: TStringField;
    cxGrid1DBTableView1IdFactura: TcxGridDBColumn;
    cxGrid1DBTableView1Factura: TcxGridDBColumn;
    cxGrid1DBTableView1TipoIdentificacion: TcxGridDBColumn;
    cxGrid1DBTableView1ClienteRNC: TcxGridDBColumn;
    cxGrid1DBTableView1CompFiscal: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Itbis: TcxGridDBColumn;
    cxGrid1DBTableView1Subtotal: TcxGridDBColumn;
    OpenFile: TOpenDialog;
    cxButton4: TcxButton;
    fixRNCButtons: TcxButton;
    cFixRNC: TADOCommand;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure fixRNCButtonsClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ToDgiiNcfVentas: TToDgiiNcfVentas;

implementation

uses Udata, Math, UUtiles, uFactura;

{$R *.dfm}

procedure TToDgiiNcfVentas.cxButton1Click(Sender: TObject);
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

procedure TToDgiiNcfVentas.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date;
  dtpHasta.Date := Date;
  fixRNCButtons.Visible := (dm.Tienepermiso(pAprobar,Permisos));
  

end;

procedure TToDgiiNcfVentas.bSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TToDgiiNcfVentas.cxButton2Click(Sender: TObject);
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

procedure TToDgiiNcfVentas.cxButton4Click(Sender: TObject);
begin
  inherited;
    if openfile.execute then ExportGrid4ToExcel(openfile.filename, cxGrid1);
end;

procedure TToDgiiNcfVentas.fixRNCButtonsClick(Sender: TObject);
var
  str: String;
  cleaned: string;
  id: Variant;
begin
  inherited;
  str := spFacturasClienteRNC.Value;
  id := spFacturasIdfactura.Value;

  if InputQuery('Corregir factura', 'RNC/Cedula',str) then begin
     cleaned := StringReplace(str,'-','',[rfReplaceAll]);
     if (length(cleaned) <> 9) and (length(cleaned) <> 11) then
       raise Exception.Create('Cantidad de caracteres invalidos');

     cFixRNC.Parameters[0].Value := str;
     cFixRNC.Parameters[1].Value := spFacturasIdFactura.Value;
     cFixRNC.Execute();
  end;
  spFacturas.Requery();
  spFacturas.Locate('idFactura',id,[]);
end;

procedure TToDgiiNcfVentas.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalShow(TFactura, ShowFind, spFacturasidFactura.Value,'idFactura',True);
end;

end.

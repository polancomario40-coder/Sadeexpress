unit uToDgiiNcfVentas2018;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,DateUtils,
   cxCalc, cxButtonEdit, ADODB, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, Gradient, cxExportGrid4Link;

type
  TToDgiiNcfVentas2018 = class(TFForm)
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
    cxGrid1DBTableView1Itbis: TcxGridDBColumn;
    cxGrid1DBTableView1Subtotal: TcxGridDBColumn;
    cxButton4: TcxButton;
    fixRNCButtons: TcxButton;
    cFixRNC: TADOCommand;
    rs: TADODataSet;
    rsidFactura: TGuidField;
    rsFactura: TStringField;
    rsClienteRNC: TStringField;
    rsCompFiscal: TStringField;
    rsCompFiscalModificado: TStringField;
    rsFecha: TDateTimeField;
    rsItbis: TBCDField;
    rsMontoFacturado: TFloatField;
    rsidTipoIngreso: TIntegerField;
    rsTipoIngreso: TStringField;
    rsFechaRetencion: TDateTimeField;
    rsItbisRetenido: TBCDField;
    rsISRRetenido: TBCDField;
    rsItbisPercibido: TBCDField;
    rsISRPercibido: TBCDField;
    rsImpSelectivo: TBCDField;
    rsOtrosImpuestos: TBCDField;
    rsEfectivo: TBCDField;
    rsCheque: TBCDField;
    rsTarjetas: TBCDField;
    rsOtrasFormasPago: TBCDField;
    rsMontoCredito: TBCDField;
    rsPermuta: TBCDField;
    rsPropina: TBCDField;
    rsBonos: TBCDField;
    SaveXls: TSaveDialog;
    rsTipoDoc: TStringField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    rsResumen: TADODataSet;
    rsResumenid: TIntegerField;
    rsResumenConcepto: TStringField;
    rsResumenValor: TStringField;
    dsRes: TwwDataSource;
    cxGridDBTableView1Concepto: TcxGridDBColumn;
    cxGridDBTableView1Valor: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure fixRNCButtonsClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    procedure AbrirDatos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ToDgiiNcfVentas2018: TToDgiiNcfVentas2018;

implementation

uses Udata, Math, UUtiles, uFactura, uCXC;

{$R *.dfm}

procedure TToDgiiNcfVentas2018.cxButton1Click(Sender: TObject);
begin
  inherited;
  AbrirDatos();
end;

procedure TToDgiiNcfVentas2018.AbrirDatos();
begin
  try
    With rs, Parameters Do
    Begin
      Close();
      ParamByName('@Desde').Value := dtpDesde.Date;
      ParamByName('@Hasta').Value := dtpHasta.Date;
      Open();
    End;
    with rsResumen do begin
      Close();
      Parameters[1].Value := dtpDesde.Date;
      Parameters[2].Value := dtpHasta.Date;
      Open();
    end;
  finally
    //ShowMessage(Format('%d records cargados',[spFacturas.RecordCount]));
  end;
end;

procedure TToDgiiNcfVentas2018.FormCreate(Sender: TObject);
begin
  inherited;
  dtpHasta.Date := DateOf(IncDay(StartOfTheMonth(Date()), -1));
  dtpDesde.Date := StartOfTheMonth(dtpHasta.Date);
  fixRNCButtons.Visible := (dm.Tienepermiso(pAprobar,Permisos));
end;

procedure TToDgiiNcfVentas2018.bSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TToDgiiNcfVentas2018.cxButton2Click(Sender: TObject);
Var
  sb: TStringList;
  rnc: string;
  ti,fr: string;
begin
  inherited;
  if Save.FileName = '' then
    Save.FileName := '607' + FormatDateTime('yyyymm', dtpHasta.Date) + '.txt';
    
  if not Save.Execute then
    Exit;

  if rs.IsEmpty then
    Exit;

  rnc := Trim(StringReplace(dm.ConfiguracionRNC.Value,'-','', [rfReplaceAll]));
  sb := TStringList.Create();
  sb.Add(Format('607|%s|%s|%d',[rnc,FormatDateTime('yyyymm',dtpHasta.Date),rs.RecordCount]));

  with rs do begin
    DisableControls();
    try
      First();
      while not Eof do begin
        if Length(rsClienteRNC.Value) = 9 then
          ti := '1'
        else if Length(rsClienteRNC.Value) = 11 then
          ti := '2'
        else
          ti := '3';
        if rsFechaRetencion.IsNull then
          fr := ''
        else
          fr := FormatDateTime('yyyymmdd', rsFechaRetencion.Value);

        sb.Add(rsClienteRNC.Value + '|' +
               ti + '|' +
               rsCompFiscal.Value + '|' +
               rsCompFiscalModificado.AsString + '|' +
               rsidTipoIngreso.AsString + '|' +
               FormatDateTime('yyyymmdd', rsFecha.Value) + '|' +
               fr + '|' +
               rsMontoFacturado.AsString + '|' +
               rsItbis.AsString + '|' +
               rsItbisRetenido.AsString + '|' +
               rsItbisPercibido.Asstring + '|' +
               rsISRRetenido.AsString + '|' +
               rsISRPercibido.AsString + '|' +
               rsImpSelectivo.AsString + '|' +
               rsOtrosImpuestos.AsString + '|' +
               rsPropina.AsString  + '|' +
               rsEfectivo.AsString  + '|' +
               rsCheque.AsString + '|' +
               rsTarjetas.AsString + '|' +
               rsMontoCredito.AsString + '|' +
               rsBonos.AsString + '|' +
               rsPermuta.AsString + '|' +
               rsOtrasFormasPago.AsString);
        Next();
      end;

    sb.SaveToFile(Save.FileName);
    finally
      rs.EnableControls();
    end;
  end;
end;

procedure TToDgiiNcfVentas2018.cxButton4Click(Sender: TObject);
begin
  inherited;
  save.FileName := '607' + FormatDateTime('yyyymm', dtpHasta.Date) + '.xls';

    if saveXls.execute then ExportGrid4ToExcel(savexls.filename, cxGrid1);
end;

procedure TToDgiiNcfVentas2018.fixRNCButtonsClick(Sender: TObject);
var
  str: String;
  cleaned: string;
  len: Integer;
  id: Variant;
begin
  inherited;
  str := rsClienteRNC.Value;
  id := rsIdfactura.Value;

  if InputQuery('Corregir factura', 'RNC/Cedula',str) then begin
     cleaned := Trim(StringReplace(str,'-','',[rfReplaceAll]));
     len := length(cleaned);
     if (len > 0) and (len <> 9) and (len <> 11) then
       raise Exception.Create('Cantidad de caracteres invalidos');

     cFixRNC.Parameters[0].Value := cleaned;
     cFixRNC.Parameters[1].Value := id;
     cFixRNC.Execute();
  end;
  AbrirDatos();
  rs.Locate('idFactura',id,[]);
end;

procedure TToDgiiNcfVentas2018.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if rsTipoDoc.Value = 'FT' then
    ModalShow(TFactura, ShowFind, rsIdFactura.Value,'idFactura',True)
  else
    ModalShow(TCXC, ShowFind, rsIdFactura.Value,'idCXC',True)
end;

end.

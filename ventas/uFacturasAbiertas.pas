unit uFacturasAbiertas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, StdCtrls, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCalendar, cxTimeEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ADODB, cxLookAndFeelPainters, cxButtons, cxCurrencyEdit, ImgList,
  ActnList, Wwdatsrc, Gradient, uform;

type
  TFacturasAbiertas = class(TFForm)
    rs: TADODataSet;
    Timer: TTimer;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxButton1: TcxButton;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1Numero: TcxGridDBColumn;
    GridDBTableView1Nombre: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1Hora: TcxGridDBColumn;
    GridDBTableView1idCliente: TcxGridDBColumn;
    GridDBTableView1GranTotal: TcxGridDBColumn;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    cxButton2: TcxButton;
    rsidFactura: TGuidField;
    rsFactura: TStringField;
    rsFecha: TDateTimeField;
    rsHora: TDateTimeField;
    rsIdCliente: TIntegerField;
    rsCliente: TStringField;
    rsUsuario: TStringField;
    rsTotal: TBCDField;
    cMarcarFact: TADOCommand;
    rsFacturaCobro: TADODataSet;
    rsFacturaCobroidFactura: TGuidField;
    rsFacturaCobroTotal: TBCDField;
    rsFacturaCobroPagadoCon: TBCDField;
    rsFacturaCobroEfectivo: TBCDField;
    rsFacturaCobroTarjeta: TBCDField;
    rsFacturaCobroCheque: TBCDField;
    rsFacturaCobroOtros: TBCDField;
    rsFacturaCobroNota: TStringField;
    cRenumerarFactura: TADOCommand;
    procedure cxButton2Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure GridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure AbrirDatos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FacturasAbiertas: TFacturasAbiertas;

implementation

uses Udata, uFacturaCobro, UUtiles, uFactura;

{$R *.dfm}

procedure TFacturasAbiertas.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TFacturasAbiertas.TimerTimer(Sender: TObject);
begin
  inherited;
  AbrirDatos();
end;

procedure TFacturasAbiertas.AbrirDatos;
var
  idf: Variant;
begin
  idf := NULL;
  Timer.Enabled := False;
  rs.DisableControls();
  try
    if rs.Active and (not rs.IsEmpty) then 
      idf := rsIdFactura.Value;
    rs.Close();
    rs.Open();
    if idf <> NULL then
      rs.Locate('idFactura',idf,[]);
  finally
    rs.EnableControls();
    Timer.Enabled := True;
  end;
end;

procedure TFacturasAbiertas.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirDatos();
end;

procedure TFacturasAbiertas.cxButton1Click(Sender: TObject);
begin
  inherited;
  Timer.Enabled := False;
  try
    if (rs.Active) and (not rsIdFactura.IsNull) then
      if getPago(rsidFactura.asstring, rsTotal.Value) then begin
        cMarcarFact.Parameters[1].Value := rsIdFactura.Value;
        cMarcarFact.Execute();

        with rsFacturaCobro do begin
          Close();
          Parameters[1].Value := rsIdFactura.Value;
          Open();
        end;
        if rsFacturaCobroEfectivo.value < rsFacturaCobroTotal.Value then begin
          cRenumerarfactura.Parameters[1].Value := rsIdFactura.Value;
          cRenumerarFactura.Execute();

          if (cRenumerarFactura.Parameters[2].Value <> rsFactura.Value) then begin
            ModalShow(TFactura,showPrint,rsidFactura.Value,'idFactura',True);
          end;
        end;
      end;
    AbrirDatos();
  finally
    Timer.Enabled := True;
  end;
  Grid.SetFocus();
end;

procedure TFacturasAbiertas.GridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  AHandled := true;
  cxButton1.Click();
end;

procedure TFacturasAbiertas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_ADD then begin
    Key := 0;
    rs.Next();
  end;

  if key = vk_SUBTRACT then begin
    Key := 0;
    rs.Prior();
  end; 
end;

end.

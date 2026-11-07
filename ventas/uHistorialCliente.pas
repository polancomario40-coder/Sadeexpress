unit uHistorialCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxExportGrid4Link,
  cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxButtonEdit, Wwdatsrc,
  ADODB, cxCalendar, cxCalc, cxDropDownEdit;

type
  THistorialCliente = class(TFForm)
    beCodigo: TcxButtonEdit;
    edProducto: TcxTextEdit;
    cxButton1: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Label1: TLabel;
    rs: TADODataSet;
    rsClienteAct: TADODataSet;
    sd: TSaveDialog;
    rsID: TGuidField;
    rsDocumento: TStringField;
    rsFecha: TDateTimeField;
    rsTipo: TStringField;
    rsConcepto: TStringField;
    rsValor: TBCDField;
    rsTasa: TBCDField;
    rsValorRD: TBCDField;
    cxGridDBTableView2Documento: TcxGridDBColumn;
    cxGridDBTableView2Fecha: TcxGridDBColumn;
    cxGridDBTableView2Tipo: TcxGridDBColumn;
    cxGridDBTableView2Concepto: TcxGridDBColumn;
    cxGridDBTableView2Valor: TcxGridDBColumn;
    cxGridDBTableView2Tasa: TcxGridDBColumn;
    cxGridDBTableView2ValorRD: TcxGridDBColumn;
    rsClienteActidCliente: TIntegerField;
    rsClienteActCliente: TStringField;
    rsClienteActContacto: TStringField;
    rsClienteActLimiteCredito: TBCDField;
    rsClienteActActivo: TBooleanField;
    rsClienteActidEmpleado: TIntegerField;
    rsClienteActDireccion: TStringField;
    rsClienteActSector: TStringField;
    rsClienteActCiudad: TStringField;
    rsClienteActTelefono: TStringField;
    rsClienteActNoPagaItbis: TBooleanField;
    rsClienteActDescuento: TFloatField;
    rsClienteActFax: TStringField;
    rsClienteActeMail: TStringField;
    rsClienteActidListaPrecio: TStringField;
    rsClienteActCondicion: TIntegerField;
    rsClienteActidCuenta: TStringField;
    rsClienteActidAuxiliar: TStringField;
    rsClienteActRNC_Cedula: TStringField;
    rsClienteActidCondicion: TStringField;
    rsClienteActNotas: TStringField;
    rsClienteActIdMoneda: TIntegerField;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure beCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure beCodigoPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBTableView2CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    function ValidarCliente: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HistorialCliente: THistorialCliente;

implementation

uses uBusquedaDX, uFactura, uRecibo, uCXC, UUtiles;

{$R *.dfm}

procedure THistorialCliente.cxButton1Click(Sender: TObject);
begin
  inherited;
  if beCodigo.Text <> '' then begin
    with rs do begin
      Close();
      Parameters[1].Value := beCodigo.EditValue;
      Parameters[2].Value := deDesde.Date;
      Parameters[3].Value := deHasta.Date;
      Open();
    end;
  end;
end;

procedure THistorialCliente.cxButton2Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName, cxGrid2);
end;

procedure THistorialCliente.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure THistorialCliente.beCodigoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  x: variant;
begin
  inherited;
  x := TBusquedaDX.Buscar('idCliente',False,'FindCliente');
  if x <> null then begin
    beCodigo.EditValue := x;
    SelectNext(Activecontrol,True,True);
    cxButton1.Click();
  end;
end;

function THistorialCliente.ValidarCliente: Boolean;
begin
  with rsClienteAct do begin
    Close();
    Parameters[1].Value := beCodigo.EditValue;
    Open();
    Result := not Eof;
  end;
end;

procedure THistorialCliente.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := date();
  dehasta.Date := date();
end;

procedure THistorialCliente.beCodigoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if beCodigo.Text = '' then begin
    edProducto.Text := '';
    rs.Close();
  end
  else if ValidarCliente() then begin
    edProducto.Text := rsClienteActCliente.Value;
  end
  else
    raise Exception.Create('Este cliente no existe');
end;

procedure THistorialCliente.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  AHandled := True;
  if rsTipo.Value = 'FT' then
    ModalShow(TFactura,showfind,rsID.Value, 'idfactura')
  else if rsTipo.Value = 'RC' then
    ModalShow(TRecibo,showFind, rsID.Value,'idRecibo')
  else
    ModalShow(TCXC,showFind, rsID.Value,'idCXC');
end;

end.

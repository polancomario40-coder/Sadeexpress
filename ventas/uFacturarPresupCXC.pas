unit uFacturarPresupCXC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxButtonEdit, cxDBLookupComboBox;

type
  TFacturarPresupCXC = class(TFForm)
    rs: TADODataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cFacturar: TADOCommand;
    rsidCotizacion: TGuidField;
    rsCotizacion: TStringField;
    rsidCotizacionStatus: TStringField;
    rsidCliente: TIntegerField;
    rsCliente: TStringField;
    rsContacto: TStringField;
    rsDireccion: TStringField;
    rsSector: TStringField;
    rsCiudad: TStringField;
    rsTelefono: TStringField;
    rsSolicitadoPor: TStringField;
    rsidEmpleado: TIntegerField;
    rsFecha: TDateTimeField;
    rsHora: TDateTimeField;
    rsReferencia: TStringField;
    rsCancelado: TBooleanField;
    rsCredito: TBooleanField;
    rsidCompania: TIntegerField;
    rsSubTotal: TBCDField;
    rsItbis: TBCDField;
    rsDescuento: TBCDField;
    rsTotal: TBCDField;
    rsNota: TStringField;
    rsUsuario: TStringField;
    rsValidoHasta: TDateTimeField;
    rsidClienteObra: TStringField;
    rsPagaItbis: TBooleanField;
    rsElemento: TStringField;
    rsFax: TStringField;
    rseMail: TStringField;
    rsPorcDesc: TFloatField;
    rsCondicion: TIntegerField;
    rsidMoneda: TIntegerField;
    rsFechaAprobado: TDateTimeField;
    rsidCondicion: TStringField;
    rsFechaEnviado: TDateTimeField;
    rsObservacion: TStringField;
    rsNotaReferencia: TStringField;
    rsMoneda: TStringField;
    cxGrid1DBTableView1Cotizacion: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Nota: TcxGridDBColumn;
    cxGrid1DBTableView1Moneda: TcxGridDBColumn;
    cxButton3: TcxButton;
    cGenND: TADOCommand;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FacturarPresupCXC: TFacturarPresupCXC;

implementation

uses Udata, uFactura, UUtiles, uCXC, uCotizacion;

{$R *.dfm}

procedure TFacturarPresupCXC.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TFacturarPresupCXC.cxButton1Click(Sender: TObject);
begin
  inherited;
  with cGenND do begin
    Parameters[1].Value := rsIdCotizacion.Value;
    Parameters[2].Value := dm.UsuarioActual;
    Execute();
    if Parameters[0].Value <> 0 then
      ShowMessage('Error generando la nota de debito')
    else begin
      if Confirmar('La nota de debito se genero con exito, desea verla ahora mismo') then
        ModalShow(TCXC,showFind,rsIdCotizacion.Value,'idCXC',True);

      rs.Requery();
    end;
  end;

end;

procedure TFacturarPresupCXC.FormCreate(Sender: TObject);
begin
  inherited;
  rs.Close();
  rs.Open();
end;

procedure TFacturarPresupCXC.cxButton3Click(Sender: TObject);
begin
  inherited;
  with cFacturar do begin
    Parameters[1].Value := rsIdCotizacion.Value;
    Parameters[2].Value := dm.UsuarioActual;
    Execute();
    if Parameters[0].Value <> 0 then
      ShowMessage('Error generando factura')
    else begin
      if Confirmar('La factura se genero con exito, desea verla ahora mismo') then
        ModalShow(TFactura,showFInd,Parameters[3].Value,'idFactura',True);

      rs.Requery();
    end;
  end;
end;

procedure TFacturarPresupCXC.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  id: Variant;
begin
  inherited;
  id := rsIdCotizacion.Value;
  ModalShow(TCotizacion,showFind, rsidCotizacion.Value, 'idCotizacion',true);
  AHandled := True;
  rs.Requery();
  rs.Locate('idCotizacion',id,[]);
end;

end.

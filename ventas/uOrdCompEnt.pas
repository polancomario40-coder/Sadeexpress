unit uOrdCompEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, dxExEdtr, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL,
  dxCntner, ComCtrls, DB, ADODB, cxLookAndFeelPainters, cxLabel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxButtons,
  ExtCtrls, Mask, DBCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCalendar, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, cxDBEdit, dxEditor, dxDBEdtr, dxDBELib, cxButtonEdit,
  cxCheckBox, ActnList, XPStyleActnCtrls, ActnMan, ppStrtch, ppMemo,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe;

type
  TOrdCompEnt = class(TFFormx)
    RS: TADODataSet;
    ds: TDataSource;
    RSDet: TADODataSet;
    ds2: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    cxButton1: TcxButton;
    OrdCompStatus: TADODataSet;
    dsOrdCompStatus: TDataSource;
    status: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxButton3: TcxButton;
    Entregas: TADODataSet;
    dsEntregas: TDataSource;
    EntregasDet: TADODataSet;
    dsEntregasDet: TDataSource;
    cxButton4: TcxButton;
    RSidOrdComp: TGuidField;
    RSOrdComp: TStringField;
    RSFecha: TDateTimeField;
    RSCliente: TStringField;
    RSSector: TStringField;
    RSCiudad: TStringField;
    RSTelefono: TStringField;
    RSUsuario: TStringField;
    RSObservacion: TStringField;
    RSidCondicion: TStringField;
    OrdCompStatusidOrdCompStatus: TStringField;
    RSDetidOrdCompDet: TGuidField;
    RSDetidOrdComp: TGuidField;
    RSDetidProducto: TStringField;
    RSDetProducto: TStringField;
    RSDetCantidad: TFloatField;
    RSDetPrecio: TBCDField;
    RSDetidUnidad: TStringField;
    RSDetDescuento: TBCDField;
    RSDetItbis: TBCDField;
    RSDetLineTotal: TBCDField;
    RSDetLinea: TIntegerField;
    EntregasidOrdCompEnt: TGuidField;
    EntregasOrdCompEnt: TStringField;
    EntregasFecha: TDateTimeField;
    EntregasHora: TDateTimeField;
    EntregasUsuario: TStringField;
    EntregasidOrdComp: TGuidField;
    EntregasOrdComp: TStringField;
    EntregasDetidOrdCompEntDet: TGuidField;
    EntregasDetidOrdCompEnt: TGuidField;
    EntregasDetidOrdCompDet: TGuidField;
    EntregasDetidProducto: TStringField;
    EntregasDetProducto: TStringField;
    EntregasDetPedido: TFloatField;
    EntregasDetDespachado: TFloatField;
    EntregasDetPendiente: TFloatField;
    EntregasDetLinea: TIntegerField;
    RSDetEntregado: TFloatField;
    RSDetPendiente: TFloatField;
    cxButton2: TcxButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    cxButton5: TcxButton;
    codigo: TcxTextEdit;
    cxButton6: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idOrdComp: TcxGridDBColumn;
    cxGrid1DBTableView1OrdComp: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Sector: TcxGridDBColumn;
    cxGrid1DBTableView1Ciudad: TcxGridDBColumn;
    cxGrid1DBTableView1Telefono: TcxGridDBColumn;
    cxGrid1DBTableView1Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1Observacion: TcxGridDBColumn;
    cxGrid1DBTableView1idCondicion: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1idOrdCompDet: TcxGridDBColumn;
    cxGrid2DBTableView1idOrdComp: TcxGridDBColumn;
    cxGrid2DBTableView1CodProd: TcxGridDBColumn;
    cxGrid2DBTableView1Producto: TcxGridDBColumn;
    cxGrid2DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid2DBTableView1Unidad: TcxGridDBColumn;
    cxGrid2DBTableView1Entregado: TcxGridDBColumn;
    cxGrid2DBTableView1Pendiente: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1idOrdCompEnt: TcxGridDBColumn;
    cxGrid3DBTableView1OrdCompEnt: TcxGridDBColumn;
    cxGrid3DBTableView1Fecha: TcxGridDBColumn;
    cxGrid3DBTableView1Hora: TcxGridDBColumn;
    cxGrid3DBTableView1Usuario: TcxGridDBColumn;
    cxGrid3DBTableView1idOrdComp: TcxGridDBColumn;
    cxGrid3DBTableView1OrdComp: TcxGridDBColumn;
    cxGrid4: TcxGrid;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1idOrdCompEntDet: TcxGridDBColumn;
    cxGrid4DBTableView1idOrdCompEnt: TcxGridDBColumn;
    cxGrid4DBTableView1idOrdCompDet: TcxGridDBColumn;
    cxGrid4DBTableView1idProducto: TcxGridDBColumn;
    cxGrid4DBTableView1Producto: TcxGridDBColumn;
    cxGrid4DBTableView1Pedido: TcxGridDBColumn;
    cxGrid4DBTableView1Despachado: TcxGridDBColumn;
    cxGrid4DBTableView1Pendiente: TcxGridDBColumn;
    cxGrid4DBTableView1Linea: TcxGridDBColumn;
    cxGrid5: TcxGrid;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5DBTableView1: TcxGridDBTableView;
    Ent: TADODataSet;
    EntDet: TADODataSet;
    dsentdet: TDataSource;
    EntidOrdCompEnt: TGuidField;
    EntOrdCompEnt: TStringField;
    EntFecha: TDateTimeField;
    EntHora: TDateTimeField;
    EntUsuario: TStringField;
    EntidOrdComp: TGuidField;
    EntOrdComp: TStringField;
    EntDetidOrdCompEntDet: TGuidField;
    EntDetidOrdCompEnt: TGuidField;
    EntDetidOrdCompDet: TGuidField;
    EntDetidProducto: TStringField;
    EntDetProducto: TStringField;
    EntDetPedido: TFloatField;
    EntDetDespachado: TFloatField;
    EntDetPendiente: TFloatField;
    EntDetLinea: TIntegerField;
    cxDBTextEdit1: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid5DBTableView1idOrdCompEntDet: TcxGridDBColumn;
    cxGrid5DBTableView1idOrdCompEnt: TcxGridDBColumn;
    cxGrid5DBTableView1idOrdCompDet: TcxGridDBColumn;
    cxGrid5DBTableView1idProducto: TcxGridDBColumn;
    cxGrid5DBTableView1Producto: TcxGridDBColumn;
    cxGrid5DBTableView1Pedido: TcxGridDBColumn;
    cxGrid5DBTableView1Despachado: TcxGridDBColumn;
    cxGrid5DBTableView1Pendiente: TcxGridDBColumn;
    cxGrid5DBTableView1Linea: TcxGridDBColumn;
    DsEnt: TDataSource;
    EntidProMov: TGuidField;
    EntidFactura: TGuidField;
    Almacen: TADODataSet;
    dsAlmacen: TDataSource;
    EntidAlmacen: TStringField;
    Label25: TLabel;
    lalmacen: TdxDBLookupEdit;
    cxButton8: TcxButton;
    cxButton11: TcxButton;
    RSOrdCompStatus: TStringField;
    RSFacturable: TBooleanField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    OrdCompEnt2ProMov: TADOCommand;
    CANT: TcxTextEdit;
    Label8: TLabel;
    EntregasidProMov: TGuidField;
    EntregasidFactura: TGuidField;
    EntregasidAlmacen: TStringField;
    EntregasCancelado: TBooleanField;
    Entregasfactura: TStringField;
    Entregaspromov: TStringField;
    cxGrid3DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid3DBTableView1DBColumn2: TcxGridDBColumn;
    ProductoAct: TADODataSet;
    ProductoActidProducto: TStringField;
    ProductoActProducto: TStringField;
    ProductoActMinimo: TFloatField;
    ProductoActReorden: TFloatField;
    ProductoActAutoDescuento: TBooleanField;
    ProductoActCambiarPrecio: TBooleanField;
    ProductoActExistencia: TFloatField;
    ProductoActCostoPromedio: TFloatField;
    ProductoActPrecioContado: TBCDField;
    ProductoActPrecioCredito: TBCDField;
    ProductoActInactivo: TBooleanField;
    ProductoActporciento: TFloatField;
    ProductoActidUnidad: TStringField;
    ProductoActDescuento: TFloatField;
    ProductoActExistenciaNeg: TBooleanField;
    ProductoActidListaPrecio: TStringField;
    ProductoActidPartida: TStringField;
    ProductoActCalcExistencia: TBooleanField;
    ProductoActidMoneda: TIntegerField;
    cball: TcxCheckBox;
    EntregasStatus: TStringField;
    cxGrid3DBTableView1DBColumn3: TcxGridDBColumn;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    EntCancelado: TBooleanField;
    EntStatus: TStringField;
    Entfactura: TStringField;
    Entpromov: TStringField;
    SetStatus: TADOCommand;
    Acciones: TActionManager;
    aNuevo: TAction;
    aEnviado: TAction;
    aCompletado: TAction;
    Empleados: TADODataSet;
    EntidEmpleado: TIntegerField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    EmpleadosidEmpleado: TIntegerField;
    EmpleadosEmpleado: TStringField;
    dsEmpleados: TDataSource;
    Label6: TLabel;
    aVerFactura: TAction;
    aVerSalida: TAction;
    aMostrar: TAction;
    EntregasidEmpleado: TIntegerField;
    EntregasEmpleado: TStringField;
    cxGrid3DBTableView1DBColumn4: TcxGridDBColumn;
    ProductoList: TAction;
    RSDetubicacion: TStringField;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    plProductoList: TppDBPipeline;
    RptProductoList: TppReport;
    plOrdCompEnt: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppDBText5: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppLabel6: TppLabel;
    aProductoList: TAction;
    cxButton7: TcxButton;
    cxButton12: TcxButton;
    plEntregas: TppDBPipeline;
    EntregasList: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppTitleBand2: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText2: TppDBText;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText12: TppDBText;
    EntregasidCliente: TIntegerField;
    EntregasCliente: TStringField;
    ppDBText13: TppDBText;
    ppLabel7: TppLabel;
    aListaDespachos: TAction;
    cxGrid3DBTableView1Cliente: TcxGridDBColumn;
    ppLabel16: TppLabel;
    ppDBText14: TppDBText;
    EntregasFechaEnviado: TDateTimeField;
    EntregasFechaCompletado: TDateTimeField;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    ppLabel17: TppLabel;
    ppDBText15: TppDBText;
    statuspedido: TcxLookupComboBox;
    cxButton13: TcxButton;
    aPedidoStatus: TAction;
    SetStatusPedido: TADOCommand;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure EntregasAfterScroll(DataSet: TDataSet);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure codigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet2Enter(Sender: TObject);
    procedure CANTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pwRecord(DataSet: TDataSet);
    procedure cballPropertiesChange(Sender: TObject);
    procedure aMostrarExecute(Sender: TObject);
    procedure aNuevoExecute(Sender: TObject);
    procedure aVerSalidaExecute(Sender: TObject);
    procedure aVerFacturaExecute(Sender: TObject);
    procedure ProductoListExecute(Sender: TObject);
    procedure aProductoListExecute(Sender: TObject);
    procedure aEnviadoExecute(Sender: TObject);
    procedure aCompletadoExecute(Sender: TObject);
    procedure aListaDespachosExecute(Sender: TObject);
    procedure aPedidoStatusExecute(Sender: TObject);
  private
    ALMACENDEFAULT : string;
    procedure BuscarOrdenes;
    procedure Mostrarentregas;
    procedure NuevaEntrega;
    procedure GenFactura;
    procedure GenProMov;
    procedure procesarCodgio;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrdCompEnt: TOrdCompEnt;

implementation

uses Udata, UUtiles, uOrdComp, uParametros, uFactura, uProMov;

{$R *.dfm}

procedure TOrdCompEnt.cxButton1Click(Sender: TObject);
begin
  inherited;
  BuscarOrdenes();
end;

procedure TOrdCompEnt.BuscarOrdenes();
begin
  inherited;
  RS.Close;
  RS.Parameters[1].value := status.EditValue;
  RS.Open;
end;

procedure TOrdCompEnt.FormCreate(Sender: TObject);
begin
  inherited;
  almacen.Open;
  empleados.Open;
  ALMACENDEFAULT := dm.GetDefaultStr('ALMACENDEFAULT');
  ordcompstatus.Open;
  status.EditValue := 'Aprobada';
  BuscarOrdenes();


end;

procedure TOrdCompEnt.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RSDet.Close;
  if not(rsidOrdComp.isnull) then begin
    RSDet.Parameters[1].value := rsidOrdComp.value;
    RSDet.Open;
  end;

end;

procedure TOrdCompEnt.EntregasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  entregasdet.close;
  if not(EntregasidOrdCompEnt.isnull) then begin
    Entregasdet.Parameters[1].value := EntregasidOrdCompEnt.Value;
    Entregasdet.Open;
  end;
end;

procedure TOrdCompEnt.NuevaEntrega;
var
  pendiente : boolean;
begin

  pendiente := false;

  if (rsidOrdComp.isnull)  then begin
    raise exception.create('Debe seleccionar un Pedido con articulos pendientes para despacharlo');
  end;

  if not(rsfacturable.value) then
    raise exception.create('El pedido esta en un estatus no facturable');

  try
    Ent.close;
    Ent.open;
    // agrega el header
    ent.insert;
    entidalmacen.Value := ALMACENDEFAULT;
    entfecha.value := dm.DBFecha;
    enthora.value := dm.dbfechahora;
    entidordcomp.Value := rsidOrdComp.value;
    entordcomp.Value := rsOrdComp.value;
    entusuario.value := dm.UsuarioActual;
    entidordcompent.asguid := dm.NewGuid;
    ent.post;

    entdet.Close;
    entdet.Open;
    rsdet.first;

    While (not(rsdet.Eof)) do begin
      if rsdetCantidad.value - rsdetEntregado.value > 0 then begin
        // Copiar los detalles de la entrega
        EntDet.Insert;
        entdetidordcompentdet.asguid := dm.newguid();
        entdetidOrdCompEnt.value := entidordcompent.value;
        entdetidordcompdet.value := rsdetidordcompdet.value;
        entdetidproducto.value := rsdetidproducto.value;
        entdetproducto.value := rsdetproducto.value;
        entdetpedido.value := rsdetpendiente.value;
        entdetdespachado.value := 0.00;
        entdetpendiente.value := rsdetpendiente.value;
        pendiente := true;
        EntDet.Post;
      end;
      rsdet.Next;
    end;

    if not(pendiente) then raise exception.create('El Pedido seleccionado no tiene articulos pendientes por despachar');
    appestado := appInsert;
    pagecontrol1.TabIndex := 2;
  except
    ent.Close;
    entdet.Close;
    appestado := appbrowse;
  end;
end;


Procedure TOrdCompEnt.Mostrarentregas();
begin
  Entregas.close;
  Entregas.parameters[1].value := NULL;
  if (not(cball.Checked)) and (rs.active) and (not(rsidOrdComp.isnull)) then
    Entregas.parameters[1].value := rsidOrdComp.value;
  Entregas.open;
end;

procedure TOrdCompEnt.cxButton5Click(Sender: TObject);
begin
  inherited;
  procesarCodgio();
end;

procedure TOrdCompEnt.procesarCodgio();
begin
  try
    if SaveStrToInt(CANT.text) <= 0 then raise exception.create('Cantidad Invalida');

    if (codigo.Text <> '') and (entdet.Locate('idproducto',codigo.Text,[])) then begin

      if entdetdespachado.value = entdetpedido.value then
        raise exception.create('Este producto ya ha sido despachado por completo');

      if entdetdespachado.value + SaveStrToInt(CANT.text) > entdetpedido.value then
         raise exception.create('Con la cantidad seleccionada sobrepasaria el Pedido, No puedo proceder con esta cantidad');

      ProductoAct.Close;
      ProductoAct.Parameters.ParamByName('@idProducto').Value := codigo.Text;
      ProductoAct.Parameters.ParamByName('@idAlmacen').Value := entidAlmacen.Value;
      ProductoAct.Parameters.ParamByName('@Lista').Value := NULL;
      ProductoAct.Parameters.ParamByName('@idMoneda').Value := dm.MonedaLegal();
      ProductoAct.Open;

      if entdetdespachado.value + SaveStrToInt(CANT.text) > ProductoActExistencia.value then
         raise exception.create('Con la cantidad seleccionada sobrepasaria la Existencia de Almacen, No puedo proceder con esta cantidad');

      if not(ProductoActExistencianeg.Value) then begin
        if ProductoActExistencia.value < SaveStrToInt(CANT.text) then
          raise exception.create('La existencia de este producto en el almacen seleccionado no es suficiente');
      end;

      entdet.edit;
      entdetdespachado.value := entdetdespachado.value + SaveStrToInt(CANT.text);
      entdetpendiente.value := entdetpendiente.value -  SaveStrToInt(CANT.text);
      entdet.post;

    end else begin
      if codigo.Text <> '' then
        raise exception.create('El producto codigo : [' + codigo.Text +'] No Existe en el pedido que esta despachando')
    end;
  finally
    codigo.Text := '';
    cant.Text := '1';
  end;

end;

procedure TOrdCompEnt.cxButton3Click(Sender: TObject);
var
  pend : double;
begin
  inherited;
    if not(ent.Active) then  exit;

    if entordcompent.IsNull then begin
      ent.Edit;
      entordcompent.value := dm.GetNextCounterStr('Entrega');
      ent.post;
    end;
    ent.UpdateBatch();
    entdet.UpdateBatch();
    rsdet.close;
    rsdet.open;

    GenFactura();
    GenProMov();
  //marcar cotizacion y pedido como facturaso si no hay productos pendientes de despachar
    ent.UpdateBatch();

    pend := 0;
    entdet.First;
    while not(entdet.eof) do begin
      if entdetpendiente.value > 0 then
        pend := pend + entdetpendiente.value;
      entdet.next;
    end;

    if Pend = 0 then begin
      if not(EntidOrdComp.isnull) then begin
        dm.Coneccion.Execute('Update OrdComp Set idOrdCompStatus = ''facturado'' where idOrdComp ='''+EntidOrdComp.Value+'''');
        dm.Coneccion.Execute('Update Cotizacion Set idCotizacionStatus = ''facturado'' from cotizacion c join ordcomp o on c.idCotizacion = o.idCotizacion where o.idOrdComp ='''+EntidOrdComp.Value+'''');
      end;
    end;

    MostrarEntregas();
    pagecontrol1.TabIndex := 0;

    ent.close;
    entdet.close;
    appestado := appbrowse;
end;

procedure TOrdCompEnt.GenProMov;
begin
  // Generar movimiento de salida de almacen con las cantidades de la entrega
  //if MessageDlg('Desea Generar e Imprimir una Salida de Almacen?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    OrdCompEnt2ProMov.Parameters[1].value := entidOrdCompEnt.value;
    OrdCompEnt2ProMov.Execute;
    If OrdCompEnt2ProMov.Parameters[0].value <> 0 then
      raise exception.create('Error al generar el movimiento de almacen');
    Modalshow(TProMov, showprint, entidOrdCompEnt.Value, 'idProMov', true);

    ent.Edit;
    entidPromov.value := entidOrdCompEnt.value;
    ent.post;
  //end;
end;

procedure TOrdCompEnt.GenFactura;
begin
  // Generar Factura desde al orden seleccionada y con las cantidades de la entrega
//  if MessageDlg('Desea Generar una factura por este despacho?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    if not(EntidOrdCompEnt.IsNull) then begin
      if not(EntidFactura.IsNull) then
        ModalShow(TFactura, showfind, entidFactura.value, 'idFactura', true)
      else begin
        ModalShow(TFactura, showinsert, entidOrdCompEnt.value, 'OrdCompEnt', true);   //usa 'OrdCompEnt' para saber que es de una OE
        ent.Edit;
        entidFactura.value := entidOrdCompEnt.value;
        ent.post;
      end;
    end;
  //end;
end;

procedure TOrdCompEnt.cxButton6Click(Sender: TObject);
begin
  inherited;
  if not(ent.active) then exit;
  ent.CancelBatch();
  entdet.CancelBatch();
  pagecontrol1.TabIndex := 0;
  ent.close;
  entdet.close;

  appestado := appbrowse;
end;

procedure TOrdCompEnt.TabSheet3Show(Sender: TObject);
begin
  inherited;
  MostrarEntregas();
end;

procedure TOrdCompEnt.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if appestado = appinsert then begin
    AllowChange := false;
    showmessage('Debe guardar o cancelar la entrega antes de continuar');
  end;
end;


procedure TOrdCompEnt.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalShow(TOrdComp, ShowFind, rsidOrdComp.value, 'idOrdComp',true);
end;

procedure TOrdCompEnt.codigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (key = vk_add) then begin
      Cant.SetFocus;
      codigo.Text := '';
   end else if (key = vk_return) then begin
     if (codigo.Text <> '') and (codigo.Text <> '+') then
       procesarCodgio();
   end;

end;

procedure TOrdCompEnt.TabSheet2Enter(Sender: TObject);
begin
  inherited;
  codigo.SetFocus;
end;

procedure TOrdCompEnt.CANTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_Return then
    SelectNext(ActiveControl,True,True);
end;

procedure TOrdCompEnt.pwRecord(DataSet: TDataSet);
begin
  inherited;
  entstatus.value := 'PREPARADO';
end;

procedure TOrdCompEnt.cballPropertiesChange(Sender: TObject);
begin
  inherited;
  MostrarEntregas();
end;

procedure TOrdCompEnt.aMostrarExecute(Sender: TObject);
begin
  inherited;
  MostrarEntregas();
end;

procedure TOrdCompEnt.aNuevoExecute(Sender: TObject);
begin
  inherited;
  if not(dm.tienepermiso(pAgregar, Permisos, 'Agregando nuevo despacho de Pedido', rsOrdComp.asstring)) then
    Raise exception.create('Error, Usted no tiene suficientes privilegios para agregar nuevos despachos');

   nuevaentrega();
end;

procedure TOrdCompEnt.aVerSalidaExecute(Sender: TObject);
begin
  inherited;
 ModalShow(TProMov, showfind, entregasidProMov.value, 'idProMov', true)
end;

procedure TOrdCompEnt.aVerFacturaExecute(Sender: TObject);
begin
  inherited;
  ModalShow(TFactura, showfind, entregasidFactura.value, 'idFactura', true)
end;

procedure TOrdCompEnt.ProductoListExecute(Sender: TObject);
begin
  inherited;
  RptProductoList.Print;
end;

procedure TOrdCompEnt.aProductoListExecute(Sender: TObject);
begin
  inherited;
  if not(dm.tienepermiso(pImprimir, Permisos, 'Imprimiento listado de productos del pedido', rsOrdComp.asstring)) then
    Raise exception.create('Error, Usted no tiene suficientes privilegios para imprimir');

  RptProductoList.Print;
end;

procedure TOrdCompEnt.aEnviadoExecute(Sender: TObject);
var
  bm : string;
begin
  inherited;


  if not(dm.tienepermiso(pEditar, Permisos, 'Cambiando el Status del Despacho a Enviado', EntregasOrdComp.asstring)) then
    Raise exception.create('Error, Usted no tiene suficientes privilegios para cambiar el status a los despachos');

  bm := entregas.Bookmark;
  entregas.DisableControls;
  SetStatus.Parameters.ParamByName('@idOrdCompEnt').value := EntregasidOrdCompEnt.value;
  SetStatus.Parameters.ParamByName('@Status').value := 'ENVIADO';
  SetStatus.execute();
  Entregas.close;
  Entregas.Open;
  Entregas.Bookmark := bm;
  entregas.EnableControls;
end;

procedure TOrdCompEnt.aCompletadoExecute(Sender: TObject);
var
  bm : string;
begin
  inherited;
  if not(dm.tienepermiso(pEditar, Permisos, 'Cambiando el Status del Despacho a Enviado', EntregasOrdComp.asstring)) then
    Raise exception.create('Error, Usted no tiene suficientes privilegios para cambiar el status a los despachos');

  bm := entregas.Bookmark;
  entregas.DisableControls;
  SetStatus.Parameters.ParamByName('@idOrdCompEnt').value := EntregasidOrdCompEnt.value;
  SetStatus.Parameters.ParamByName('@Status').value := 'COMPLETADO';
  SetStatus.execute();
  Entregas.close;
  Entregas.Open;
  Entregas.Bookmark := bm;
  entregas.EnableControls;

end;

procedure TOrdCompEnt.aListaDespachosExecute(Sender: TObject);
begin
  inherited;

 if not(dm.tienepermiso(pImprimir, Permisos, 'Imprimir listo de despachos', EntregasOrdComp.asstring)) then
    Raise exception.create('Error, Usted no tiene suficientes privilegios imprimir los despachos');

  EntregasList.Print;
end;

procedure TOrdCompEnt.aPedidoStatusExecute(Sender: TObject);
var
  bm : string;
begin
   inherited;

  if not(dm.tienepermiso(pAprobar, Permisos, 'Cambiando el Status del Pedido', rsOrdComp.asstring)) then
    Raise exception.create('Error, Usted no tiene suficientes privilegios para cambiar el status a los Pedidos');

  bm := rs.Bookmark;
  rs.DisableControls;
  SetStatusPedido.parameters[1].value := rsidOrdcomp.value;
  SetStatusPedido.parameters[2].value := StatusPedido.EditValue;
  SetStatusPedido.execute;
  rs.close;
  rs.Open;
  rs.Bookmark := bm;
  rs.EnableControls;
end;

end.

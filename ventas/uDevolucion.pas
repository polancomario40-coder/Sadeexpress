unit uDevolucion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, DB, dxDBELib, StdCtrls, dxCntner, dxEditor, dxEdLib,
  ADODB, ActnList, ImgList, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr,
  ComCtrls, ppDB, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppMemo, jpeg,
  ppParameter, math, myChkBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxDBEdit, DBCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters, cxButtons,
  cxCheckBox;

type
  TDevolucion = class(Tfformmant2)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cod: TdxDBEdit;
    Label5: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label6: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label7: TLabel;
    ClienteAct: TADODataSet;
    dsEstacionAct: TDataSource;
    Label9: TLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    bAnular: TwwNavButton;
    dxDBEdit1: TdxDBEdit;
    ClienteActidCliente: TIntegerField;
    ClienteActCliente: TStringField;
    ClienteActContacto: TStringField;
    ClienteActLimiteCredito: TBCDField;
    ClienteActActivo: TBooleanField;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    ClienteActidEmpleado: TIntegerField;
    ClienteActDireccion: TStringField;
    ClienteActSector: TStringField;
    ClienteActCiudad: TStringField;
    ClienteActTelefono: TStringField;
    ClienteActNoPagaItbis: TBooleanField;
    Devolucion2Cxc: TADOCommand;
    bPrint: TwwNavButton;
    AFactura2Dev: TAction;
    BdeOrdComp: TwwNavButton;
    ClienteActDescuento: TFloatField;
    ClienteActFax: TStringField;
    ClienteActeMail: TStringField;
    ClienteActidListaPrecio: TStringField;
    ClienteActCondicion: TIntegerField;
    Label3: TLabel;
    Factura2Dev: TADODataSet;
    RSidDevolucion: TGuidField;
    RSDevolucion: TStringField;
    RSidFactura: TGuidField;
    RSFactura: TStringField;
    RSidCliente: TIntegerField;
    RSCliente: TStringField;
    RSFecha: TDateTimeField;
    RSConcepto: TStringField;
    RSidCxc: TGuidField;
    RSidProMov: TGuidField;
    RSUsuario: TStringField;
    RSSubTotal: TBCDField;
    RSItbis: TBCDField;
    RSDescuento: TBCDField;
    RSTotal: TBCDField;
    RSDetidDevolucionDet: TGuidField;
    RSDetidDevolucion: TGuidField;
    RSDetidFacturaDet: TGuidField;
    RSDetidProducto: TStringField;
    RSDetProducto: TStringField;
    RSDetCantidad: TFloatField;
    RSDetPrecio: TBCDField;
    RSDetDescuento: TBCDField;
    RSDetItbis: TBCDField;
    RSDetLineTotal: TBCDField;
    RSDetDevCantidad: TFloatField;
    RSDetLinea: TIntegerField;
    Factura2DevidFactura: TGuidField;
    Factura2DevFactura: TStringField;
    Factura2DevidCliente: TIntegerField;
    Factura2DevCliente: TStringField;
    Factura2DevFecha: TDateTimeField;
    Factura2DevNota: TStringField;
    Factura2DevPorcDesc: TFloatField;
    Factura2Devcondicion: TIntegerField;
    Factura2DevidFacturaDet: TGuidField;
    Factura2DevidProducto: TStringField;
    Factura2DevProducto: TStringField;
    Factura2DevCantidad: TFloatField;
    Factura2DevPrecio: TBCDField;
    Factura2DevDescuento: TBCDField;
    Factura2DevItbis: TBCDField;
    Factura2DevLineTotal: TBCDField;
    RSDetDevDescuento: TBCDField;
    RSDetDevItbis: TBCDField;
    RSDetDevLineTotal: TBCDField;
    cxDBMemo1: TcxDBMemo;
    Label8: TLabel;
    AnularDev: TADOCommand;
    RSCancelado: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    dxDBEdit4: TdxDBEdit;
    RSFechaCancelado: TDateTimeField;
    RSTasa: TBCDField;
    RSidMoneda: TIntegerField;
    Label10: TLabel;
    dxDBEdit5: TdxDBEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label11: TLabel;
    Factura2DevidMoneda: TIntegerField;
    Factura2Devtasa: TBCDField;
    Devolucion2ProMov: TADOCommand;
    GenNC: TAction;
    GenProMov: TAction;
    rsAlmacenes: TADODataSet;
    DSAlmacenes: TDataSource;
    rsAlmacenesidAlmacen: TStringField;
    rsAlmacenesAlmacen: TStringField;
    Label12: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    RSidAlmacen: TStringField;
    Factura2DevidAlmacen: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    RSIncluirItbis: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure RSDetAfterPost(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure AGuardarExecute(Sender: TObject);
    procedure AAnularExecute(Sender: TObject);
    procedure GridCellChanged(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure AFactura2DevExecute(Sender: TObject);
    procedure RSDetDevCantidadValidate(Sender: TField);
    procedure GenNCExecute(Sender: TObject);
    procedure GenProMovExecute(Sender: TObject);
    procedure RSIncluirItbisValidate(Sender: TField);
  private
    FLoading  : boolean;
    FDescuento: double;
    FITBIS    : double;
    SUMARITBIS: Integer;
    FSubtotal : double;
    ParamNC   : boolean;
    ParamProMov : boolean;
    procedure CalcTotal;
    Procedure ActualizarTotales;
    procedure CargarFactura;
    procedure CalcITBIS;
  protected
    { Private declarations }
    procedure UserAutoCodigo; override;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;
  public
    { Public declarations }
  end;

var
  Devolucion: TDevolucion;

implementation

uses Udata, UUtiles, uBusqueda, FacturaFind, uCXC, uProMov;

{$R *.dfm}


procedure TDevolucion.FormCreate(Sender: TObject);
begin
  paramNC     := dm.getdefaultstr('GEN_NC_DEV') = '1';
  paramProMov := dm.getdefaultstr('GEN_ENT_ALM_DEV') = '1';


  FLoading := false;
//  ds2.DataSet := mRSDet;
  MasterField := 'idDevolucion';
  DetailField := 'idDevolucion';
  inherited;
  Modulo := 'Venta';
  LogField := 'Devolucion';
  TipoDoc := 'DEVOLUCION';
  ImageidField := 'idDevolucion';
  CampodeCierre := 'FECHA'; //nombre del campo de fecha para validar el cierre de operaciones
  spName := 'FindDevolucion';
  Busqfield := 'idDevolucion';
  tfBusqueda := TBusqueda;
  OcultarC1 := true;       //oculta la columna 1 en la busqueda
  if not(ds2.dataset.active) then ds2.dataset.open ;
  FDescuento := 0.00;
  FITBIS     := 0.00;
  FSubtotal  := 0.00;
end;


procedure TDevolucion.UserAutoCodigo;
begin
  rsDevolucion.Value := dm.GetNextCounterSTR ('DEVOLUCION');
end;

procedure TDevolucion.newbotonstate;
begin
  inherited;
  //Cod.ReadOnly :=true;
  AAnular.Enabled := false;
  APrint.Enabled := False;
  AFactura2Dev.enabled := false;
end;

procedure TDevolucion.editbotonstate;
begin
  inherited;
  AAnular.Enabled := false;
  APrint.Enabled := False;
  AFactura2Dev.enabled := false;
end;

procedure TDevolucion.browsebotonstate;
begin
  inherited;
  AAnular.Enabled := not(rsidDevolucion.IsNull);
  APrint.Enabled := true; //verificar si tiene permiso para imprimir
  AFactura2Dev.enabled := anuevo.Enabled;
end;

procedure TDevolucion.CalcTotal();
Var
  bm : string;
begin
  FDescuento:= 0.00;
  FITBIS    := 0.00;
  FSubTotal := 0.00;
  inherited;
  RSDet.DisableControls;
  With RSDet Do
  Begin
    bm := BookMark;
    First;
    While Not Eof Do
    Begin
      FDescuento:= FDescuento + rsDetDevDescuento.ascurrency;
      FITBIS    := FITBIS + rsDetDevITBIS.ascurrency;
      FSubTotal := FSubTotal + rsDetDevLineTotal.ascurrency;
      Next;
    End;
    Bookmark := bm;

  End;
  RSDet.EnableControls;
end;


procedure TDevolucion.RSDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  if FLoading then
    Exit;

  CalcTotal();
  ActualizarTotales();
end;

procedure TDevolucion.ActualizarTotales;
begin
  if (appestado in [appedit, appinsert]) then
  begin
     if not(rs.state in dsEditModes) then rs.Edit;
     rsTotal.Value    := FSubTotal - FDescuento + FITBIS;
     rsDescuento.Value:= FDescuento;
     rsSubTotal.Value := FSubTotal;
     rsItbis.Value    := FITBIS;
  end;
end;


procedure TDevolucion.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsdetDevCantidad.Value := 0;
  rsdetidDevolucionDet.AsGuid := dm.NewGuid;
  rsdetlinea.Value := rsdet.RecordCount;
  rsdetDevDescuento.value := 0;
  rsdetDevItbis.value := 0;
  rsdetDevLineTotal.value := 0;
end;

procedure TDevolucion.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  if not rsdet.IsEmpty then rsdet.close;
  rsidDevolucion.AsGuid := dm.NewGuid;
  rsfecha.Value := dm.DBFecha ();
  rsTotal.value := 0.00;
  rsSubTotal.value := 0.00;
  rsDescuento.Value := 0.00;
  rsItbis.Value := 0.00;
  RSIncluirItbis.Value := True;
  RSUsuario.Value := dm.UsuarioActual;
end;

procedure TDevolucion.CalcITBIS();
begin
  rsdetDevITBIS.AsCurrency := 0.00;
  rsdetDevLineTotal.AsCurrency := 0.00;
  rsdetDevDescuento.AsCurrency := 0.00;

  if rsdetDevCantidad.value > 0 then begin
    if RSIncluirItbis.Value  then
      rsdetDevITBIS.AsCurrency := (rsdetitbis.value / rsDetCantidad.value) * rsDetDevCantidad.value
    else
      rsDetDevItbis.Value := 0;
      
    rsdetDevDescuento.AsCurrency := (rsdetDescuento.value / rsDetCantidad.value) * rsDetDevCantidad.value;
    rsdetDevLineTotal.AsCurrency := (rsdetLineTotal.value / rsDetCantidad.value) * rsDetDevCantidad.value;
  end;
end;

procedure TDevolucion.AGuardarExecute(Sender: TObject);
begin

  rsdet.first;
  while not(rsdet.eof) do begin
    if rsdetDevCantidad.value <= 0 then
      rsdet.Delete
    else
      rsdet.next;
  end;


  calcTotal;
  ActualizarTotales();

  if rsTotal.Value <= 0.00 then
    raise exception.create('El valor de la Devolucion es incorrecto');

  HandleTrans := false;       // las transacciones no se manejaran automaticamente si no lo pone false
  HandleGuardarState := false;  // el estado de los botones y de la aplicacion al guardar
                                // no se manejaran automaticamente si se pone false
  dm.Coneccion.BeginTrans;
  try
    try
      inherited;
      if paramNC  then
        GenNC.Execute ;
      if paramProMov  then
        GenProMov.Execute;
    except
      dm.Coneccion.RollbackTrans;
      raise;
    end;
    dm.Coneccion.CommitTrans;

    browsebotonstate;
    ds.AutoEdit := false;
    // imprimir el documento automaticamente al guaradas
    //if (appestado = appinsert) and (APrint.Enabled) then Aprint.Execute;
    appestado := appBrowse;

  finally
    HandleTrans := true;       // las transacciones no se manejaran automaticamente
    HandleGuardarState := true;  // el estado de los botones y de la aplicacion al guardar
                               // no se manejaran automaticamente
  end;

end;

procedure TDevolucion.AAnularExecute(Sender: TObject);
begin
  inherited;
  if not(RSCancelado.AsBoolean) then
  begin
    AnularDev.Parameters[1].Value := RSidDevolucion.Value;
    AnularDev.Parameters[2].Value := 0;
    AnularDev.Execute;
    if AnularDev.Parameters[2].Value then
       showMessage('La Devolucion ha sido anulado con exito')
    else
       raise exception.create('No se pudo anular la devolucion / verifique si ha sido aplicada la NC');
  end;
end;

procedure TDevolucion.GridCellChanged(Sender: TObject);
begin
  inherited;
  Grid.RedrawGrid;
end;


Procedure TDevolucion.CargarFactura();
var
  c : Variant;
begin
  c := fBuscar(TFindFactura, 'idFactura', false);
  if (c = Null) then begin
    Acancelar.Execute;
    Raise exception.create('Debe seleccionar una factura para hacer una devolución');
  end else begin
    Factura2Dev.Parameters[1].Value := c;
    if Factura2Dev.active then Factura2Dev.requery() else Factura2Dev.Open;
    if not(Factura2Dev.IsEmpty) then
    begin
      if (dm.DBFecha() - Factura2Devfecha.Value) > 30 then begin
        showmessage('Su factura tiene mas de 30 dias de emitida, no debe incluir el itbis en la NC');
        rsincluiritbis.Value := false;
      end else begin
        showmessage('Su factura tiene menos de 30 dias de emitida, se incluira el itbis en la NC');
        rsincluiritbis.Value := True;
      end;

      Anuevo.Execute;
      rsidCliente.Value := Factura2DevidCliente.Value;
      rsCliente.Value   := Factura2DevCliente.Value;
      rsidFactura.value := Factura2DevidFactura.value;
      rsFactura.value   := Factura2DevFactura.value;
      rsidMoneda.value  := Factura2DevidMoneda.value;
      rsTasa.value      := Factura2DevTasa.value;
      rsConcepto.Value := 'Devolucion de Factura :' +  Factura2Devfactura.AsString + ' de fecha : ' +
      Factura2Devfecha.AsString ;


      if rsIdAlmacen.IsNull then
        rsIdAlmacen.Value := Factura2DevidAlmacen.value;

      while not(Factura2Dev.Eof) do begin
        rsDet.Append;
        rsdetidfacturadet.value := Factura2DevidFacturadet.Value;
        rsDetidProducto.Value:= Factura2DevidProducto.Value;
        rsDetProducto.Value  := Factura2DevProducto.Value;
        rsDetCantidad.Value  := Factura2DevCantidad.Value;
        rsDetPrecio.Value    := Factura2DevPrecio.Value;
        rsDetItbis.Value     := Factura2DevItbis.Value;
        rsDetLineTotal.Value := Factura2DevLineTotal.Value;
        rsDetDescuento.Value := Factura2DevDescuento.Value;
        rsDet.Post;
        Factura2Dev.next;
      end;
    end;
    Factura2Dev.Close;
  end;
end;

procedure TDevolucion.AprintExecute(Sender: TObject);
begin
  inherited;
  Modalshow(TProMov, showprint, rsiddevolucion.Value, 'idProMov', true);
end;

procedure TDevolucion.AFactura2DevExecute(Sender: TObject);
begin
  inherited;
  if dm.tienepermiso(pAgregar, Permisos) then
    ANuevo.execute
  else
    abort  ;

  CargarFactura();
end;

procedure TDevolucion.RSDetDevCantidadValidate(Sender: TField);
begin
  inherited;
  if sender.value < 0 then
    raise exception.create('La cantidad no pude ser menor que cero');
  if sender.Value > rsdetcantidad.Value then
    raise exception.create('La cantidad no puede ser mayor que la facturada');

  CalcItbis;
end;

procedure TDevolucion.GenNCExecute(Sender: TObject);
begin
  inherited;

         Devolucion2Cxc.Parameters[1].Value := rsidDevolucion.value;
         Devolucion2Cxc.Execute;
         if Devolucion2Cxc.Parameters[0].Value <> 0 then
           Raise Exception.Create('Error al crear el movimiento de Cxc');
         Modalshow(Tcxc, showprint, rsiddevolucion.Value, 'idCxc', true);
end;

procedure TDevolucion.GenProMovExecute(Sender: TObject);
begin
  inherited;

        Devolucion2ProMov.Parameters[1].Value := rsidDevolucion.value;
        Devolucion2ProMov.Execute;

        if (Devolucion2ProMov.Parameters[0].Value = 0) then
          Modalshow(TProMov, showprint, rsiddevolucion.Value, 'idProMov', true)
        else if (Devolucion2ProMov.Parameters[0].Value <> -2) then
          Raise Exception.Create('Error al crear la salida de almacen');


end;

procedure TDevolucion.RSIncluirItbisValidate(Sender: TField);
begin
  inherited;
  if not rsDet.Active then
    Exit;

  FLoading := True;

  if rsDet.State in dsEditModes then
    rsdet.Post();


  rsDet.DisableControls();
  try
    rsDet.First();
    while not rsDet.Eof do begin
      rsDet.Edit();
      CalcItbis();
      rsDet.Post();
      rsDet.Next();
    end;
  finally
    FLoading := False;
    rsDet.EnableControls();
  end;

  CalcTotal();
  ActualizarTotales();
end;

end.

unit uProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant1, StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, DB,
  ADODB, ActnList, ImgList, Wwdatsrc, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, ComCtrls, uformmant2, Grids, Wwdbigrd, Wwdbgrid,
  cxControls, cxContainer, cxEdit, cxImage, cxDBEdit, ppBarCod, ppPrnabl,
  ppClass, ppCtrls, ppBands, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, cxLookAndFeelPainters, cxButtons, cxTextEdit, cxMemo,
  dxPageControl, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBLookupComboBox, cxButtonEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxCalendar, cxDBExtLookupComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxCheckBox;

type
  TProducto = class(Tfformmant2)
    dxDBEdit1: TdxDBEdit;
    Label1: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label2: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    dxDBEdit5: TdxDBEdit;
    Label5: TLabel;
    dxDBEdit6: TdxDBEdit;
    Label6: TLabel;
    dxDBEdit7: TdxDBEdit;
    Label7: TLabel;
    Marca: TADODataSet;
    Grupo: TADODataSet;
    dsGrupo: TDataSource;
    dsMarca: TDataSource;
    TipoImpuesto: TADODataSet;
    dsTipoImpuesto: TDataSource;
    Label11: TLabel;
    lkEmpleado: TdxDBLookupEdit;
    Label12: TLabel;
    dxDBLookupEdit2: TdxDBLookupEdit;
    Label13: TLabel;
    RSidProducto: TStringField;
    RSReferencia: TStringField;
    RSProducto: TStringField;
    RSPrecioContado: TBCDField;
    RSPrecioCredito: TBCDField;
    RSidTipoImpuesto: TIntegerField;
    RSInactivo: TBooleanField;
    RSidUnidad: TStringField;
    RSCalcExistencia: TBooleanField;
    RSMinimo: TFloatField;
    RSMaximo: TFloatField;
    RSReorden: TFloatField;
    RSidMarca: TStringField;
    RSModelo: TStringField;
    Label14: TLabel;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Label15: TLabel;
    dxDBEdit11: TdxDBEdit;
    Label16: TLabel;
    dxDBEdit12: TdxDBEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    Unidad: TADODataSet;
    dsUnidad: TDataSource;
    RSUidProducto: TGuidField;
    RSidGrupo: TStringField;
    RSComisiona: TBooleanField;
    dxDBCheckEdit3: TdxDBCheckEdit;
    RSExistenciaNeg: TBooleanField;
    dxDBCheckEdit4: TdxDBCheckEdit;
    Shape1: TShape;
    Label19: TLabel;
    edCtaIng: TcxDBButtonEdit;
    RSCC: TStringField;
    Existencias: TADODataSet;
    dsExistencias: TDataSource;
    Existenciasid: TGuidField;
    ExistenciasidProducto: TStringField;
    ExistenciasidAlmacen: TStringField;
    ExistenciasExistencia: TFloatField;
    ExistenciasCostoPromedio: TBCDField;
    ExistenciasFecha: TDateTimeField;
    RSUbicacion: TStringField;
    Label8: TLabel;
    dxDBEdit8: TdxDBEdit;
    RSCCDescuento: TStringField;
    RSAutoDescuento: TBooleanField;
    Label9: TLabel;
    edCtaDesc: TcxDBButtonEdit;
    dxDBCheckEdit5: TdxDBCheckEdit;
    dxDBCheckEdit6: TdxDBCheckEdit;
    RSCompuesto: TBooleanField;
    RSDetidProductoDet: TStringField;
    RSDetidProducto: TStringField;
    RSDetCantidad: TFloatField;
    AGetProduct: TAction;
    dxDBCheckEdit7: TdxDBCheckEdit;
    RSParaVender: TBooleanField;
    RSFoto: TBlobField;
    RSCambiarPrecio: TBooleanField;
    dxDBCheckEdit8: TdxDBCheckEdit;
    Label21: TLabel;
    RSidMoneda: TIntegerField;
    dxDBLookupEdit4: TdxDBLookupEdit;
    bEtiqueta: TwwNavButton;
    AEtiqueta: TAction;
    Label10: TLabel;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    Label17: TLabel;
    dxDBEdit14: TdxDBEdit;
    Label18: TLabel;
    RSAncho: TBCDField;
    RSLargo: TBCDField;
    RSAlto: TBCDField;
    RSMedida: TStringField;
    Label20: TLabel;
    cxDBMemo1: TcxDBMemo;
    pcProducto: TdxPageControl;
    tsGeneral: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1id: TdxDBGridColumn;
    dxDBGrid1idProducto: TdxDBGridMaskColumn;
    dxDBGrid1idAlmacen: TdxDBGridMaskColumn;
    dxDBGrid1Existencia: TdxDBGridMaskColumn;
    dxDBGrid1CostoPromedio: TdxDBGridCurrencyColumn;
    dxDBGrid1Fecha: TdxDBGridDateColumn;
    Foto: TcxDBImage;
    qryMoneda: TADOQuery;
    qrySuplidores: TADOQuery;
    qrySuplidoresIdSuplidor: TAutoIncField;
    qrySuplidoresNombre: TStringField;
    qryMonedaidMoneda: TIntegerField;
    qryMonedaMoneda: TStringField;
    qryMonedaCursoLegal: TBooleanField;
    dsSuplidor: TDataSource;
    dsMoneda: TDataSource;
    RSObservacion: TStringField;
    RSPeso: TBCDField;
    RSVolumen: TBCDField;
    RSTiempoCompra: TBCDField;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    dxDBEdit17: TdxDBEdit;
    dxDBEdit18: TdxDBEdit;
    Label25: TLabel;
    dxDBEdit19: TdxDBEdit;
    RSccDevolucion: TStringField;
    Label26: TLabel;
    edCtaDev: TcxDBButtonEdit;
    dxTabSheet1: TdxTabSheet;
    Label29: TLabel;
    Bevel2: TBevel;
    Label27: TLabel;
    Bevel3: TBevel;
    Label4: TLabel;
    dxDBEdit4: TdxDBEdit;
    Bevel4: TBevel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    dxDBEdit16: TdxDBEdit;
    dxTabSheet2: TdxTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    cxButton1: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    RSPartidaArancel: TStringField;
    RSPorcArancel: TFloatField;
    RSDescuentoPermitido: TFloatField;
    RSDescuentoVence: TDateTimeField;
    RSVencimiento: TBooleanField;
    RSIdMonedaCosto: TIntegerField;
    RSCostoBase: TBCDField;
    RSCreditoPorc: TBCDField;
    RSContadoPorc: TBCDField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label36: TLabel;
    Label37: TLabel;
    dxDBEdit9: TdxDBEdit;
    Label38: TLabel;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    GrupoidGrupo: TStringField;
    GrupoGrupo: TStringField;
    GrupoInventario: TStringField;
    GrupoLinea: TStringField;
    GrupoNombreGrupo: TStringField;
    cxGridViewRepository1: TcxGridViewRepository;
    cxGridViewRepository1DBTableView1: TcxGridDBTableView;
    cxGridViewRepository1DBTableView1Inventario: TcxGridDBColumn;
    cxGridViewRepository1DBTableView1Linea: TcxGridDBColumn;
    cxGridViewRepository1DBTableView1NombreGrupo: TcxGridDBColumn;
    wwDBNavigator1Button: TwwNavButton;
    aDetalle: TAction;
    btProdSpec: TcxButton;
    FecDescvence: TcxDBDateEdit;
    DescuentoSucursal: TADODataSet;
    dsDescuentoSucursal: TDataSource;
    DescuentoSucursalidSucursal: TStringField;
    DescuentoSucursalidProducto: TStringField;
    DescuentoSucursalDescuentoPermitido: TBCDField;
    DescuentoSucursalDescuentoVence: TDateTimeField;
    DescuentoSucursalFechaRegistro: TDateTimeField;
    grDescuento: TcxGrid;
    tvDetalle: TcxGridDBTableView;
    grDescuentoLevel1: TcxGridLevel;
    tvDetalleidSucursal: TcxGridDBColumn;
    tvDetalleDescuentoPermitido: TcxGridDBColumn;
    tvDetalleDescuentoVence: TcxGridDBColumn;
    Label39: TLabel;
    Label40: TLabel;
    Sucursallist: TADODataSet;
    dsSucursallist: TDataSource;
    SucursallistidAlmacen: TStringField;
    SucursallistAlmacen: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure AGetProductExecute(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure RSDetCantidadValidate(Sender: TField);
    procedure RSDetidProductoDetValidate(Sender: TField);
    procedure RSDetBeforeInsert(DataSet: TDataSet);
    procedure RSCompuestoValidate(Sender: TField);
    procedure RSCCValidate(Sender: TField);
    procedure RSCCDescuentoValidate(Sender: TField);
    procedure AEtiquetaExecute(Sender: TObject);
    procedure FotoDblClick(Sender: TObject);
    procedure RSReordenValidate(Sender: TField);
    procedure RSMinimoValidate(Sender: TField);
    procedure RSMaximoValidate(Sender: TField);
    procedure edCtaIngPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edCtaDescPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edCtaDescPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure aDetalleExecute(Sender: TObject);
    procedure btProdSpecClick(Sender: TObject);
    procedure AEditarExecute(Sender: TObject);
    procedure grDescuentoEnter(Sender: TObject);
    procedure DescuentoSucursalNewRecord(DataSet: TDataSet);
    procedure ALocalizarExecute(Sender: TObject);
  private
    Moneda : Integer;
    function GetProduct: string;
    procedure ImprimirEtiqueta;
    procedure ValidarMinimo;
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;
  end;

var
  Producto: TProducto;

implementation

uses Udata, uBusqueda, uMarca, UUtiles, uAlmacen,
  uVerImagen, uProductoFindDX, uBuscarCuentaMayor, uProductoDetalle,
  uProductoEspec;

{$R *.dfm}



procedure TProducto.FormCreate(Sender: TObject);
begin
  inherited;
  try
    Moneda := dm.GetDefault('MONEDA_ACTIVA');
  except
    Moneda := 1;
  end;
  LogField := 'Producto';
  TipoDoc := 'PRODUCTO';
  ImageidField := 'uidProducto';
  Detalleobligatorio := false;
  DetailField := 'idProducto';
  MasterField := 'idProducto';
  spName := '';
  Busqfield := 'idProducto';
  tfBusqueda := TProductoFindDX; //TFindProducto;
  OcultarC1 := false;    //oculta la columna 1 en la busqueda
  Marca.Open;
  Grupo.Open;
  TipoImpuesto.Open;
  Unidad.Open;
  Existencias.Open;
  qrySuplidores.Open();
  qryMoneda.Open();
  pcProducto.ActivePageIndex := 0;
  Sucursallist.Open;
  
end;

procedure TProducto.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsidMoneda.Value := Moneda;
  rsidTipoImpuesto.Value := 1;
  rsUidProducto.AsGuid := dm.NewGuid;
  rsidUnidad.Value := dm.GetDefault('Def.UNIDAD.Prod');
  rsMinimo.Value := -1;
  rsMaximo.Value := 0;
  rsReorden.Value := -1;
  rsPrecioContado.value := 0;
  rsPrecioCredito.Value := 0;
  rsInactivo.Value := false;
  rsCalcExistencia.Value := true;
  rsComisiona.Value := true;
  rsExistenciaNeg.Value := false;
  rsParaVender.Value := true;
  rsAutoDescuento.value := true;
  rsCompuesto.value := false;
  rsCambiarPrecio.Value := false;
  rsCostoBase.Value := 0;
  RSCreditoPorc.Value := 0;
  rsContadoPorc.Value := 0;
  RSIdMonedaCosto.Value := rsIdMoneda.Value;
end;

procedure TProducto.FormDestroy(Sender: TObject);
begin
  inherited;
  Marca.Close;
  Grupo.Close;
  TipoImpuesto.Close;
  Unidad.Close;
end;

procedure TProducto.Label14Click(Sender: TObject);
begin
  inherited;
  ModalShow(TMarca);
  Marca.Requery();
end;

procedure TProducto.Label12Click(Sender: TObject);
begin
  inherited;
  ModalShow(TAlmacen);
  Grupo.Requery();
end;

procedure TProducto.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if rsidProducto.isnull then
  Begin
    Existencias.close;

  End
  Else Begin
  Begin
    Existencias.Parameters[1].Value := rsidProducto.value;

  End;
    if Existencias.Active then Existencias.Requery() else Existencias.Open;

  end;

  if rsidProducto.isnull then
  Begin
    DescuentoSucursal.close;
  End
  Else Begin
  Begin
    DescuentoSucursal.Parameters[1].Value := rsidProducto.value;
  End;
    if DescuentoSucursal.Active then DescuentoSucursal.Requery() else DescuentoSucursal.Open;
  end;
end;

procedure TProducto.AGetProductExecute(Sender: TObject);
var
  idProd : variant;
begin
  inherited;
  idProd := GetProduct();
  if idProd <> null then begin
    if not(rsdet.State in dsEditmodes) then rsdet.Edit;
      rsdetidProductoDet.Value := idProd;
  end;
end;


function TProducto.GetProduct() : string;
begin
  inherited;
    result := fbuscar(TProductoFindDX,'idProducto');

end;
procedure TProducto.GridDblClick(Sender: TObject);
begin
  inherited;
  if appestado in [appedit, appinsert] then begin
    if grid.SelectedField.Name = 'RSDetidProductoDet' then
      if AGetProduct.Enabled then
         AGetProduct.Execute;
  end;       
end;

procedure TProducto.RSDetCantidadValidate(Sender: TField);
begin
  inherited;
  if sender.Value <= 0 then
    raise exception.create('La cantidad debe ser mayor que cero');
end;

procedure TProducto.RSDetidProductoDetValidate(Sender: TField);
begin
  inherited;
  if (rsidproducto.value = rsdetidproductodet.Value) then
    raise exception.create('no debe seleccionar el mismo producto en el detalle');
end;

procedure TProducto.RSDetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(rscompuesto.Value) then
    raise exception.create('debe marcar el producto como compuesto');


  if rsidproducto.IsNull then
    raise exception.create('debe seleccionar un producto en la cabecera');



end;

procedure TProducto.RSCompuestoValidate(Sender: TField);
begin
  inherited;
  if not(rsdet.IsEmpty) then
    raise exception.create('No puede cambiar el status de compuesto si tiene productos en el detalle');
end;

procedure TProducto.RSCCValidate(Sender: TField);
var
  g : string;
begin
  inherited;
  dm.VerificarCuenta(sender.Value,g)
end;

procedure TProducto.RSCCDescuentoValidate(Sender: TField);
var
  g : string;
begin
  inherited;
  dm.VerificarCuenta(sender.Value,g);
end;


procedure TProducto.AEtiquetaExecute(Sender: TObject);
begin
  inherited;

  if (not(rs.isempty)) and (not(rsidproducto.isnull)) then begin
    ImprimirEtiqueta();
  end;
end;


procedure TProducto.ImprimirEtiqueta();
Var
  f: TextFile;
  Formato : tStringList;
  Cant : string;
begin
  Formato := tStringList.Create;

  if fileexists('etiqueta.fmt') then begin
    Formato.LoadFromFile('etiqueta.fmt');
  end else begin
    Formato.Add('q288');
    Formato.Add('Q156,20');
    Formato.Add('D10');
    Formato.Add('N');
    Formato.Add('ZT');
    Formato.Add('B030,010,0,1,1,2,70,N,"[CODIGO]"');
    Formato.Add('A030,085,0,2,1,1,N,"[CODIGO]"');
    Formato.Add('A030,105,0,1,1,1,N,"[UBICACION]"');
    Formato.Add('P[CANTIDAD]');
    Formato.Add('FK"*"');
  end;

  Formato.Text := StringReplace(Formato.Text,'[CODIGO]',rsidProducto.asstring, [rfReplaceAll, rfIgnoreCase]);
  Formato.Text := StringReplace(Formato.Text,'[UBICACION]',rsUbicacion.asstring, [rfReplaceAll, rfIgnoreCase]);
  Formato.Text := StringReplace(Formato.Text,'[DESCRIPCION]',rsProducto.asstring, [rfReplaceAll, rfIgnoreCase]);
  Formato.Text := StringReplace(Formato.Text,'[DESCRIPCION_1]',Trim(Copy(rsProducto.asstring,01,20)), [rfReplaceAll, rfIgnoreCase]);
  Formato.Text := StringReplace(Formato.Text,'[DESCRIPCION_2]',Trim(Copy(rsProducto.asstring,20,20)), [rfReplaceAll, rfIgnoreCase]);
  Formato.Text := StringReplace(Formato.Text,'[DESCRIPCION_3]',Trim(Copy(rsProducto.asstring,41,20)), [rfReplaceAll, rfIgnoreCase]);
  Formato.Text := StringReplace(Formato.Text,'[DESCRIPCION_4]',Trim(Copy(rsProducto.asstring,60,20)), [rfReplaceAll, rfIgnoreCase]);
  Formato.Text := StringReplace(Formato.Text,'[DESCRIPCION_5]',Trim(Copy(rsProducto.asstring,81,20)), [rfReplaceAll, rfIgnoreCase]);
  Cant := InputBox('Cuantas Etiquetas desea Imprimir', 'Cantidad', '1');
  Formato.Text := StringReplace(Formato.Text,'[CANTIDAD]',inttostr(savestrtoint(cant)), [rfReplaceAll, rfIgnoreCase]);
  AssignFile(f,'LPT1');
  Rewrite(f);
  WriteLn(f,Formato.Text);
  System.CloseFile(f);
  Formato.Free;
end;

procedure TProducto.browsebotonstate;
begin
  inherited;
  btProdSpec.Enabled := True;
end;

procedure TProducto.editbotonstate;
begin
  inherited;
  btProdSpec.Enabled := False;
end;

procedure TProducto.newbotonstate;
begin
  inherited;
  btProdSpec.Enabled := False;
end;

procedure TProducto.FotoDblClick(Sender: TObject);
begin
  inherited;
  MostrarImagen(Foto.Picture);
end;

procedure TProducto.RSReordenValidate(Sender: TField);
begin
  inherited;
  ValidarMinimo();
end;

procedure TProducto.ValidarMinimo();
begin
  if (rsminimo.value <> -1) and (rsReorden.value <> -1) then
    if rsminimo.value >  rsReorden.value then
      raise exception.create('El minimo critico debe ser menor que el punto de reorden');

  if (rsMaximo.value <> 0) and (rsReorden.value <> -1) then
    if rsMaximo.value <=  rsReorden.value then
      raise exception.create('El punto de reorden debe ser menor que el Maximo');


end;


procedure TProducto.RSMinimoValidate(Sender: TField);
begin
  inherited;
   ValidarMinimo();
end;

procedure TProducto.RSMaximoValidate(Sender: TField);
begin
  inherited;
ValidarMinimo();
end;

procedure TProducto.edCtaIngPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: string;
begin
  inherited;
  if appEstado <> appbrowse then begin
    i := BuscarCtaDetalle();
    if i <> '' then begin
      RSCC.Value := i;
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TProducto.edCtaDescPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: string;
begin
  inherited;
  if appEstado <> appbrowse then begin
    i := BuscarCtaDetalle();
    if i <> '' then begin
      RSCCDescuento.Value := i;
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TProducto.edCtaDescPropertiesChange(Sender: TObject);
var
  i: string;
begin
  inherited;
  if appEstado <> appbrowse then begin
    i := BuscarCtaDetalle();
    if i <> '' then begin
      RSccDevolucion.Value := i;
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TProducto.cxButton1Click(Sender: TObject);
var
  tasaCosto, tasaVentas: Single;
begin
  inherited;
  if appEstado = appBrowse then Exit;

  if not Confirmar('Esta seguro de recalcular los precios, los precios actuales se perderan?') then Exit;

  tasaCosto := dm.TasaActual(rsIdMonedaCosto.Value);
  tasaVentas := dm.TasaActual(rsIdMoneda.Value);

  RSPrecioContado.Value := ((rsCostoBase.Value * tasaCosto) / tasaVentas) * (1 + (RSContadoPorc.AsFloat / 100.00));
  RSPrecioCredito.Value := ((rsCostoBase.Value * tasaCosto) / tasaVentas) * (1 + (RSCreditoPorc.AsFloat / 100.00));
end;

procedure TProducto.aDetalleExecute(Sender: TObject);
begin
  inherited;
  if not(rsidproducto.isnull) then
    Modalshow(Tproductodetalle, showfind, rsidproducto.value, 'idProducto', false);
end;

procedure TProducto.btProdSpecClick(Sender: TObject);
begin
  inherited;
  ModalShow(TProductoEspec, ShowFindInsert, rsidproducto.value, 'idProducto', true);
end;

procedure TProducto.AEditarExecute(Sender: TObject);
begin
  inherited;

    DescuentoSucursal.close;
    DescuentoSucursal.Parameters[1].Value := rsidProducto.value;
    DescuentoSucursal.Open;


end;

procedure TProducto.grDescuentoEnter(Sender: TObject);
begin
  inherited;

  if DescuentoSucursal.IsEmpty() then
      DescuentoSucursal.Append();

end;

procedure TProducto.DescuentoSucursalNewRecord(DataSet: TDataSet);
begin
  inherited;
    DescuentoSucursalidProducto.Value := rsidProducto.value;
    DescuentoSucursalFechaRegistro.Value := dm.FechaHoy;
end;

procedure TProducto.ALocalizarExecute(Sender: TObject);
begin
  inherited;
    {DescuentoSucursal.close;
    DescuentoSucursal.Parameters[1].Value := rsidProducto.value;
    DescuentoSucursal.Open;   }
end;

end.

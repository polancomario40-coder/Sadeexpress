unit uFisico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, DB,
  ADODB, ActnList, ImgList, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr,
  wwdblook, Wwdbdlg, kbmMemTable, DBGrids, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxExportGrid4Link,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kbmMemCSVStreamFormat, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands,
  ppClass, ppVar, ppCtrls, ppStrtch, ppMemo, ppPrnabl, ppCache, ppProd,
  ppReport, cxContainer, cxCheckBox, cxDBEdit, cxLookAndFeelPainters,
  cxButtons, cxGridBandedTableView, cxGridDBBandedTableView, cxButtonEdit,
  ppParameter;

type
  TFisico = class(Tfformmant2)
    dxDBEdit2: TdxDBEdit;
    Label2: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    dxDBEdit5: TdxDBEdit;
    ProductoAct: TADODataSet;
    ProductoActidProducto: TStringField;
    ProductoActProducto: TStringField;
    ProductoActExistencia: TFloatField;
    ProductoActCostoPromedio: TBCDField;
    ProductoActPrecioContado: TBCDField;
    ProductoActPrecioCredito: TBCDField;
    ProductoActInactivo: TBooleanField;
    ProductoActporciento: TFloatField;
    ProductoActidUnidad: TStringField;
    dsProductoAct: TDataSource;
    Almacen: TADODataSet;
    dsAlmacen: TDataSource;
    Label8: TLabel;
    dxDBLookupEdit2: TdxDBLookupEdit;
    RSidFisico: TGuidField;
    RSFisico: TStringField;
    RSFecha: TDateTimeField;
    RSHora: TDateTimeField;
    RSidAlmacen: TStringField;
    RSPosteado: TBooleanField;
    RSUsuario: TStringField;
    RSidCompania: TIntegerField;
    RSDetidFisicoDet: TGuidField;
    RSDetidFisico: TGuidField;
    RSDetProducto: TStringField;
    RSDetExistencia: TFloatField;
    RSDetCosto: TBCDField;
    aImportarFisico: TAction;
    bImportar: TwwNavButton;
    RSDetidProducto: TStringField;
    InvFisicoPostear: TADOCommand;
    RSDetLinea: TIntegerField;
    AGetProduct: TAction;
    ProductoActMinimo: TFloatField;
    ProductoActReorden: TFloatField;
    ProductoActAutoDescuento: TBooleanField;
    ProductoActCambiarPrecio: TBooleanField;
    ProductoActDescuento: TFloatField;
    ProductoActExistenciaNeg: TBooleanField;
    ProductoActidListaPrecio: TStringField;
    ProductoActidPartida: TStringField;
    ProductoActidMoneda: TIntegerField;
    Import: TkbmMemTable;
    ImportCantidad: TBCDField;
    ImportidProducto: TStringField;
    dsimport: TDataSource;
    kbmCSVStreamFormat1: TkbmCSVStreamFormat;
    OpenFile: TOpenDialog;
    FisicoExistencia: TADODataSet;
    dsFisicoExistencia: TDataSource;
    FisicoExistenciaROWID: TGuidField;
    FisicoExistenciaidFisico: TGuidField;
    FisicoExistenciaFecha: TDateTimeField;
    FisicoExistenciaidAlmacen: TStringField;
    FisicoExistenciaidProducto: TStringField;
    FisicoExistenciaProducto: TStringField;
    FisicoExistenciaMaximo: TFloatField;
    FisicoExistenciaMinimo: TFloatField;
    FisicoExistenciaReorden: TFloatField;
    FisicoExistenciareferencia: TStringField;
    FisicoExistenciaidUnidad: TStringField;
    FisicoExistenciaExistencia: TFloatField;
    FisicoExistenciaExistenciaFisico: TFloatField;
    FisicoExistenciaGrupo: TStringField;
    FisicoExistenciaLinea: TStringField;
    FisicoExistenciaInventario: TStringField;
    FisicoExistenciaDiferencia: TFloatField;
    RptFisicoExistencia: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel1: TppLabel;
    ppVariable1: TppVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText11: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText2: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine5: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine4: TppLine;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine3: TppLine;
    FisicoExistenciaUbicacion: TStringField;
    plFisicoExistenca: TppDBPipeline;
    bImprimir: TwwNavButton;
    aPostearFisico: TAction;
    bPostear: TwwNavButton;
    cxDBCheckBox1: TcxDBCheckBox;
    mErrores: TkbmMemTable;
    mErroresCodigo: TStringField;
    mErroresError: TStringField;
    dsErr: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Error: TcxGridDBColumn;
    mErroresLinea: TIntegerField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxButton1: TcxButton;
    sd: TSaveDialog;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxButton2: TcxButton;
    rsDet2Copy: TADODataSet;
    rsDet2CopyidFisicoDet: TGuidField;
    rsDet2CopyidFisico: TGuidField;
    rsDet2CopyidProducto: TStringField;
    rsDet2CopyProducto: TStringField;
    rsDet2CopyExistencia: TFloatField;
    rsDet2CopyCosto: TBCDField;
    rsDet2CopyLinea: TIntegerField;
    rs2Copy: TADODataSet;
    rs2CopyidFisico: TGuidField;
    rs2CopyFisico: TStringField;
    rs2CopyFecha: TDateTimeField;
    rs2CopyHora: TDateTimeField;
    rs2CopyidAlmacen: TStringField;
    rs2CopyPosteado: TBooleanField;
    rs2CopyUsuario: TStringField;
    rs2CopyidCompania: TIntegerField;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1idProducto: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Producto: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Existencia: TcxGridDBBandedColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    RSParcial: TBooleanField;
    cxDBCheckBox2: TcxDBCheckBox;
    Label1: TLabel;
    ProductoActCalcExistencia: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure GridColExit(Sender: TObject);
    procedure RSDetBeforePost(DataSet: TDataSet);
    procedure RSDetExistenciaValidate(Sender: TField);
    procedure RSDetidProductoValidate(Sender: TField);
    procedure aImportarFisicoExecute(Sender: TObject);
    procedure AGetProductExecute(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppShape1Print(Sender: TObject);
    procedure aPostearFisicoExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1idProductoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid2Enter(Sender: TObject);
  private
    function LocateProducto(idProducto: string): boolean;
    function GetProduct: variant;
    procedure RegError(const idp, msg: string; const row: Integer);
    { Private declarations }
  public
    procedure DoShowstate; override;
    { Public declarations }
  protected
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;
  end;

var
  Fisico: TFisico;

implementation

uses Udata, UUtiles, ubusqueda, uProducto, uProductoFindDX,
  uBusquedaRangoDX;

{$R *.dfm}


procedure TFisico.FormCreate(Sender: TObject);
begin
  almacen.Open;
  MasterField := 'idFisico';
  DetailField := 'idFisico';
  inherited;
  Modulo := 'Inventario';
  spName := 'invFindFisicoRango';
  Busqfield := 'idFisico';
  CampodeCierre := 'Fecha';
  tfBusqueda := TBusquedaRangoDX;
  OcultarC1 := True;       //oculta la columna 1 en la busqueda
  if not(ds2.dataset.active) then ds2.dataset.open ;
end;

procedure TFisico.newbotonstate;
begin
  inherited;
  aPostearFisico.Enabled := false;
  aImportarFisico.Enabled := true;
  uutiles.CxGridReadOnly(false,cxgrid2);
end;

procedure TFisico.editbotonstate;
begin
  inherited;
  aPostearFisico.Enabled := false;
  aImportarFisico.Enabled := true;
  uutiles.CxGridReadOnly(false,cxgrid2);
end;

procedure TFisico.browsebotonstate;
begin
  inherited;
  aImportarFisico.Enabled := false;
  aPostearFisico.Enabled := true;
  uutiles.CxGridReadOnly(true,cxgrid2);
end;

procedure TFisico.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSidFisico.AsGuid := dm.NewGuid;
  RSFecha.Value := dm.DBFecha;
  RSidCompania.Value := dm.CompaniaActual();
  RSUsuario.Value := dm.UsuarioActual;
  rsPosteado.Value := False;
  rsidAlmacen.Value := dm.GetDefault('ALMACENDEFAULT');
  rsParcial.Value := true;
end;

procedure TFisico.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSDetidFisicoDet.AsGuid := dm.NewGuid;
  RSDetExistencia.value := 0;
  RSDetCosto.value := 0;
  rsdetlinea.Value := rsdet.RecordCount;
end;

procedure TFisico.GridColExit(Sender: TObject);
begin
  inherited;
  grid.RedrawGrid;
end;

procedure TFisico.RSDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if rsdetidproducto.IsNull then
    raise exception.Create('Debe seleccionar un producto');
end;

procedure TFisico.RSDetExistenciaValidate(Sender: TField);
begin
  inherited;
  if sender.Value < 0 then
     Raise exception.Create('La cantidad no debe ser menor cero');

end;

Function TFisico.LocateProducto(idProducto : string): boolean;
begin
  if (ProductoAct.active) and (ProductoActidProducto.value = idProducto) then
  begin
    Result := true;
    exit;
  end
  else
  begin
    ProductoAct.Parameters[1].value := idProducto;
    ProductoAct.Parameters[2].value := NULL;
    ProductoAct.Parameters[3].value := rsidAlmacen.value;
    ProductoAct.Parameters[4].value := Null;
    productoAct.close;
    productoAct.Open;
  end;
  Result := not(ProductoAct.isempty);
end;


procedure TFisico.RSDetidProductoValidate(Sender: TField);
begin
  inherited;


  if LocateProducto(sender.value) then
  begin
//    rsdetCosto.value    := ProductoActCostoPromedio.AsCurrency; // * rsDetCantidad.AsCurrency;
    rsdetProducto.value := ProductoActProducto.AsString;
    if Not(ProductoActcalcexistencia.value)  then
      raise exception.Create('El producto codigo ' + rsdetidproducto.asstring + ' no esta configurado para llevar existencia' );
    //rsdetidUnidad.Value := ProductoActidUnidad.Value;
  end
  else
     raise exception.create('Producto invalido');
end;

procedure TFisico.DoShowstate;
begin
  inherited;
end;

procedure TFisico.aImportarFisicoExecute(Sender: TObject);
begin
  inherited;
  import.open;
  if not(OpenFile.execute) then begin
    import.close;
    abort;
  end;

  mErrores.Close();
  mErrores.Open();

  import.LoadFromFile(OpenFile.FileName);
  import.First;
  rsdet.DisableControls;
  try
    while not(import.eof) do begin
      if not(rsdet.Locate('idProducto', importidproducto.Value, [])) then begin
        try
          rsdet.Insert;
          rsdetidProducto.Value := importidproducto.Value;
          rsdetexistencia.value   := importcantidad.value;
          rsdet.post;
        except
          on e: Exception do begin
            rsdet.cancel;
            RegError(importIdProducto.Value, 'Error importando datos: ' + e.Message , Import.RecNo);
          end;
        end;
      end else begin
        RegError(importIdProducto.Value, 'Codigo de Producto Duplicado, No se importara mas de una vez,  ' , Import.RecNo);
      end;
      import.Next;
    end;
  finally
    import.close;
    rsdet.EnableControls;
  end;

end;

procedure TFisico.RegError(const idp, msg: string; const row: Integer);
begin
  mErrores.AppendRecord([idp,msg,row]);
end;


function TFisico.GetProduct() : variant;
begin
  inherited;
  result := fbuscar(TProductofindDX, 'idProducto');
end;

procedure TFisico.AGetProductExecute(Sender: TObject);
var
  idProd : variant;
begin
  inherited;
  idProd := GetProduct();
  if idProd <> null then begin
    if not(rsdet.State in dsEditmodes) then rsdet.Edit;
      rsdetidProducto.Value := idProd;
  end;
end;

procedure TFisico.AprintExecute(Sender: TObject);
begin
  inherited;
  FisicoExistencia.Close;
  FisicoExistencia.Parameters[1].value := rsidFisico.value;
  FisicoExistencia.Open;
  Imprimir(rptFisicoExistencia);
  FisicoExistencia.Close;
end;

procedure TFisico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  almacen.Close;
end;

procedure TFisico.ppShape1Print(Sender: TObject);
begin
  inherited;
  ppShape1.visible := not(ppShape1.visible);
end;

procedure TFisico.aPostearFisicoExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Desea generar los movimientos de ajustes de almacen por fisico?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin

    if rsidFisico.isnull then raise exception.Create('No ha seleccionado un Fisico para postear');
    if rsPosteado.Value then raise exception.Create('Este fisico ya ha sido posteado');
    InvFisicoPostear.Parameters[1].Value := rsidFisico.Value;
    InvFisicoPostear.Parameters[2].Value := dm.UsuarioActual;
    InvFisicoPostear.Execute;
    If InvFisicoPostear.Parameters[0].Value <> 0 then
      raise exception.Create('Error al postear el Fisico / virifique que la fecha del fisico no este cerrada');
  end;
end;

procedure TFisico.cxButton1Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,cxGrid1);
end;

procedure TFisico.cxButton2Click(Sender: TObject);
var
  i: Variant;
begin
  inherited;
  if appEstado <> appBrowse then begin
    i := TBusquedaRangoDX.Buscar('idFisico',True, 'invFindFisicoRango');
    if i <> null then begin
      if not rsDet.IsEmpty then begin
        if not Confirmar('Importar un fisico eliminara los productos digitados en este, desea continuar?') then
          Exit;
      end;
      rsDet.DisableControls();
      try
        rsDet.First();
        while not rsDet.Eof do
          rsDet.Delete();
        with rs2Copy do begin
          Close();
          Parameters[1].Value := i;
          Open();
          if not eof then begin
            RSidAlmacen.Value := rs2CopyidAlmacen.Value;
            RSfisico.Value := rs2CopyFisico.Value;
          end;
        end;
        with rsDet2Copy do begin
          close();
          Parameters[1].Value := i;
          Open();
          while not Eof do begin
            rsDet.Append();
            rsDetIdProducto.Value := rsDet2CopyIdProducto.Value;
            rsDet.Post();
            Next();
          end;
          rsDet.First();
        end;
      finally
        rsDet.EnableControls();
      end;
    end;
  end;
end;

procedure TFisico.cxGrid2DBBandedTableView1idProductoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if not (appEstado in [appinsert, appedit]) then
    abort;

   if AGetProduct.Enabled then
       AGetProduct.Execute;
end;

procedure TFisico.cxGrid2Enter(Sender: TObject);
begin
  inherited;
  if not (appEstado in [appinsert, appedit]) then
    abort;

  rsdet.append;
end;

end.



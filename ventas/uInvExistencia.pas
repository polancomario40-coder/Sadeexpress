unit uInvExistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, StdCtrls, Buttons, dxCntner, dateutils,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxTL, dxDBCtrl, dxDBGrid, dxEdLib,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppMemo, dxDBTLCl,
  dxGrClms, cxControls, cxContainer, cxEdit, cxCheckBox, ComCtrls,
  ppParameter;

type
  TInvExistencia = class(TFForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Almacen: TADODataSet;
    Inventario: TADODataSet;
    Grupo: TADODataSet;
    Linea: TADODataSet;
    dsLinea: TwwDataSource;
    dsGrupo: TwwDataSource;
    dsInv: TwwDataSource;
    AlmacenAlmacen: TStringField;
    GrupoGrupo: TStringField;
    LineaLinea: TStringField;
    InventarioInventario: TStringField;
    luGrupo: TdxLookupEdit;
    luInv: TdxLookupEdit;
    luLinea: TdxLookupEdit;
    luAlm: TdxLookupEdit;
    BitBtn1: TBitBtn;
    rsExistencias: TADODataSet;
    rsExistenciasidProducto: TStringField;
    rsExistenciasProducto: TStringField;
    rsExistenciasMaximo: TFloatField;
    rsExistenciasMinimo: TFloatField;
    rsExistenciasReorden: TFloatField;
    rsExistenciasExistencia: TFloatField;
    rsExistenciasGrupo: TStringField;
    rsExistenciasLinea: TStringField;
    rsExistenciasInventario: TStringField;
    rsExistenciasidAlmacen: TStringField;
    rsExistenciasAlmacen: TStringField;
    dsExistencias: TDataSource;
    dtFecha: TdxDateEdit;
    Label5: TLabel;
    rsExistenciasROWID: TGuidField;
    Report: TppReport;
    BitBtn2: TBitBtn;
    InventarioidInventario: TStringField;
    GrupoidGrupo: TStringField;
    AlmacenidAlmacen: TStringField;
    LineaidLinea: TStringField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    rsExistenciasFecha: TDateTimeField;
    rsExistenciasreferencia: TStringField;
    rsExistenciasCostoPromedio: TFloatField;
    rsExistenciasOrdenar: TFloatField;
    rsExistenciasStatus: TStringField;
    rsExistenciasidUnidad: TStringField;
    plExistencias: TppDBPipeline;
    cbReorden: TcxCheckBox;
    BitBtn5: TBitBtn;
    OpenFile: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TdxDBGrid;
    GridROWID: TdxDBGridColumn;
    GrididProducto: TdxDBGridMaskColumn;
    GridProducto: TdxDBGridMaskColumn;
    GridExistencia: TdxDBGridMaskColumn;
    GridCostoPromedio: TdxDBGridMaskColumn;
    GridColumn18: TdxDBGridMaskColumn;
    GridStatus: TdxDBGridMaskColumn;
    GridOrdenar: TdxDBGridMaskColumn;
    GridReorden: TdxDBGridMaskColumn;
    GridMinimo: TdxDBGridMaskColumn;
    GridMaximo: TdxDBGridMaskColumn;
    GridGrupo: TdxDBGridMaskColumn;
    GridLinea: TdxDBGridMaskColumn;
    GridInventario: TdxDBGridMaskColumn;
    GrididAlmacen: TdxDBGridMaskColumn;
    GridAlmacen: TdxDBGridMaskColumn;
    GridFecha: TdxDBGridDateColumn;
    Gridreferencia: TdxDBGridMaskColumn;
    Grid2: TdxDBGrid;
    Grid2ROWID: TdxDBGridColumn;
    Grid2idProducto: TdxDBGridMaskColumn;
    Grid2Producto: TdxDBGridMaskColumn;
    Grid2Maximo: TdxDBGridMaskColumn;
    Grid2Minimo: TdxDBGridMaskColumn;
    Grid2Reorden: TdxDBGridMaskColumn;
    Grid2Existencia: TdxDBGridMaskColumn;
    Grid2Grupo: TdxDBGridMaskColumn;
    Grid2Linea: TdxDBGridMaskColumn;
    Grid2Inventario: TdxDBGridMaskColumn;
    Grid2idAlmacen: TdxDBGridMaskColumn;
    Grid2Almacen: TdxDBGridMaskColumn;
    Grid2Fecha: TdxDBGridDateColumn;
    Grid2referencia: TdxDBGridMaskColumn;
    Grid2CostoPromedio: TdxDBGridMaskColumn;
    Grid2Ordenar: TdxDBGridMaskColumn;
    Grid2Status: TdxDBGridMaskColumn;
    Grid2idUnidad: TdxDBGridMaskColumn;
    rsExistenciasCostoTotal: TCurrencyField;
    Grid2Column19: TdxDBGridCurrencyColumn;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel1: TppLabel;
    ppVariable1: TppVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText11: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText2: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape8: TppShape;
    ppDBCalc5: TppDBCalc;
    ppLabel20: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape9: TppShape;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape7: TppShape;
    ppLine6: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel19: TppLabel;
    ppDBText15: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape6: TppShape;
    ppLine5: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape5: TppShape;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel17: TppLabel;
    ppDBText17: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppShape3: TppShape;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBText18: TppDBText;
    rsExistenciasUbicacion: TStringField;
    GridColumn19: TdxDBGridColumn;
    ppDBText19: TppDBText;
    ppLabel21: TppLabel;
    Grid2Ubicacion: TdxDBGridColumn;
    rsExistenciasMarca: TStringField;
    GridColumn20: TdxDBGridColumn;
    Grid2Column21: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure luInvChange(Sender: TObject);
    procedure luLineaChange(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure dtFechaChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure rsExistenciasCalcFields(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvExistencia: TInvExistencia;

implementation

uses Udata;

{$R *.dfm}

procedure TInvExistencia.FormCreate(Sender: TObject);
begin
  inherited;
  dtFecha.Date := dm.FechaHoy ;
  Almacen.Open();
  Inventario.Open();
  linea.Open();
  Grupo.Open();

end;

procedure TInvExistencia.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with rsExistencias do begin
    Close();
    
    Parameters[1].Value := luGrupo.LookupKeyValue;
    Parameters[2].Value := luLinea.LookupKeyValue;
    Parameters[3].Value := luInv.LookupKeyValue;
    Parameters[4].Value := luAlm.LookupKeyValue;
    Parameters[5].Value := dtFecha.Date;
    Parameters[6].Value := cbReorden.Checked;
    Open();
  end;
end;

procedure TInvExistencia.luInvChange(Sender: TObject);
begin
  inherited;
  luLinea.LookupKeyValue := Null;
end;

procedure TInvExistencia.luLineaChange(Sender: TObject);
begin
  inherited;
  luGrupo.LookupKeyValue := Null;
end;

procedure TInvExistencia.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Hasta: '+ dtFecha.Text;
end;

procedure TInvExistencia.BitBtn2Click(Sender: TObject);
begin
  inherited;
    Imprimir(Report);
end;

procedure TInvExistencia.ppShape1Print(Sender: TObject);
begin
  inherited;
  ppShape1.Visible := not ppShape1.Visible;
end;

procedure TInvExistencia.dtFechaChange(Sender: TObject);
begin
  inherited;
  dm.fechahoy := dtFecha.Date;
end;

procedure TInvExistencia.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Grid.FullExpand;  
end;

procedure TInvExistencia.BitBtn4Click(Sender: TObject);
begin
  inherited;
  Grid.FullCollapse;
end;

procedure TInvExistencia.rsExistenciasCalcFields(DataSet: TDataSet);
begin
  inherited;
  rsExistenciasCostoTotal.Value := rsExistenciasCostoPromedio.Value * rsExistenciasExistencia.Value;
end;

procedure TInvExistencia.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if PAgeControl1.ActivePageIndex = 0 then begin
    if OpenFile.Execute then Grid.SaveToXLS(openfile.Filename,true);
  end else begin
    if OpenFile.Execute then Grid2.SaveToXLS(openfile.Filename,true);
  end;
end;

end.

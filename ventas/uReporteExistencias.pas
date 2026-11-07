unit uReporteExistencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, StdCtrls, Buttons, dxCntner, dateutils,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxTL, dxDBCtrl, dxDBGrid, dxEdLib,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppParameter;

type
  TExistencias = class(TFForm)
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
    dxDBGrid1: TdxDBGrid;
    dsExistencias: TDataSource;
    dxDBGrid1idProducto: TdxDBGridMaskColumn;
    dxDBGrid1Producto: TdxDBGridMaskColumn;
    dxDBGrid1Maximo: TdxDBGridMaskColumn;
    dxDBGrid1Minimo: TdxDBGridMaskColumn;
    dxDBGrid1Reorden: TdxDBGridMaskColumn;
    dxDBGrid1Existencia: TdxDBGridMaskColumn;
    dxDBGrid1Grupo: TdxDBGridMaskColumn;
    dxDBGrid1Linea: TdxDBGridMaskColumn;
    dxDBGrid1Inventario: TdxDBGridMaskColumn;
    dxDBGrid1idAlmacen: TdxDBGridMaskColumn;
    dtFecha: TdxDateEdit;
    Label5: TLabel;
    rsExistenciasROWID: TGuidField;
    plExistencias: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppVariable1: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    BitBtn2: TBitBtn;
    ppShape1: TppShape;
    InventarioidInventario: TStringField;
    GrupoidGrupo: TStringField;
    AlmacenidAlmacen: TStringField;
    LineaidLinea: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure luInvChange(Sender: TObject);
    procedure luLineaChange(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure dtFechaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Existencias: TExistencias;

implementation

uses Udata;

{$R *.dfm}

procedure TExistencias.FormCreate(Sender: TObject);
begin
  inherited;
  dtFecha.Date := dm.FechaHoy ;
  Almacen.Open();
  Inventario.Open();
  linea.Open();
  Grupo.Open();
  luAlm.LookupKeyValue := '';
end;

procedure TExistencias.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with rsExistencias do begin
    Close();
    
    Parameters[1].Value := luGrupo.LookupKeyValue;
    Parameters[2].Value := luLinea.LookupKeyValue;
    Parameters[3].Value := luInv.LookupKeyValue;
    Parameters[4].Value := luAlm.LookupKeyValue;
    Parameters[5].Value := dtFecha.Date;
    Open();
  end;
end;

procedure TExistencias.luInvChange(Sender: TObject);
begin
  inherited;
  luLinea.LookupKeyValue := 0;
end;

procedure TExistencias.luLineaChange(Sender: TObject);
begin
  inherited;
  luGrupo.LookupKeyValue := 0;
end;

procedure TExistencias.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Hasta: '+ dtFecha.Text;
end;

procedure TExistencias.BitBtn2Click(Sender: TObject);
begin
  inherited;
    Imprimir(Report);
end;

procedure TExistencias.ppShape1Print(Sender: TObject);
begin
  inherited;
  ppShape1.Visible := not ppShape1.Visible;
end;

procedure TExistencias.dtFechaChange(Sender: TObject);
begin
  inherited;
  dm.fechahoy := dtFecha.Date;
end;

end.

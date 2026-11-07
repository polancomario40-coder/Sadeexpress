unit uInvMovimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, StdCtrls, Buttons, dxCntner, dateutils,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxTL, dxDBCtrl, dxDBGrid, dxEdLib,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxDBTLCl,
  dxGrClms, ppStrtch, ppMemo, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, cxExportGrid4Link, cxLookAndFeelPainters, cxButtons,
  ppParameter;

type
  TInvMovimiento = class(TFForm)
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
    rsMovimiento: TADODataSet;
    dsMovimiento: TDataSource;
    Desde: TdxDateEdit;
    Label5: TLabel;
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
    BitBtn2: TBitBtn;
    InventarioidInventario: TStringField;
    GrupoidGrupo: TStringField;
    AlmacenidAlmacen: TStringField;
    LineaidLinea: TStringField;
    Label6: TLabel;
    Hasta: TdxDateEdit;
    rsMovimientoID: TGuidField;
    rsMovimientoInventario: TStringField;
    rsMovimientoLinea: TStringField;
    rsMovimientoGrupo: TStringField;
    rsMovimientoidAlmacen: TStringField;
    rsMovimientoidProducto: TStringField;
    rsMovimientoProducto: TStringField;
    rsMovimientoInicial: TFloatField;
    rsMovimientoEntradas: TBCDField;
    rsMovimientoSalidas: TBCDField;
    rsMovimientoFinal: TFloatField;
    plMovimiento: TppDBPipeline;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    rsMovimientoDesde: TDateTimeField;
    rsMovimientoHasta: TDateTimeField;
    ppLabel12: TppLabel;
    ppDBText11: TppDBText;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    ppLine3: TppLine;
    ppDBMemo1: TppDBMemo;
    Grid: TcxGrid;
    GridLevel1: TcxGridLevel;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1ID: TcxGridDBColumn;
    GridDBTableView1Inventario: TcxGridDBColumn;
    GridDBTableView1Linea: TcxGridDBColumn;
    GridDBTableView1Grupo: TcxGridDBColumn;
    GridDBTableView1idAlmacen: TcxGridDBColumn;
    GridDBTableView1idProducto: TcxGridDBColumn;
    GridDBTableView1Producto: TcxGridDBColumn;
    GridDBTableView1Inicial: TcxGridDBColumn;
    GridDBTableView1Entradas: TcxGridDBColumn;
    GridDBTableView1Salidas: TcxGridDBColumn;
    GridDBTableView1Final: TcxGridDBColumn;
    rsMovimientoidUnidad: TStringField;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    OpenFile: TOpenDialog;
    cxButton4: TcxButton;
    rsMovimientoUbicacion: TStringField;
    rsMovimientoCritico: TFloatField;
    rsMovimientoMaximo: TFloatField;
    rsMovimientoMinimo: TFloatField;
    rsMovimientoUltimaSalida: TDateTimeField;
    rsMovimientoAPedir: TFloatField;
    GridDBTableView1DBColumn2: TcxGridDBColumn;
    GridDBTableView1DBColumn3: TcxGridDBColumn;
    GridDBTableView1DBColumn4: TcxGridDBColumn;
    GridDBTableView1DBColumn5: TcxGridDBColumn;
    GridDBTableView1DBColumn6: TcxGridDBColumn;
    ppReport1: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppShape3: TppShape;
    ppDBText2: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppFooterBand2: TppFooterBand;
    ppLine4: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText17: TppDBText;
    ppLabel14: TppLabel;
    ppLine5: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText18: TppDBText;
    ppLabel23: TppLabel;
    ppDBText19: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel24: TppLabel;
    ppDBText20: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel25: TppLabel;
    ppDBText21: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppDBText22: TppDBText;
    ppLabel26: TppLabel;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLine6: TppLine;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    GridDBTableView1DBColumn7: TcxGridDBColumn;
    ppDBText29: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText30: TppDBText;
    rsMovimientoST: TStringField;
    GridDBTableView1DBColumn8: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure luInvChange(Sender: TObject);
    procedure luLineaChange(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure BitBtn2Click(Sender: TObject);
    procedure DesdeChange(Sender: TObject);
    procedure HastaChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvMovimiento: TInvMovimiento;

implementation

uses Udata;

{$R *.dfm}

procedure TInvMovimiento.FormCreate(Sender: TObject);
begin
  inherited;
  Desde.date := dm.FechaDesde;
  Hasta.date := dm.FechaHasta;
  
  Almacen.Open();
  Inventario.Open();
  linea.Open();
  Grupo.Open();

end;

procedure TInvMovimiento.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with rsMovimiento do begin
    Close();
    Parameters[1].Value := Desde.date;
    Parameters[2].Value := Hasta.date;
    Parameters[3].Value := luGrupo.LookupKeyValue;
    Parameters[4].Value := luLinea.LookupKeyValue;
    Parameters[5].Value := luInv.LookupKeyValue;
    Parameters[6].Value := luAlm.LookupKeyValue;
    Open();
  end;
end;

procedure TInvMovimiento.luInvChange(Sender: TObject);
begin
  inherited;
  luLinea.LookupKeyValue := Null;
end;

procedure TInvMovimiento.luLineaChange(Sender: TObject);
begin
  inherited;
  luGrupo.LookupKeyValue := Null;
end;

procedure TInvMovimiento.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
//  Value := 'Hasta: '+ dtFecha.Text;
end;

procedure TInvMovimiento.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Imprimir(Report);
end;

procedure TInvMovimiento.DesdeChange(Sender: TObject);
begin
  inherited;
  dm.fechadesde := desde.Date;
end;

procedure TInvMovimiento.HastaChange(Sender: TObject);
begin
  inherited;
  dm.fechahasta := hasta.Date;
end;

procedure TInvMovimiento.BitBtn3Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullExpand;
end;

procedure TInvMovimiento.BitBtn4Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TInvMovimiento.cxButton4Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then ExportGrid4ToExcel(openfile.filename, Grid);
end;

end.

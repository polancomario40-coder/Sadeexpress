unit uVentasProductoAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Wwdatsrc, cxExportGrid4Link, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TVentaProductoAnual = class(TFForm)
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    RS: TADODataSet;
    GridDBTableView1Enero: TcxGridDBColumn;
    GridDBTableView1Febrero: TcxGridDBColumn;
    GridDBTableView1Marzo: TcxGridDBColumn;
    GridDBTableView1Abril: TcxGridDBColumn;
    GridDBTableView1Mayo: TcxGridDBColumn;
    GridDBTableView1Junio: TcxGridDBColumn;
    GridDBTableView1Julio: TcxGridDBColumn;
    GridDBTableView1Agosto: TcxGridDBColumn;
    GridDBTableView1Septiembre: TcxGridDBColumn;
    GridDBTableView1Octubre: TcxGridDBColumn;
    GridDBTableView1Noviembre: TcxGridDBColumn;
    GridDBTableView1Diciembre: TcxGridDBColumn;
    GridDBTableView1TotalGral: TcxGridDBColumn;
    GridDBTableView1id: TcxGridDBColumn;
    OpenFile: TOpenDialog;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    RSID: TGuidField;
    RSEnero: TBCDField;
    RSFebrero: TBCDField;
    RSMarzo: TBCDField;
    RSAbril: TBCDField;
    RSMayo: TBCDField;
    RSJunio: TBCDField;
    RSJulio: TBCDField;
    RSAgosto: TBCDField;
    RSSeptiembre: TBCDField;
    RSOctubre: TBCDField;
    RSNoviembre: TBCDField;
    RSDiciembre: TBCDField;
    RSTotalGral: TBCDField;
    RSidProducto: TStringField;
    RSProducto: TStringField;
    RSEneCant: TFloatField;
    RSFebCant: TFloatField;
    RSMarCant: TFloatField;
    RSAbrCant: TFloatField;
    RSMayCant: TFloatField;
    RSJunCant: TFloatField;
    RSJulCant: TFloatField;
    RSAgoCant: TFloatField;
    RSSepCant: TFloatField;
    RSOctCant: TFloatField;
    RSNovCant: TFloatField;
    RSDicCant: TFloatField;
    RSTotalCant: TFloatField;
    GridDBTableView1Grupo: TcxGridDBColumn;
    GridDBTableView1idProducto: TcxGridDBColumn;
    GridDBTableView1Producto: TcxGridDBColumn;
    GridDBTableView1linea: TcxGridDBColumn;
    GridDBTableView1EneCant: TcxGridDBColumn;
    GridDBTableView1FebCant: TcxGridDBColumn;
    GridDBTableView1MarCant: TcxGridDBColumn;
    GridDBTableView1AbrCant: TcxGridDBColumn;
    GridDBTableView1MayCant: TcxGridDBColumn;
    GridDBTableView1JunCant: TcxGridDBColumn;
    GridDBTableView1JulCant: TcxGridDBColumn;
    GridDBTableView1AgoCant: TcxGridDBColumn;
    GridDBTableView1SepCant: TcxGridDBColumn;
    GridDBTableView1OctCant: TcxGridDBColumn;
    GridDBTableView1NovCant: TcxGridDBColumn;
    GridDBTableView1DicCant: TcxGridDBColumn;
    GridDBTableView1TotalCant: TcxGridDBColumn;
    RSlinea: TStringField;
    RSGrupo: TStringField;
    deZona: TcxLookupComboBox;
    Zona: TADODataSet;
    dsZona: TDataSource;
    Label3: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VentaProductoAnual: TVentaProductoAnual;

implementation

uses Udata;

{$R *.dfm}

procedure TVentaProductoAnual.cxButton1Click(Sender: TObject);
begin
  inherited;
  rs.Close;
  rs.Parameters[1].Value := dedesde.date;
  rs.Parameters[2].Value := dehasta.date;
  rs.Parameters[3].Value := deZona.EditValue;
  rs.Open;

end;

procedure TVentaProductoAnual.cxButton4Click(Sender: TObject);
begin
  inherited;
    if openfile.execute then ExportGrid4ToExcel(openfile.filename, Grid);
end;

procedure TVentaProductoAnual.cxButton2Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullExpand;
end;

procedure TVentaProductoAnual.cxButton5Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TVentaProductoAnual.FormCreate(Sender: TObject);
begin
  inherited;
  Zona.Open;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TVentaProductoAnual.cxButton3Click(Sender: TObject);
begin
  inherited;
  Zona.close;
  close;
end;

end.

unit uVentasZonaGrupoAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Wwdatsrc, cxExportGrid4Link;

type
  TVentaZonaGrupoAnual = class(TFForm)
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
    GridDBTableView1Grupo: TcxGridDBColumn;
    GridDBTableView1linea: TcxGridDBColumn;
    RSlinea: TStringField;
    RSGrupo: TStringField;
    RSVendedor: TIntegerField;
    RSZona: TStringField;
    GridDBTableView1Vendedor: TcxGridDBColumn;
    GridDBTableView1Zona: TcxGridDBColumn;
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
  VentaZonaGrupoAnual: TVentaZonaGrupoAnual;

implementation

uses Udata;

{$R *.dfm}

procedure TVentaZonaGrupoAnual.cxButton1Click(Sender: TObject);
begin
  inherited;
  rs.Close;
  rs.Parameters[1].Value := dedesde.date;
  rs.Parameters[2].Value := dehasta.date;
  rs.Open;

end;

procedure TVentaZonaGrupoAnual.cxButton4Click(Sender: TObject);
begin
  inherited;
    if openfile.execute then ExportGrid4ToExcel(openfile.filename, Grid);
end;

procedure TVentaZonaGrupoAnual.cxButton2Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullExpand;
end;

procedure TVentaZonaGrupoAnual.cxButton5Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TVentaZonaGrupoAnual.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TVentaZonaGrupoAnual.cxButton3Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.

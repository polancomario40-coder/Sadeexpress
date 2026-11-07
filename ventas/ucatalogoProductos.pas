unit ucatalogoProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGridCustomTableView, cxGridTableView,cxExportGrid4Link,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ppCtrls, ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppDB,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppParameter;

type
  TCatalogoProductos = class(TFForm)
    rs: TADODataSet;
    rsidProducto: TStringField;
    rsProducto: TStringField;
    rsGrupo: TStringField;
    rsLinea: TStringField;
    rsInventario: TStringField;
    rsFoto: TBlobField;
    rsReferencia: TStringField;
    rsPrecioCredito: TBCDField;
    rsPrecioContado: TBCDField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idProducto: TcxGridDBColumn;
    cxGrid1DBTableView1Producto: TcxGridDBColumn;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1Linea: TcxGridDBColumn;
    cxGrid1DBTableView1Inventario: TcxGridDBColumn;
    cxGrid1DBTableView1Foto: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioCredito: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioContado: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    fd: TSaveDialog;
    ppDBPipeline1: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroup2: TppGroup;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroup3: TppGroup;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppShape1: TppShape;
    ppDBImage1: TppDBImage;
    ppLine1: TppLine;
    ppShape2: TppShape;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CatalogoProductos: TCatalogoProductos;

implementation

uses Udata;

{$R *.dfm}

procedure TCatalogoProductos.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TCatalogoProductos.cxButton1Click(Sender: TObject);
begin
  inherited;
  rs.Close();
  rs.Open();
end;

procedure TCatalogoProductos.cxButton4Click(Sender: TObject);
begin
  inherited;
  if fd.Execute() then
    ExportGrid4ToExcel(fd.Filename, cxGrid1);
end;

procedure TCatalogoProductos.cxButton2Click(Sender: TObject);
begin
  inherited;
  Imprimir(Report);
end;

end.

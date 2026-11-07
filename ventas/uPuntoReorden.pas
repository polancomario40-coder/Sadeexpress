unit uPuntoReorden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxSpinEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, ADODB, Wwdatsrc, cxExportGrid4Link, ComCtrls;

type
  TPuntoReorden = class(TFForm)
    RS: TADODataSet;
    fecha: TcxDateEdit;
    meses: TcxSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    RSID: TGuidField;
    RSLinea: TStringField;
    RSGrupo: TStringField;
    RSidProducto: TStringField;
    RSEntrega: TBCDField;
    RSDemanda: TBCDField;
    RSCosto: TBCDField;
    RSValorUtil: TBCDField;
    RSClase: TStringField;
    RSReserva: TBCDField;
    Clases: TADODataSet;
    ClasesClase: TStringField;
    ClasesPorcentaje: TBCDField;
    ClasesMesesReserva: TBCDField;
    RSProducto: TStringField;
    RSExistencia: TBCDField;
    RSBackOrder: TBCDField;
    RSComprar: TBCDField;
    RSMeses: TBCDField;
    ClasesFactorReserva: TBCDField;
    OpenFile: TOpenDialog;
    cxButton6: TcxButton;
    RSUbicacion: TStringField;
    dsclases: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Clase: TcxGridDBColumn;
    cxGrid1DBTableView1Porcentaje: TcxGridDBColumn;
    cxGrid1DBTableView1MesesReserva: TcxGridDBColumn;
    cxGrid1DBTableView1FactorReserva: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1ID: TcxGridDBColumn;
    GridDBTableView1Linea: TcxGridDBColumn;
    GridDBTableView1Grupo: TcxGridDBColumn;
    GridDBTableView1idProducto: TcxGridDBColumn;
    GridDBTableView1Producto: TcxGridDBColumn;
    GridDBTableView1Entrega: TcxGridDBColumn;
    GridDBTableView1Costo: TcxGridDBColumn;
    GridDBTableView1Clase: TcxGridDBColumn;
    GridDBTableView1Reserva: TcxGridDBColumn;
    GridDBTableView1Demanda: TcxGridDBColumn;
    GridDBTableView1ValorUtil: TcxGridDBColumn;
    GridDBTableView1Existencia: TcxGridDBColumn;
    GridDBTableView1BackOrder: TcxGridDBColumn;
    GridDBTableView1Comprar: TcxGridDBColumn;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PuntoReorden: TPuntoReorden;

implementation

uses Udata;

{$R *.dfm}

procedure TPuntoReorden.cxButton1Click(Sender: TObject);
var
  TotalReg : integer;
begin
  inherited;
  rs.close;
  rs.parameters[1].value := fecha.date;
  rs.parameters[2].value := meses.Value;
  rs.Open;
  // clasificar los registros
  Clases.Open;
  Clases.first;
  totalreg := round((clasesporcentaje.value /100) * rs.RecordCount);
  // Poner la clase
  while not rs.eof do begin
     if rs.RecNo > totalreg then begin
       Clases.next;
       totalreg := totalreg + round((clasesporcentaje.value /100) * rs.RecordCount);
     end;
     rs.Edit;
     rsClase.value := ClasesClase.value;
     rsMeses.value := ClasesMesesReserva.value;
     rsReserva.value := ClasesFactorReserva.value;
     if (rsexistencia.value + rsBackorder.value) <= ((rsDemanda.value * rsEntrega.value)+ rsReserva.value) then
       rsComprar.value := rsDemanda.value * RsMeses.value // deberia ser la diferencia no todo
     else
       rsComprar.value := 0;
     rs.Post;

     rs.next;
  end;
end;

procedure TPuntoReorden.FormCreate(Sender: TObject);
begin
  inherited;
  Clases.open;
  fecha.date := dm.FechaHoy;
end;

procedure TPuntoReorden.cxButton2Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TPuntoReorden.cxButton6Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then ExportGrid4ToExcel(openfile.filename, Grid);
end;

end.

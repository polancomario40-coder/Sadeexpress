unit uNotInDataCollactor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls, cxButtons,
  Gradient, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, ADODB, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, uformx, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, myChkBox, ppCtrls, ppVar, ppPrnabl, ppBands,
  ppCache, ppParameter;

type
  TNotInDataCollactor = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    Gradient4: TGradient;
    Gradient3: TGradient;
    bSalir: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dtpDesde: TcxDateEdit;
    dtpHasta: TcxDateEdit;
    cxButton1: TcxButton;
    Label4: TLabel;
    Label1: TLabel;
    cxButton2: TcxButton;
    spDataCollactor: TADOStoredProc;
    spDataCollactorIdProducto: TStringField;
    spDataCollactorReferencia: TStringField;
    spDataCollactorProducto: TStringField;
    spDataCollactorExistencia: TFloatField;
    spDataCollactorLinea: TStringField;
    spDataCollactorGrupo: TStringField;
    spDataCollactorInventario: TStringField;
    spDataCollactorEnFisico: TIntegerField;
    cxGrid1DBTableView1IdProducto: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Producto: TcxGridDBColumn;
    cxGrid1DBTableView1Existencia: TcxGridDBColumn;
    cxGrid1DBTableView1Linea: TcxGridDBColumn;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1Inventario: TcxGridDBColumn;
    cxGrid1DBTableView1EnFisico: TcxGridDBColumn;
    dsNotEnFisico: TDataSource;
    plNotInFisico: TppDBPipeline;
    rptNotInFisico: TppReport;
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
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText4: TppDBText;
    lDesdeHasta: TppLabel;
    spDataCollactorUbicacion: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure lDesdeHastaPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotInDataCollactor: TNotInDataCollactor;

implementation

uses Udata;

{$R *.dfm}

procedure TNotInDataCollactor.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date - 30;
  dtpHasta.Date := Date;
end;

procedure TNotInDataCollactor.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TNotInDataCollactor.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spDataCollactor, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;

    Open();
  End;
end;

procedure TNotInDataCollactor.bSalirClick(Sender: TObject);
begin
  inherited;
  If spDataCollactor.Active Then
  Begin
    Imprimir(rptNotInFisico);
  End;
end;

procedure TNotInDataCollactor.lDesdeHastaPrint(Sender: TObject);
begin
  inherited;
  lDesdeHasta.Caption := 'Del: ' + DateToStr(dtpDesde.Date) + ' Al: ' + DateToStr(dtpHasta.Date);
end;

end.

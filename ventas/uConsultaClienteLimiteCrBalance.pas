unit uConsultaClienteLimiteCrBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, DB, ADODB, StdCtrls, cxButtons,
  Gradient, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCheckBox, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppStrtch, ppMemo, ppVar, ppPrnabl, ppCache, cxExportGrid4Link,
  ppParameter;

type
  TConsultaClienteLimiteCrBalance = class(TFFormx)
    Gradient2: TGradient;
    Gradient1: TGradient;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    rsClienteBalance: TADODataSet;
    dsClienteBalance: TDataSource;
    rsClienteBalanceIdCliente: TIntegerField;
    rsClienteBalanceCliente: TStringField;
    rsClienteBalanceCondicion: TStringField;
    rsClienteBalanceLimiteCredito: TBCDField;
    rsClienteBalanceBalance: TBCDField;
    rsClienteBalanceZona: TStringField;
    rsClienteBalanceVendedor: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dtpFecha: TcxDateEdit;
    Label1: TLabel;
    Gradient3: TGradient;
    cbBalGTLimCr: TcxCheckBox;
    plClienteBalance: TppDBPipeline;
    rptClienteBalance: TppReport;
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
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    OpenFile: TOpenDialog;
    rsClienteBalanceFactUlt6Meses: TBCDField;
    rsClienteBalanceCiudad: TStringField;
    rsClienteBalanceClienteGrupo: TStringField;
    rsClienteBalanceRNC_Cedula: TStringField;
    rsClienteBalanceDescuento: TFloatField;
    rsClienteBalanceDireccion: TStringField;
    rsClienteBalanceSector: TStringField;
    rsClienteBalanceTelefono: TStringField;
    rsClienteBalanceFax: TStringField;
    rsClienteBalanceEMail: TStringField;
    rsClienteBalanceContacto: TStringField;
    rsClienteBalanceComisionFactor: TBCDField;
    rsClienteBalanceClienteStatus: TStringField;
    rsClienteBalanceClienteTipo: TStringField;
    rsClienteBalanceGrupo: TStringField;
    rsClienteBalanceListaPrecio: TStringField;
    cxGrid1DBTableView1IdCliente: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Condicion: TcxGridDBColumn;
    cxGrid1DBTableView1LimiteCredito: TcxGridDBColumn;
    cxGrid1DBTableView1Balance: TcxGridDBColumn;
    cxGrid1DBTableView1Zona: TcxGridDBColumn;
    cxGrid1DBTableView1Vendedor: TcxGridDBColumn;
    cxGrid1DBTableView1FactUlt6Meses: TcxGridDBColumn;
    cxGrid1DBTableView1Ciudad: TcxGridDBColumn;
    cxGrid1DBTableView1ClienteGrupo: TcxGridDBColumn;
    cxGrid1DBTableView1RNC_Cedula: TcxGridDBColumn;
    cxGrid1DBTableView1Descuento: TcxGridDBColumn;
    cxGrid1DBTableView1Direccion: TcxGridDBColumn;
    cxGrid1DBTableView1Sector: TcxGridDBColumn;
    cxGrid1DBTableView1Telefono: TcxGridDBColumn;
    cxGrid1DBTableView1Fax: TcxGridDBColumn;
    cxGrid1DBTableView1EMail: TcxGridDBColumn;
    cxGrid1DBTableView1Contacto: TcxGridDBColumn;
    cxGrid1DBTableView1ComisionFactor: TcxGridDBColumn;
    cxGrid1DBTableView1ClienteStatus: TcxGridDBColumn;
    cxGrid1DBTableView1ClienteTipo: TcxGridDBColumn;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1ListaPrecio: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaClienteLimiteCrBalance: TConsultaClienteLimiteCrBalance;

implementation

uses Udata;

{$R *.dfm}

procedure TConsultaClienteLimiteCrBalance.FormCreate(Sender: TObject);
begin
  inherited;
  dtpFecha.Date := dm.FechaHoy;
end;

procedure TConsultaClienteLimiteCrBalance.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TConsultaClienteLimiteCrBalance.cxButton4Click(Sender: TObject);
begin
  inherited;
  With rsClienteBalance, Parameters Do
  Begin
    Close();
    ParamByName('@FechaAl').Value := dtpFecha.Date;
    ParamByName('@BalGTLimCr').Value := cbBalGTLimCr.Checked; 
    Open();
  End;
end;

procedure TConsultaClienteLimiteCrBalance.cxButton1Click(Sender: TObject);
begin
  inherited;
  If rsClienteBalance.Active Then
  Begin
    Imprimir(rptClienteBalance);
  End;
end;

procedure TConsultaClienteLimiteCrBalance.cxButton3Click(Sender: TObject);
begin
  inherited;
  If OpenFile.Execute Then
    ExportGrid4ToExcel(OpenFile.FileName, cxGrid1);
end;

end.

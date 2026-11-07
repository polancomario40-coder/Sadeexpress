unit uHistorialCXC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, cxDBEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, StdCtrls, kbmMemTable,
  cxDropDownEdit, cxCalendar, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxLookAndFeelPainters, cxButtons, ppProd, ppClass, ppReport, ppComm,cxExportGrid4Link,
  ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache, ppVar;

type
  THistorialCXC = class(TFForm)
    rs: TADODataSet;
    rsid: TGuidField;
    rsDocumento: TStringField;
    rsCargo: TStringField;
    rsFecha: TDateTimeField;
    rsVence: TDateTimeField;
    rsTipo: TStringField;
    rsCredito: TBooleanField;
    rsMoneda: TStringField;
    rsCliente: TStringField;
    rsLimiteCredito: TBCDField;
    rsidCondicion: TStringField;
    rsMonto: TBCDField;
    rsRango91: TBCDField;
    rsRango61: TBCDField;
    rsRango31: TBCDField;
    rsRango01: TBCDField;
    rsidcxc: TGuidField;
    mCliente: TkbmMemTable;
    mClienteidCliente: TIntegerField;
    mClienteCliente: TStringField;
    Label1: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    rsClienteAct: TADODataSet;
    rsClienteActidCliente: TIntegerField;
    rsClienteActCliente: TStringField;
    rsClienteActContacto: TStringField;
    rsClienteActLimiteCredito: TBCDField;
    rsClienteActActivo: TBooleanField;
    rsClienteActidEmpleado: TIntegerField;
    rsClienteActDireccion: TStringField;
    rsClienteActSector: TStringField;
    rsClienteActCiudad: TStringField;
    rsClienteActTelefono: TStringField;
    rsClienteActNoPagaItbis: TBooleanField;
    rsClienteActDescuento: TFloatField;
    rsClienteActFax: TStringField;
    rsClienteActeMail: TStringField;
    rsClienteActidListaPrecio: TStringField;
    rsClienteActCondicion: TIntegerField;
    rsClienteActidCuenta: TStringField;
    rsClienteActidAuxiliar: TStringField;
    rsClienteActRNC_Cedula: TStringField;
    rsClienteActidCondicion: TStringField;
    rsClienteActNotas: TStringField;
    rsClienteActIdMoneda: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    mClienteDesde: TDateTimeField;
    mClienteHasta: TDateTimeField;
    deDesde: TcxDBDateEdit;
    deHasta: TcxDBDateEdit;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    dsReporte: TwwDataSource;
    GridDBTableView1Documento: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1Vence: TcxGridDBColumn;
    GridDBTableView1Tipo: TcxGridDBColumn;
    GridDBTableView1Moneda: TcxGridDBColumn;
    GridDBTableView1Cliente: TcxGridDBColumn;
    GridDBTableView1Monto: TcxGridDBColumn;
    GridDBTableView1Rango91: TcxGridDBColumn;
    GridDBTableView1Rango61: TcxGridDBColumn;
    GridDBTableView1Rango31: TcxGridDBColumn;
    GridDBTableView1Rango01: TcxGridDBColumn;
    GridDBTableView1Rango01_1: TcxGridDBColumn;
    rsRango00: TBCDField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    plReporte: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText4: TppDBText;
    dsCliente: TppDBPipeline;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppShape1: TppShape;
    ppLabel19: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    mClienteCondicion: TStringField;
    mClienteLimiteCredito: TCurrencyField;
    rsidCliente: TIntegerField;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    sd: TSaveDialog;
    rsTotalCargos: TBCDField;
    rsTotalPagos: TBCDField;
    rsPromedioDias: TIntegerField;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppShape3: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    procedure mClienteidClienteValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure mClienteDesdeValidate(Sender: TField);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    procedure AbrirDatos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HistorialCXC: THistorialCXC;

implementation

uses Udata, uBusquedaDX;

{$R *.dfm}

procedure THistorialCXC.mClienteidClienteValidate(Sender: TField);
begin
  inherited;
  if mClienteIdCliente.AsInteger <= 0 then begin
    mClienteCliente.Value := '(TODOS)';
    mClienteLimiteCredito.Value := 0;
    mClienteCondicion.Value := '';
  end
  else begin
    with rsClienteAct do begin
      Close();
      Parameters[1].Value := mClienteIdCliente.AsInteger;
      Open();
      if Eof then
        raise Exception.Create('Este cliente no existe');

      mClienteCliente.Value := rsClienteActCliente.Value;
      mClienteCondicion.Value := rsClienteActidCondicion.Value;
      mClienteLimiteCredito.Value := rsClienteActLimiteCredito.Value;
    end;
  end;

  AbrirDatos();
end;

procedure THistorialCXC.AbrirDatos;
begin
  if (deDesde.Text = '') or (deHasta.Text = '') then
    Exit;
    
  with rs do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := dehasta.Date;
    if mClienteidCliente.AsInteger <= 0 then
      Parameters[3].Value := -1
    else
      Parameters[3].Value := mClienteIdCliente.AsInteger;
    Open();
  end;

  GridDBTableView1.DataController.Groups.FullExpand();
end;

procedure THistorialCXC.FormCreate(Sender: TObject);
begin
  inherited;
  mCliente.Open();
  mCliente.Append();
  mClienteidCliente.Value := -1;
  mClienteDesde.Value := Date();
  mClienteHasta.Value := Date();  
end;

procedure THistorialCXC.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Variant;
begin
  inherited;
  i := TBusquedaDX.Buscar('idCliente',False,'FindCliente');
  if i <> null then
    mClienteidCliente.Value := i;

end;

procedure THistorialCXC.mClienteDesdeValidate(Sender: TField);
begin
  inherited;
  AbrirDatos();
end;

procedure THistorialCXC.cxButton4Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure THistorialCXC.cxButton1Click(Sender: TObject);
begin
  inherited;
  AbrirDatos();
end;

procedure THistorialCXC.cxButton2Click(Sender: TObject);
begin
  inherited;
  rs.DisableControls();
  try
    Report.Print();
  finally
    rs.EnableControls();
  end;
end;

procedure THistorialCXC.cxButton3Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,Grid);
end;

end.

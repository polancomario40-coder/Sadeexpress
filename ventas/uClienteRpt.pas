unit uClienteRpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, Gradient, DB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxCheckBox, ADODB, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppStrtch,
  ppMemo, ppPrnabl, ppBands, ppCache, ppVar, ppParameter, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxMaskEdit, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxExportGrid4Link;

type
  TClienteRpt = class(TFForm)
    Gradient2: TGradient;
    Gradient1: TGradient;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cbActivo: TcxCheckBox;
    spClienteRpt: TADOStoredProc;
    rptCliente: TppReport;
    spClienteRptIdCliente: TIntegerField;
    spClienteRptCliente: TStringField;
    spClienteRptEmpleado: TStringField;
    spClienteRptZona: TStringField;
    spClienteRptGrupo: TStringField;
    spClienteRptClienteTipo: TStringField;
    spClienteRptClienteStatus: TStringField;
    spClienteRptDescuento: TFloatField;
    spClienteRptClienteGrupo: TStringField;
    spClienteRptIdListaPrecio: TStringField;
    plCliente: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBMemo4: TppDBMemo;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    cxButton3: TcxButton;
    OpenFile: TOpenDialog;
    cxButton4: TcxButton;
    spClienteRptLimiteCredito: TBCDField;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    spClienteRptCondicion: TIntegerField;
    spClienteRptContacto: TStringField;
    spClienteRptDireccion: TStringField;
    spClienteRptCiudad: TStringField;
    spClienteRptTelefono: TStringField;
    spClienteRptFax: TStringField;
    spClienteRpteMail: TStringField;
    spClienteRptRnc_Cedula: TStringField;
    spClienteRptSector: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Grid: TcxGrid;
    GridLevel1: TcxGridLevel;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1ClienteGrupo: TcxGridDBColumn;
    GridDBTableView1IdCliente: TcxGridDBColumn;
    GridDBTableView1Cliente: TcxGridDBColumn;
    GridDBTableView1Grupo: TcxGridDBColumn;
    GridDBTableView1Empleado: TcxGridDBColumn;
    GridDBTableView1Zona: TcxGridDBColumn;
    GridDBTableView1ClienteTipo: TcxGridDBColumn;
    GridDBTableView1Descuento: TcxGridDBColumn;
    GridDBTableView1IdListaPrecio: TcxGridDBColumn;
    GridDBTableView1ClienteStatus: TcxGridDBColumn;
    GridDBTableView1LimiteCredito: TcxGridDBColumn;
    GridDBTableView1Condicion: TcxGridDBColumn;
    GridDBTableView1Contacto: TcxGridDBColumn;
    GridDBTableView1Direccion: TcxGridDBColumn;
    GridDBTableView1Ciudad: TcxGridDBColumn;
    GridDBTableView1Telefono: TcxGridDBColumn;
    GridDBTableView1Fax: TcxGridDBColumn;
    GridDBTableView1eMail: TcxGridDBColumn;
    GridDBTableView1Rnc_Cedula: TcxGridDBColumn;
    GridDBTableView1Sector: TcxGridDBColumn;
    spClienteRptFechaInicio: TDateTimeField;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteRpt: TClienteRpt;

implementation

uses Udata, uCliente, UUtiles;

{$R *.dfm}

procedure TClienteRpt.cxButton2Click(Sender: TObject);
begin
  inherited;
  SpClienteRpt.Close;
  Close;
end;

procedure TClienteRpt.cxButton1Click(Sender: TObject);
begin
  inherited;
  if not(spClienteRpt.IsEmpty) then
    Imprimir(rptCliente);

end;

procedure TClienteRpt.cxButton3Click(Sender: TObject);
begin
  inherited;
  if not(SpClienteRpt.Isempty) then
    if openfile.execute then ExportGrid4ToExcel(openfile.filename, Grid);
end;

procedure TClienteRpt.cxButton4Click(Sender: TObject);
begin
  inherited;
  spClienteRpt.Close();
  spClienteRpt.Parameters[1].Value := cbActivo.Checked;
  spClienteRpt.Open();
end;

procedure TClienteRpt.GridDblClick(Sender: TObject);
begin
  inherited;
  if not(SpClienteRptidCliente.isnull) then
    ModalShow(TCliente, ShowFind, SpClienteRptidCliente.value,'idCliente');
end;

end.

unit uInvEntSalDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, StdCtrls, Buttons, dxCntner, dateutils,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxTL, dxDBCtrl, dxDBGrid, dxEdLib,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxDBTLCl,
  dxGrClms, kbmMemTable, myChkBox, ppStrtch, ppMemo, cxLookAndFeelPainters,
  cxButtons, ppParameter;

type
  TInvEntSalDet = class(TFForm)
    rsMovimiento: TADODataSet;
    Grid: TdxDBGrid;
    Desde: TdxDateEdit;
    Label5: TLabel;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    Label6: TLabel;
    Hasta: TdxDateEdit;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    EntSal: TcxImageComboBox;
    Label1: TLabel;
    rsMovimientoProMov: TStringField;
    rsMovimientoFecha: TDateTimeField;
    rsMovimientoSalida: TBooleanField;
    rsMovimientoReferencia: TStringField;
    rsMovimientoEntregadoPor: TStringField;
    rsMovimientoidAlmacen: TStringField;
    rsMovimientoidProMovDet: TGuidField;
    rsMovimientoidProducto: TStringField;
    rsMovimientoProducto: TStringField;
    rsMovimientoCantidad: TBCDField;
    rsMovimientoCosto: TBCDField;
    rsMovimientoCentroCosto: TStringField;
    rsMovimientoGrupo: TStringField;
    rsMovimientoLinea: TStringField;
    rsMovimientoCC: TStringField;
    GridSalida: TdxDBGridCheckColumn;
    GridProMov: TdxDBGridMaskColumn;
    GridFecha: TdxDBGridDateColumn;
    GridReferencia: TdxDBGridMaskColumn;
    GridEntregadoPor: TdxDBGridMaskColumn;
    GrididProMovDet: TdxDBGridColumn;
    GrididProducto: TdxDBGridMaskColumn;
    GridProducto: TdxDBGridMaskColumn;
    GridCosto: TdxDBGridCurrencyColumn;
    GridCentroCosto: TdxDBGridMaskColumn;
    GridGrupo: TdxDBGridMaskColumn;
    GridLinea: TdxDBGridMaskColumn;
    GridCC: TdxDBGridMaskColumn;
    rsMovimientoidProMov: TGuidField;
    plMovimiento: TppDBPipeline;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label7: TLabel;
    dxDBEdit5: TdxDBEdit;
    Label8: TLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel7: TppLabel;
    ppLabel11: TppLabel;
    ppDBText3: TppDBText;
    rsMovimientoTamano: TStringField;
    rsMovimientoCostoUnitario: TBCDField;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppShape2: TppShape;
    ppDBText11: TppDBText;
    ppDBMemo1: TppDBMemo;
    rptOperaciones: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText2: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppShape4: TppShape;
    ppDBText8: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppFooterBand2: TppFooterBand;
    ppLine1: TppLine;
    ppSystemVariable4: TppSystemVariable;
    cbConCuenta: TdxCheckEdit;
    rsMovimientoIdUnidad: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText21: TppDBText;
    OpenFile: TOpenDialog;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    rsMovimientoProMovTipo: TStringField;
    rsMovimientoTransferencia: TBooleanField;
    GridColumn15: TdxDBGridColumn;
    GridColumn16: TdxDBGridCheckColumn;
    GridColumn17: TdxDBGridColumn;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel25: TppLabel;
    ppShape5: TppShape;
    ppLabel26: TppLabel;
    ppDBText22: TppDBText;
    GridColumn18: TdxDBGridColumn;
    rsMovimientoSuplidor: TStringField;
    ppLabel27: TppLabel;
    ppDBMemo3: TppDBMemo;
    rsMovimientoHora: TDateTimeField;
    GridColumn19: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure DesdeChange(Sender: TObject);
    procedure HastaChange(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure ppShape4Print(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvEntSalDet: TInvEntSalDet;

implementation

uses Udata, UUtiles, uProMov;

{$R *.dfm}

procedure TInvEntSalDet.FormCreate(Sender: TObject);
begin
  inherited;
  Desde.date := dm.FechaDesde;
  Hasta.date := dm.FechaHasta;
end;

procedure TInvEntSalDet.ppShape1Print(Sender: TObject);
begin
  inherited;
  ppShape1.Visible := not ppShape1.Visible;
end;

procedure TInvEntSalDet.DesdeChange(Sender: TObject);
begin
  inherited;
  dm.fechadesde := desde.Date;
end;

procedure TInvEntSalDet.HastaChange(Sender: TObject);
begin
  inherited;
  dm.fechahasta := hasta.Date;
end;

procedure TInvEntSalDet.GridDblClick(Sender: TObject);
begin
  inherited;
  if not(rsMovimientoidPromov.isnull) then
    ModalShow(TProMov, ShowFind, rsMovimientoidPromov.Value, 'idProMov', true);
end;

procedure TInvEntSalDet.ppShape4Print(Sender: TObject);
begin
  inherited;
  ppShape4.Visible := not ppShape4.Visible;
end;

procedure TInvEntSalDet.cxButton1Click(Sender: TObject);
begin
  inherited;
  if OpenFile.Execute then Grid.SaveToXLS(openfile.Filename,true);
end;

procedure TInvEntSalDet.cxButton2Click(Sender: TObject);
begin
  inherited;
  If cbConCuenta.Checked Then
    Imprimir(Report)
  Else
    Imprimir(rptOperaciones);
end;

procedure TInvEntSalDet.cxButton3Click(Sender: TObject);
begin
  inherited;

  with rsMovimiento do begin
    Close();
    Parameters[1].Value := Desde.date;
    Parameters[2].Value := Hasta.date;
    Parameters[3].Value := EntSal.EditValue;
    Open();
  end;
end;

end.

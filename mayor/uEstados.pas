unit uEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Buttons,
  wwdbdatetimepicker, wwdblook, dxDBTLCl, dxGrClms, ppPrnabl, ppClass,
  ppCtrls, ppVar, ppDB, ppBands, ppCache, ppProd, ppReport, ppComm,ppTypes,
  ppRelatv, ppDBPipe, ppDBBDE, dxExEdtr, ppParameter;

type
  TfEstados = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    dtHasta: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    dxDBGrid1: TdxDBGrid;
    BitBtn2: TBitBtn;
    dsEstados: TDataSource;
    plEstadoSituacion: TppBDEPipeline;
    rptEstadoSituacion: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText4: TppDBText;
    ppDBCalc2: TppDBCalc;
    BitBtn3: TBitBtn;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    dxDBGrid1Grupo: TdxDBGridMaskColumn;
    dxDBGrid1idGrupo: TdxDBGridMaskColumn;
    dxDBGrid1idItem: TdxDBGridMaskColumn;
    dxDBGrid1Descripcion: TdxDBGridMaskColumn;
    dxDBGrid1Orden: TdxDBGridMaskColumn;
    dxDBGrid1Negrita: TdxDBGridCheckColumn;
    dxDBGrid1Literal: TdxDBGridCheckColumn;
    dxDBGrid1Balance: TdxDBGridMaskColumn;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    dxDBGrid1Column9: TdxDBGridColumn;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLine3: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel4: TppLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppDBText5Print(Sender: TObject);
    procedure ppDBText2Print(Sender: TObject);
    procedure ppDBText3Print(Sender: TObject);
    procedure ppLine1Print(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure ppDBText1Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstados: TfEstados;

implementation

uses ugldm, UUtiles;

{$R *.dfm}

procedure TfEstados.BitBtn1Click(Sender: TObject);
begin
  with gldm.spEstadosFinancieros do begin
    Close();
    Parameters[1].Value := gldm.rsEstadosidEstado.AsInteger;
    Parameters[2].Value := int(dtHasta.Date);
    Open();
  end;  
end;

procedure TfEstados.BitBtn2Click(Sender: TObject);
begin
  Close();
end;

procedure TfEstados.FormCreate(Sender: TObject);
begin
  gldm.rsEstados.Open();
  wwDBLookupCombo1.Text := gldm.rsEstadosDescripcion.AsString;
  dtHasta.Date := Int(Date());
end;

procedure TfEstados.FormDestroy(Sender: TObject);
begin
  gldm.rsEstados.Close();
end;

procedure TfEstados.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
  Value := wwDBLookupCombo1.Text;
end;

procedure TfEstados.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
  Value := 'Hasta: ' + dtHasta.Text;
end;

procedure TfEstados.BitBtn3Click(Sender: TObject);
begin
  uutiles.ImprimirReporte(rptEstadoSituacion);
end;

procedure TfEstados.ppDBText5Print(Sender: TObject);
begin
  ppDBText5.Visible := not gldm.spEstadosFinancierosLiteral.Value;
end;

procedure TfEstados.ppDBText2Print(Sender: TObject);
begin
  ppDBText2.Visible := not gldm.spEstadosFinancierosLiteral.Value;
end;

procedure TfEstados.ppDBText3Print(Sender: TObject);
begin
  ppDBText3.Visible := not gldm.spEstadosFinancierosLiteral.Value;
end;

procedure TfEstados.ppLine1Print(Sender: TObject);
begin
  ppLine1.Visible := not gldm.spEstadosFinancierosLiteral.Value;
end;

procedure TfEstados.ppDetailBand1BeforePrint(Sender: TObject);
begin
  ppDetailBand1.Visible := not gldm.spEstadosFinancierosLiteral.Value;
end;

procedure TfEstados.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
//  ppGroupFooterBand2.Visible := not gldm.spEstadosFinancierosLiteral.Value;
end;

procedure TfEstados.ppShape1Print(Sender: TObject);
begin
  with (Sender as TppShape) do
    Visible := rptEstadoSituacion.DeviceType <> 'Printer';
end;

procedure TfEstados.ppDBText1Print(Sender: TObject);
begin
  ppDBText1.Visible := not gldm.spEstadosFinancierosLiteral.Value;
end;

end.

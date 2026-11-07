unit uNominaFormaPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,cxExportGrid4Link,
  cxDropDownEdit, cxImageComboBox, ADODB, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, cxCheckBox, ppParameter;

type
  TNominaFormaPago = class(TFForm)
    rs: TADODataSet;
    rsNominaID: TIntegerField;
    rsFecha: TDateTimeField;
    rsDesde: TDateTimeField;
    rsHasta: TDateTimeField;
    rsDepOrden: TIntegerField;
    rsDepartamento: TStringField;
    rsSecOrden: TIntegerField;
    rsSeccion: TStringField;
    rsEmpleadoID: TIntegerField;
    rsTipoEmpleadoID: TIntegerField;
    rsEmpleado: TStringField;
    rsNumeroCuenta: TStringField;
    rsSueldo: TBCDField;
    rsActivo: TBooleanField;
    rsTipoEmpleado: TStringField;
    luTipoRPT: TcxImageComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Departamento: TcxGridDBColumn;
    cxGrid1DBTableView1Seccion: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn;
    cxGrid1DBTableView1Empleado: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroCuenta: TcxGridDBColumn;
    cxGrid1DBTableView1Sueldo: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    sd: TSaveDialog;
    ppDBPipeline1: TppDBPipeline;
    ReportTx: TppReport;
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
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ReportCKs: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel12: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape3: TppShape;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppDBCalc2: TppDBCalc;
    ReportTxGrouped: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText13: TppDBText;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel17: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape5: TppShape;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine6: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppShape6: TppShape;
    ppDBCalc3: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ReportCKSGrouped: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppLine9: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText23: TppDBText;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel25: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppShape7: TppShape;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine10: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppShape8: TppShape;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText30: TppDBText;
    ppLabel26: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine11: TppLine;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText31: TppDBText;
    ppLabel27: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine12: TppLine;
    cbGrupos: TcxCheckBox;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBText397: TppDBText;
    ppDBText396: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ppShape2Print(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure luTipoRPTPropertiesEditValueChanged(Sender: TObject);
    procedure ppShape3Print(Sender: TObject);
  private
    FNominaID: integer;
    procedure VerDatos;
    { Private declarations }

  public
    { Public declarations }
    property NominaID: integer read FNominaID write FNominaID;
  end;

var
  NominaFormaPago: TNominaFormaPago;

procedure MostrarReporteFormaPago(const nom: Integer);

implementation

uses Udata;

{$R *.dfm}

procedure TNominaFormaPago.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TNominaFormaPago.cxButton2Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,cxGrid1);
end;

procedure TNominaFormaPago.ppShape2Print(Sender: TObject);
var
  sh: TppShape;
begin
  inherited;
  sh := Sender as TppShape;

  sh.Visible := not sh.Visible;
end;

procedure TNominaFormaPago.cxButton1Click(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := rs.Bookmark;
  rs.DisableControls();
  try
    if cbGrupos.Checked then
      rs.Sort := 'DepOrden,Departamento,secOrden,Seccion,Empleado'
    else
      rs.Sort := 'Empleado';

    if luTipoRPT.EditValue = true then begin
      if cbGrupos.Checked then
        ReportTxGrouped.Print()
      else
        ReportTx.Print();
    end
    else begin
      if cbGrupos.Checked then
        ReportCKSGrouped.Print()
      else
        ReportCks.Print();
    end;
  finally
    rs.Bookmark := s;
    rs.EnableControls();
  end;
end;

procedure TNominaFormaPago.luTipoRPTPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  VerDatos();
end;

procedure TNominaFormaPago.VerDatos;
begin
  with rs do begin
    Close();
    Parameters[1].Value := NominaID;
    Parameters[2].Value := luTipoRPT.EditValue;
    Open();
  end;
  cxGrid1DBTableView1.DataController.Groups.FullExpand();
end;

procedure MostrarReporteFormaPago(const nom: Integer);
begin
  with TNominaFormaPago.Create(application) do begin
    try
      NominaID := nom;
      luTipoRPT.EditValue := True;
      VerDatos();
      ShowModal();
    finally
      Release();
    end;
  end;
end;

procedure TNominaFormaPago.ppShape3Print(Sender: TObject);
begin
  inherited;
  ppShape3.Visible := not ppShape3.Visible;
end;

end.

unit uClienteRptSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, Gradient, DB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxCheckBox, ADODB, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppStrtch,
  ppMemo, ppPrnabl, ppBands, ppCache, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxExportGrid4Link, ppParameter;

type
  TClienteRptSelect = class(TFForm)
    Gradient2: TGradient;
    Gradient1: TGradient;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cbActivo: TcxCheckBox;
    spClienteRpt: TADOStoredProc;
    spClienteRptIdCliente: TIntegerField;
    spClienteRptCliente: TStringField;
    spClienteRptContacto: TStringField;
    spClienteRptDireccion: TStringField;
    spClienteRptCiudad: TStringField;
    spClienteRptTelefono: TStringField;
    spClienteRptFax: TStringField;
    spClienteRptRnc_Cedula: TStringField;
    plCliente: TppDBPipeline;
    rptCliente: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
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
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBMemo4: TppDBMemo;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    spClienteRpteMail: TStringField;
    spClienteRptSector: TStringField;
    spClienteRptLimiteCredito: TBCDField;
    spClienteRptDescuento: TFloatField;
    spClienteRptCondicion: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1IdCliente: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Contacto: TcxGridDBColumn;
    cxGrid1DBTableView1Direccion: TcxGridDBColumn;
    cxGrid1DBTableView1Ciudad: TcxGridDBColumn;
    cxGrid1DBTableView1Telefono: TcxGridDBColumn;
    cxGrid1DBTableView1Fax: TcxGridDBColumn;
    cxGrid1DBTableView1Rnc_Cedula: TcxGridDBColumn;
    cxGrid1DBTableView1eMail: TcxGridDBColumn;
    cxGrid1DBTableView1Sector: TcxGridDBColumn;
    cxGrid1DBTableView1LimiteCredito: TcxGridDBColumn;
    cxGrid1DBTableView1Descuento: TcxGridDBColumn;
    cxGrid1DBTableView1Condicion: TcxGridDBColumn;
    OpenFile: TOpenDialog;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteRptSelect: TClienteRptSelect;

implementation

uses Udata;

{$R *.dfm}

procedure TClienteRptSelect.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TClienteRptSelect.cxButton1Click(Sender: TObject);
begin
  inherited;
  If spClienteRpt.Active Then
  Begin
    Imprimir(rptCliente);
  End;
end;

procedure TClienteRptSelect.cxButton3Click(Sender: TObject);
begin
  inherited;
  If OpenFile.Execute Then
    ExportGrid4ToExcel(OpenFile.FileName, cxGrid1);
end;

procedure TClienteRptSelect.cxButton4Click(Sender: TObject);
begin
  inherited;
  With spClienteRpt, Parameters Do
  Begin
    Close();
    ParamByName('@Activo').Value := cbActivo.Checked;
    Open();
  End;

end;

end.

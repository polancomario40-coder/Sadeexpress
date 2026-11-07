unit uMantCtaPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, Gradient,
  ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, ADODB,
  dxExEdtr, dxTL, dxDBCtrl, dxCntner, dxDBTL, Buttons, ImgList,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxImageComboBox,
  cxDBLookupComboBox;

type
  TCuentasPrima = class(TForm)
    rsCtas: TADODataSet;
    rsCtasidCuenta: TStringField;
    rsCtasDescripcion: TStringField;
    rsCtasCtaDescargue: TStringField;
    rsCtasTipoNivel: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Gradient1: TGradient;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    Gradient2: TGradient;
    cxLabel2: TcxLabel;
    ds: TDataSource;
    dsCat: TDataSource;
    rs: TADODataSet;
    ImageList1: TImageList;
    SpeedButton4: TcxButton;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1Descripcion: TdxDBTreeListMaskColumn;
    dxDBTreeList1idCuenta: TdxDBTreeListMaskColumn;
    rsCtasOrigen: TStringField;
    rsMoneda: TADODataSet;
    rsMonedaidMoneda: TIntegerField;
    rsMonedaMoneda: TStringField;
    rsMonedaCursoLegal: TBooleanField;
    rsidCuenta: TStringField;
    rsidMoneda: TIntegerField;
    rsidCuentaPrima: TStringField;
    cxGrid1DBTableView1idMoneda: TcxGridDBColumn;
    cxGrid1DBTableView1idCuentaPrima: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    dsMoneda: TDataSource;
    rsCatLookUp: TADODataSet;
    dsCtaLU: TDataSource;
    rsCatLookUpidCuenta: TStringField;
    rsCatLookUpDescripcion: TStringField;
    rsCatLookUpCtaDescargue: TStringField;
    rsCatLookUpTipoNivel: TStringField;
    procedure rsCtasAfterScroll(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rsBeforePost(DataSet: TDataSet);
    procedure rsNewRecord(DataSet: TDataSet);
    procedure rsidCuentaPrimaValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CuentasPrima: TCuentasPrima;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TCuentasPrima.rsCtasAfterScroll(DataSet: TDataSet);
begin
   with rs do begin
     Close();
     if rsCtasTipoNivel.Value = 'D' then begin
       Parameters[1].Value := rsCtasIdCuenta.Value;
       Open();
     end;
   end;
end;

procedure TCuentasPrima.SpeedButton4Click(Sender: TObject);
begin
  Close();
end;

procedure TCuentasPrima.FormCreate(Sender: TObject);
begin
  rsCtas.Open();
  rsCatLookUP.Open();
  rsMoneda.Open();
  rsCtasAfterScroll(rsCtas);
end;

procedure TCuentasPrima.rsBeforePost(DataSet: TDataSet);
begin
  if rsidCuentaPrima.AsString = '' then
    raise Exception.Create('Necesita especificar un numero de cuenta');
    
  if rsidMoneda.AsInteger = 0 then
    raise Exception.Create('Necesita especificar una moneda');
end;

procedure TCuentasPrima.rsNewRecord(DataSet: TDataSet);
begin
  rsidCuenta.Value := rsCtasIdCuenta.Value;
end;

procedure TCuentasPrima.rsidCuentaPrimaValidate(Sender: TField);
begin
  if rsidCuentaPrima.Value = '' then
    Exit;

  if not rsCatLookUP.Locate('idCuenta',rsIdCuentaPrima.Value,[]) then
    raise Exception.Create('Esta cuenta no existe')
  else begin
    if rsCatLookUpTipoNivel.Value <> 'D' then
      raise Exception.Create('Esta no es una cuenta de detalle');
  end;
end;

end.

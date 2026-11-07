unit uMantBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  Buttons, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  uSimpleForm, cxLookAndFeelPainters, ImgList, ActnList, Wwdatsrc,
  StdCtrls, cxButtons, uMantClassRS, cxButtonEdit, cxDBLookupComboBox;

type
  TMantBancos = class(TMantClassRS)
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TAutoIncField;
    rsBancosNombre: TStringField;
    rsBancosidMoneda: TIntegerField;
    rsBancosTipoCuenta: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    rsBancosidCuentaMayor: TStringField;
    rsBancosNumCuenta: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1idCuentaBanco: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1idMoneda: TcxGridDBColumn;
    cxGrid1DBTableView1TipoCuenta: TcxGridDBColumn;
    cxGrid1DBTableView1UltimoCheque: TcxGridDBColumn;
    cxGrid1DBTableView1idCuentaMayor: TcxGridDBColumn;
    cxGrid1DBTableView1NumCuenta: TcxGridDBColumn;
    rsBancosFormatoCheque: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    rsBancosidAuxiliar: TStringField;
    rsBancosAbrev: TStringField;
    rsBancosContacto: TStringField;
    rsBancosTelContacto: TStringField;
    rsBancosFax: TStringField;
    rsBancosRNC_Banco: TStringField;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    dsMoneda: TwwDataSource;
    rsBancosBancoCodigo: TStringField;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure cxGrid1DBTableView1idCuentaMayorPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantBancos: TMantBancos;

implementation

uses uMAINDM, Udata, uBuscarCuentaMayor, UUtiles;

{$R *.dfm}

procedure TMantBancos.FormCreate(Sender: TObject);
begin
  inherited;
  rsBancos.Open();
  if not dm.Moneda.Active then
    dm.Moneda.Open();
end;

procedure TMantBancos.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TMantBancos.cxGrid1DBTableView1idCuentaMayorPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  s: string;
begin
  inherited;
  if appEstado <> appBrowse then begin
     s := BuscarCtaDetalle();
     if s <> '' then begin
       if not (rsBancos.State in dsEditModes) then
         rsBancos.Edit();

       rsBancosIdCuentaMayor.Value := s;
     end;
  end;
end;

end.

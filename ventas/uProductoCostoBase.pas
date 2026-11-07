unit uProductoCostoBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant1, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, Mask, DBCtrls, DB, ADODB, ActnList,
  ImgList, Wwdatsrc, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  cxLookAndFeelPainters, cxButtons, cxSpinEdit, cxDBEdit, cxMemo;

type
  TProductoCostoBase = class(Tfformmant1)
    RSidProducto: TStringField;
    RSCostoBase: TBCDField;
    RSidMoneda: TIntegerField;
    RSCreditoPorc: TBCDField;
    RSContadoPorc: TBCDField;
    Label1: TLabel;
    DBEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label5: TLabel;
    Memo1: TcxMemo;
    RSContado: TCurrencyField;
    RSCredito: TCurrencyField;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit2: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    cxButton1: TcxButton;
    ActualizarPrecio: TADOCommand;
    Label8: TLabel;
    Label9: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBSpinEdit4: TcxDBSpinEdit;
    RSUidProducto: TGuidField;
    RSPorcGasto: TFloatField;
    RSPorcDesc: TFloatField;
    Label10: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    RSTasa: TFloatField;
    cActualizarPreciosGM: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure RSCalcFields(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductoCostoBase: TProductoCostoBase;

implementation

uses Udata, uBusqueda;

{$R *.dfm}

procedure TProductoCostoBase.FormCreate(Sender: TObject);
begin
  inherited;
  logField := 'idProducto';
  spName := 'FindProductoCostoBase';
  Busqfield := 'idProducto';
  tfBusqueda := TBusqueda;
  OcultarC1 := false;
end;

procedure TProductoCostoBase.RSCalcFields(DataSet: TDataSet);
begin
  inherited;
  rsContado.AsCurrency := rscostobase.AsCurrency * (1+(rsContadoPorc.AsCurrency/100));
  rsCredito.AsCurrency := rscostobase.AsCurrency * (1+(rsCreditoPorc.AsCurrency/100));
end;

procedure TProductoCostoBase.cxButton1Click(Sender: TObject);
var
  ret: Variant;
begin
  inherited;
  ret := 0;
  if dm.GetDefaultStr('CAMB_PRECIO_V2') = '1' then begin
    cActualizarPreciosGM.Parameters[1].Value := rsIdProducto.Value;
    cActualizarPreciosGM.Execute();
    ret := cActualizarPreciosGM.Parameters[0].Value;
  end
  else begin
    actualizarprecio.Parameters[1].Value := rsidproducto.value; //todos los productos
    actualizarprecio.Execute;
    ret := ActualizarPrecio.Parameters[0].Value;
  end;
  if ret <> 0 then
    raise exception.create('Error actualizando los precios de los productos, verifique')
  else
    showmessage('Los Precios han sido actualizados');
end;

procedure TProductoCostoBase.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSPorcGasto.Value := 0;
  RSPorcDesc.Value := 0;
  RSCreditoPorc.Value := 0;
  RSContadoPorc.Value := 0;
  RSidMoneda.Value := dm.MonedaLegal();
end;

end.

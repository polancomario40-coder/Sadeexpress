unit uBuscarACHSuplidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid;

type
  TBuscarACHSuplidor = class(TForm)
    rsBancoSuplidor: TADODataSet;
    rsBancoSuplidorIdBancoSuplidor: TGuidField;
    rsBancoSuplidorIdSuplidor: TIntegerField;
    rsBancoSuplidorIdMoneda: TIntegerField;
    rsBancoSuplidorBancoCodigo: TStringField;
    rsBancoSuplidorTipoCuenta: TStringField;
    rsBancoSuplidorCuenta: TStringField;
    rsBancoSuplidorBancoDefault: TBooleanField;
    ds: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1BancoCodigo: TcxGridDBColumn;
    cxGrid1DBTableView1TipoCuenta: TcxGridDBColumn;
    cxGrid1DBTableView1Cuenta: TcxGridDBColumn;
    cxGrid1DBTableView1BancoDefault: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarACHSuplidor: TBuscarACHSuplidor;

procedure BuscarBancoACHSuplidor(const idSup, idMon: Integer; out idBancoSuplidor : Variant;
                                 out Codigo: string; out Cuenta: string);

implementation

uses Udata;

{$R *.dfm}

procedure BuscarBancoACHSuplidor(const idSup, idMon: Integer; out idBancoSuplidor : Variant;
                                 out Codigo: string; out Cuenta: string);
begin
  with TBuscarAchSuplidor.Create(application) do begin
    rsBancoSuplidor.Close();
    rsBancoSuplidor.Parameters[1].Value := idSup;
    rsBancoSuplidor.Parameters[2].Value := idMon;
    rsBancoSuplidor.Open();

    if ShowModal() = mrOk then begin
      idBancoSuplidor := rsBancoSuplidorIdBancoSuplidor.Value;
      Cuenta := rsBancoSuplidorCuenta.Value;
      Codigo := rsBancoSuplidorBancoCodigo.Value;
    end
    else begin
      idBancoSuplidor := NULL;
      Cuenta := '';
      Codigo := '';
    end;

    Release();
  end;
end;

procedure TBuscarACHSuplidor.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  AHandled := True;
  ModalResult := mrOk;
end;

end.

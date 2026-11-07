unit uTransParaPrestaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassRS, cxLookAndFeelPainters, DB, ADODB, ImgList,
  ActnList, Wwdatsrc, StdCtrls, cxButtons, Gradient, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TMantTransParaPrestaciones = class(TMantClassRS)
    Gradient5: TGradient;
    qryTipoTransaccion: TADOQuery;
    qryTipoTransacciontipotransaccionid: TIntegerField;
    qryTipoTransacciontipotransaccion: TStringField;
    qryTransParaPrestaciones: TADOQuery;
    qryTransParaPrestacionesIdTransParaPrestaciones: TAutoIncField;
    qryTransParaPrestacionesIdTipoTrans: TIntegerField;
    qryTransParaPrestacionesTipoTrans: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1IdTransParaPrestaciones: TcxGridDBColumn;
    cxGrid1DBTableView1IdTipoTrans: TcxGridDBColumn;
    cxGrid1DBTableView1TipoTrans: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantTransParaPrestaciones: TMantTransParaPrestaciones;

implementation

uses Udata;

{$R *.dfm}

procedure TMantTransParaPrestaciones.FormCreate(Sender: TObject);
begin
  inherited;
  qryTipoTransaccion.Open();

end;

end.

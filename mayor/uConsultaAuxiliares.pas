unit uConsultaAuxiliares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxButtonEdit, DB, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxLookAndFeelPainters, cxButtons,
  cxDropDownEdit, cxCalendar,DateUtils;

type
  TConsultaAuxiliares = class(TForm)
    Label1: TLabel;
    rsCta: TADODataSet;
    beCta: TcxButtonEdit;
    edDescr: TcxTextEdit;
    rs: TADODataSet;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    ds: TDataSource;
    rsidCuenta: TStringField;
    rsidAuxiliar: TStringField;
    rsAuxiliar: TStringField;
    rsOrigen: TStringField;
    rsFecha: TDateTimeField;
    rsEntrada: TStringField;
    rsValor: TBCDField;
    rsBalInicial: TBCDField;
    rsBalFinal: TBCDField;
    GridDBTableView1idAuxiliar: TcxGridDBColumn;
    GridDBTableView1Auxiliar: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1Entrada: TcxGridDBColumn;
    GridDBTableView1Valor: TcxGridDBColumn;
    GridDBTableView1BalInicial: TcxGridDBColumn;
    GridDBTableView1BalFinal: TcxGridDBColumn;
    cxButton1: TcxButton;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxButton2: TcxButton;
    procedure beCtaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure beCtaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    procedure ValidarCuenta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaAuxiliares: TConsultaAuxiliares;

implementation

uses ugldm, uBuscarCuentaMayor, Udata;

{$R *.dfm}

procedure TConsultaAuxiliares.ValidarCuenta;
begin
  with rsCta do begin
    Close();
    Parameters[0].Value := beCta.Text;
    Open();
    if Eof then
      Raise Exception.Create('Esta cuenta no existe' );

    edDescr.Text := rsCta.FieldByName('descripcion').AsString;
  end;
end;


procedure TConsultaAuxiliares.beCtaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  ValidarCuenta();
end;

procedure TConsultaAuxiliares.cxButton1Click(Sender: TObject);
begin
  rs.Close();
  if beCta.Text <> '' then begin
    rs.Parameters[1].Value := beCta.Text;
    rs.Parameters[2].Value := deDesde.date;
    rs.Parameters[3].Value := deHasta.Date;
    rs.Open();
  end;
end;

procedure TConsultaAuxiliares.cxButton2Click(Sender: TObject);
begin
  Close();
end;

procedure TConsultaAuxiliares.beCtaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  s: string;
begin
  s := BuscarCtaDetalle();
  if s <> '' then begin
    beCta.EditValue := s;
    ValidarCuenta();
    deDesde.SetFocus();       
  end;
end;

procedure TConsultaAuxiliares.FormCreate(Sender: TObject);
begin
  deDesde.Date := StartOfTheMonth(Date());
  deHasta.Date := DateOf(EndOfTheMonth(Date()));
end;

end.

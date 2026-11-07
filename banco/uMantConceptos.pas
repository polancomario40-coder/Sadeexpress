unit uMantConceptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassBco, DB, dxCntner, Gradient, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxImageComboBox, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TMantConceptos = class(TMantClassBco)
    rsTransacciones: TADODataSet;
    rsConceptos: TADODataSet;
    rsTransaccionesidTrans: TAutoIncField;
    rsTransaccionesDescripcion: TStringField;
    rsTransaccionesDebCre: TWordField;
    dsCon: TDataSource;
    rsConceptosidConcepto: TAutoIncField;
    rsConceptosidTrans: TIntegerField;
    rsConceptosDescripcion: TStringField;
    rsConceptosDebCre: TWordField;
    rsConceptosidCuenta: TStringField;
    rsConceptosPorDefecto: TBooleanField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idTrans: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1DebCre: TcxGridDBColumn;
    cxButton3: TcxButton;
    Label1: TLabel;
    rsTransaccionesAbrev: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    rsTransaccionesContador: TStringField;
    rsTransaccionesidCuenta: TStringField;
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rsConceptosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantConceptos: TMantConceptos;

implementation

uses udmBancos, Udata;

{$R *.dfm}

procedure TMantConceptos.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TMantConceptos.FormCreate(Sender: TObject);
begin
  inherited;
  rsTransacciones.Open();
  rsConceptos.Open();
end;

procedure TMantConceptos.rsConceptosNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsConceptosIdTrans.AsInteger := rsTransaccionesidTrans.AsInteger;
  rsConceptosDebCre.AsInteger := 2;
  rsConceptosPorDefecto.AsBoolean := False;
end;

end.

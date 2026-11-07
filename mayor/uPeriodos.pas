unit uPeriodos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, StdCtrls, Gradient, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxLookAndFeelPainters, ADODB, kbmMemTable, cxButtons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox;

type
  TPeriodo = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    cxButton2: TcxButton;
    DS: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Label3: TLabel;
    RS: TADODataSet;
    RSidPeriodoFiscal: TStringField;
    RSInicio: TDateTimeField;
    RSFinal: TDateTimeField;
    RSuidPeriodoFiscal: TGuidField;
    GridDBTableView1idPeriodoFiscal: TcxGridDBColumn;
    GridDBTableView1Inicio: TcxGridDBColumn;
    GridDBTableView1Final: TcxGridDBColumn;
    GridDBTableView1uidPeriodoFiscal: TcxGridDBColumn;
    GridDBTableView1General: TcxGridDBColumn;
    RSCerrado: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure RSCerradoValidate(Sender: TField);
  private
    floading : boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Periodo: TPeriodo;

implementation

uses Udata, UUtiles;

{$R *.dfm}

procedure TPeriodo.FormCreate(Sender: TObject);
begin
  inherited;
  RS.Open();
End;

procedure TPeriodo.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPeriodo.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  floading := true;
  rsuidPeriodoFiscal.asguid := dm.newguid();
  rsCerrado.value := true;
  floading := false;
end;

procedure TPeriodo.RSBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (rsinicio.isnull) or (rsfinal.isnull) or (rsidperiodofiscal.isnull) then
    Raise Exception.create('Debe especificar los datos del periodo creado');
end;

procedure TPeriodo.RSCerradoValidate(Sender: TField);
var
   ss : string;
begin
  inherited;

  if sender.AsBoolean then
    ss := 'Cerrar'
  else
    ss := 'Abrir';

  if rsidPeriodoFiscal.AsString <> '' then
    dm.CreateLog(ss, Self.Caption, 'Periodo: ['+rsidPeriodoFiscal.AsString + '] ');

end;

end.

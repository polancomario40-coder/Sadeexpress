unit uMantFactoresMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxLabel, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ADODB, cxSpinEdit,
  cxDBLookupComboBox;

type
  TMantFactoresMes = class(TForm)
    cxLabel1: TcxLabel;
    deFec: TcxDateEdit;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton2: TcxButton;
    ds: TDataSource;
    rsFactoresMes: TADODataSet;
    rsFactoresMesidFactor: TIntegerField;
    rsFactoresMesFecha: TDateTimeField;
    rsFactoresMesPorc: TBCDField;
    rsFactores: TADODataSet;
    rsFactoresidFactor: TIntegerField;
    rsFactoresDescripcion: TStringField;
    cxGrid1DBTableView1Porc: TcxGridDBColumn;
    cxGrid1DBTableView1luFactores: TcxGridDBColumn;
    dsFacts: TDataSource;
    cxButton3: TcxButton;
    cGenerar: TADOCommand;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rsFactoresMesNewRecord(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantFactoresMes: TMantFactoresMes;

implementation

uses ugldm, uBuscarDistribucion, Udata;

{$R *.dfm}

procedure TMantFactoresMes.cxButton2Click(Sender: TObject);
begin
  Close();
end;

procedure TMantFactoresMes.cxButton1Click(Sender: TObject);
begin
  with rsFactoresMes do begin
    Close();
    Parameters[1].Value := deFec.Date;
    Open();
  end;
end;

procedure TMantFactoresMes.FormCreate(Sender: TObject);
begin
  rsFactores.Open();
  deFec.Date := gldm.GlobalHasta;
end;

procedure TMantFactoresMes.rsFactoresMesNewRecord(DataSet: TDataSet);
begin
  rsFactoresMesFecha.AsDateTime := deFec.Date;
end;

procedure TMantFactoresMes.cxButton3Click(Sender: TObject);
var
  i: Integer;
begin
  i := BuscarDistribucion();
  if i > 0 then begin
    with cGenerar do begin
      Parameters[1].Value := i;
      Parameters[2].Value := deFec.Date;
      Execute();
    end;
  end;
end;

end.

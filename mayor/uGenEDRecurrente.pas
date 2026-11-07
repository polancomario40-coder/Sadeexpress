unit uGenEDRecurrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLabel, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TGenEDRecurrente = class(TForm)
    rs: TADODataSet;
    rsidEDRecurrente: TGuidField;
    rsGrupo: TStringField;
    rsConcepto: TStringField;
    rsNumeroEntrada: TStringField;
    ds: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1Concepto: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroEntrada: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    deFecha: TcxDateEdit;
    cxLabel1: TcxLabel;
    cGenED: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
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
  GenEDRecurrente: TGenEDRecurrente;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TGenEDRecurrente.FormCreate(Sender: TObject);
begin
  rs.Open();
  deFecha.Date := gldm.GlobalHasta;
end;

procedure TGenEDRecurrente.cxButton1Click(Sender: TObject);
begin
  with cGenED do begin
    Parameters[1].Value := rsIdEDRecurrente.Value;
    Parameters[2].Value := deFecha.Date;
    Execute();
  end;
  Showmessage('Entrada generada exitosamente');
end;

procedure TGenEDRecurrente.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  cxButton1.Click();
end;

end.


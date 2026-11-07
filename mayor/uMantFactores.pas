unit uMantFactores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons, cxContainer, cxLabel,
  Gradient, ExtCtrls;

type
  TMantFactores = class(TForm)
    rsFactores: TADODataSet;
    rsFactoresidFactor: TIntegerField;
    rsFactoresDescripcion: TStringField;
    ds: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idFactor: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxButton1: TcxButton;
    Panel1: TPanel;
    Gradient1: TGradient;
    cxLabel1: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantFactores: TMantFactores;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TMantFactores.cxButton1Click(Sender: TObject);
begin
  Close();
end;

procedure TMantFactores.FormCreate(Sender: TObject);
begin
  rsFactores.Open();
end;

end.

unit uConfigurarPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ADODB, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxMRUEdit, StdCtrls, cxLookAndFeelPainters,
  cxButtons;

type
  TConfigurarPC = class(TFForm)
    Label1: TLabel;
    cxMRUEdit1: TcxMRUEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    rs: TADODataSet;
    rsNombrePC: TStringField;
    rsConfiguracion: TStringField;
    rsValor: TStringField;
    cxGrid1DBTableView1Configuracion: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure cxMRUEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure rsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfigurarPC: TConfigurarPC;

implementation

uses Udata, UUtiles;

{$R *.dfm}

procedure TConfigurarPC.cxMRUEdit1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxmruEdit1.EditValue <> NULL then begin
    with rs do begin
      Close();
      Parameters[0].Value := cxMRUEdit1.EditValue;
      Open();
    end;

    cxMRUEdit1.AddItem(cxMRUEdit1.Text);
  end;
end;

procedure TConfigurarPC.FormCreate(Sender: TObject);
begin
  inherited;
  cxMRUEdit1.EditValue := ComputerName();
end;

procedure TConfigurarPC.DSStateChange(Sender: TObject);
begin
  inherited;
  cxMRUEdit1.Enabled := not (rs.State in dsEditModes);
  cxButton1.Enabled := not (rs.State in dsEditModes);
end;

procedure TConfigurarPC.cxButton1Click(Sender: TObject);
begin
  inherited;
  dm.rsConfigPC.Close();
  Close();
end;

procedure TConfigurarPC.rsNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsNombrePC.Value := ComputerName();
end;

end.

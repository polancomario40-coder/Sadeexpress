unit USIREN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, StdCtrls, Buttons, DB, ADODB, Grids, Wwdbigrd, Wwdbgrid,
  Wwdatsrc, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TSIREN = class(TFForm)
    GRID: TwwDBGrid;
    toafp: TADODataSet;
    BitBtn1: TBitBtn;
    dDesde: TcxDateEdit;
    dHasta: TcxDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn3: TBitBtn;
    Save: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SIREN: TSIREN;

implementation

uses Udata;

{$R *.dfm}

procedure TSIREN.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Save.Execute;
  Grid.ExportOptions.FileName := save.FileName;
  Grid.ExportOptions.Save;
end;

Procedure TSIREN.BitBtn3Click(Sender: TObject);
begin
  inherited;
  ToAFP.close;
  ToAFP.Parameters[1].Value := dDesde.date;
  ToAFP.Parameters[2].Value := dHasta.date;
  ToAFP.open;
end;

procedure TSIREN.FormCreate(Sender: TObject);
begin
  inherited;
  dDesde.date := dm.FechaDesde;
  dHasta.date := dm.FechaHasta;
end;

end.

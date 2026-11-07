unit uConsultaXLS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, ADODB, Wwdatsrc, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLookAndFeelPainters,
  cxShellBrowserDialog, StdCtrls, cxButtons, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxExportGrid4Link, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid;

type
  TConsultaXLS = class(TFForm)
    RS: TADODataSet;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    dtDesde: TcxDateEdit;
    dtHasta: TcxDateEdit;
    dlg: TSaveDialog;
    Grid: TdxDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaXLS: TConsultaXLS;

implementation

uses Udata;

{$R *.dfm}

procedure TConsultaXLS.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TConsultaXLS.cxButton2Click(Sender: TObject);
var
  fn: string;
begin
  inherited;
  if dlg.Execute() then begin
    fn := dlg.FileName;
    Grid.SaveToXLS(fn,True);
  end;
end;

procedure TConsultaXLS.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := dtDesde.Date;
    Parameters[2].Value := dtHasta.Date;
    Open();
  end;
end;

procedure TConsultaXLS.FormCreate(Sender: TObject);
begin
  inherited;
  dtDesde.Date := dm.FechaDesde;
  dtHasta.Date := dm.FechaHasta;
end;

end.

unit uBusquedaRangoDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusquedaDX, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxContainer, cxCheckBox, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TBusquedaRangoDX = class(TBusquedaDX)
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetQuery; override;
  public
    { Public declarations }
    procedure reCreate(const spname: string); override;
  end;

var
  BusquedaRangoDX: TBusquedaRangoDX;

implementation

uses Udata;

{$R *.dfm}

procedure TBusquedaRangoDX.cxButton1Click(Sender: TObject);
begin
  inherited;
  SetQuery();
end;

procedure TBusquedaRangoDX.reCreate(const spname: string);
begin
  inherited;
  if spName <> '' then begin
    rs.Parameters.CreateParameter('@desde', ftDateTime, pdInput,8,0);
    rs.Parameters.CreateParameter('@hasta', ftDateTime, pdInput,8,0);
  end;
end;

procedure TBusquedaRangoDX.SetQuery;
begin
  rs.Parameters.ParamByName('@desde').Value := deDesde.Date;
  rs.Parameters.ParamByName('@hasta').Value := dehasta.Date;
  inherited SetQuery();
  
  dm.FechaDesde := deDesde.Date;
  dm.FechaHasta := deHasta.Date;
end;

procedure TBusquedaRangoDX.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;

  //setQuery();
end;

end.

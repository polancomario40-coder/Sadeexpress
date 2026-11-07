unit uToDGII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, StdCtrls, cxButtons, DB, ADODB,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, uSimpleForm;

type
  TToDGII = class(TSimpleForm)
    grid: TdxDBGrid;
    Facturas: TADODataSet;
    dsFacturas: TDataSource;
    cxButton1: TcxButton;
    dDesde: TcxDateEdit;
    dHasta: TcxDateEdit;
    cxButton2: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    cxButton3: TcxButton;
    FacturasClave: TGuidField;
    FacturasOrden: TIntegerField;
    FacturasNombre: TStringField;
    FacturasCadena: TStringField;
    gridClave: TdxDBGridColumn;
    gridOrden: TdxDBGridMaskColumn;
    gridNombre: TdxDBGridMaskColumn;
    gridCadena: TdxDBGridMaskColumn;
    Save: TSaveDialog;
    cxButton4: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ToDGII: TToDGII;

implementation

uses uMAINDM, Udata;

{$R *.dfm}

procedure TToDGII.cxButton1Click(Sender: TObject);
begin
  Facturas.Close;
  Facturas.Parameters[1].value := dDesde.Date;
  Facturas.Parameters[2].value := dHasta.date;
  Facturas.Open;
  Grid.SelectAll;
end;

procedure TToDGII.FormCreate(Sender: TObject);
begin
  dDesde.date := date - 30;
  dHasta.date := date
end;

procedure TToDGII.cxButton2Click(Sender: TObject);
var
  x : tstringList;
begin

  x := tstringList.Create;

  Save.execute;
  grid.SaveAllToStrings(x);
  x.Delete(0);
  x.SaveToFile(save.FileName);
  x.Free;
end;

procedure TToDGII.cxButton3Click(Sender: TObject);
begin
  grid.SelectAll;
end;

procedure TToDGII.cxButton4Click(Sender: TObject);
begin
  inherited;
  Close();
end;

end.

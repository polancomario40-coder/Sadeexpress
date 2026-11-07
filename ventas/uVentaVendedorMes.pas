unit uVentaVendedorMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ADODB, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TVentaVendedorMes = class(TFForm)
    Label1: TLabel;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton3: TcxButton;
    rs: TADODataSet;
    rsidComisionVendedor: TGuidField;
    rsidEmpleado: TIntegerField;
    rsFecha: TDateTimeField;
    rsTotalVenta: TBCDField;
    rsComision: TBCDField;
    rsComisionNuevos: TBCDField;
    rsListaEmpleados: TADODataSet;
    rsListaEmpleadosidEmpleado: TIntegerField;
    rsListaEmpleadosidNomina: TIntegerField;
    rsListaEmpleadosEmpleado: TStringField;
    rsListaEmpleadosDireccion: TStringField;
    rsListaEmpleadosCiudad: TStringField;
    rsListaEmpleadosTelefono: TStringField;
    rsListaEmpleadosBeeper: TStringField;
    rsListaEmpleadosNotas: TStringField;
    rsListaEmpleadosesVendedor: TBooleanField;
    rsListaEmpleadosinactivo: TBooleanField;
    rsListaEmpleadosUidEmpleado: TGuidField;
    rsListaEmpleadosidEmpleadoRoll: TStringField;
    rsListaEmpleadosGrupoTrabajo: TIntegerField;
    rsListaEmpleadosidPlanta: TStringField;
    rsListaEmpleadosIdEmpleadoGrupo: TIntegerField;
    rsListaEmpleadosEmail: TStringField;
    dsEmpleados: TwwDataSource;
    cxGrid1DBTableView1idEmpleado: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1TotalVenta: TcxGridDBColumn;
    cxGrid1DBTableView1Comision: TcxGridDBColumn;
    cxGrid1DBTableView1ComisionNuevos: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VentaVendedorMes: TVentaVendedorMes;

implementation

uses Udata;

{$R *.dfm}

procedure TVentaVendedorMes.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := deHasta.Date;
    Open();
  end;
end;

procedure TVentaVendedorMes.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TVentaVendedorMes.FormCreate(Sender: TObject);
begin
  inherited;
  rsListaEmpleados.Open();
end;

end.

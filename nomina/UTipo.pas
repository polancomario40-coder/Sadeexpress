unit UTipo;
            
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, ComCtrls, StdCtrls,
  Buttons, ValEdit, uform, wwrcdpnl, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  ADODB, DBGrids;

type
  TTipo = class(TFForm)
    Paginas: TPageControl;
    Button1: TButton;
    TabSheet2: TTabSheet;
    dsTipoEmpleado: TwwDataSource;
    wwDBGrid2: TwwDBGrid;
    TabSheet4: TTabSheet;
    DsTipoTransaccion: TwwDataSource;
    wwDBGrid4: TwwDBGrid;
    DSSemanasMes: TwwDataSource;
    TabSheet8: TTabSheet;
    DISR: TwwDataSource;
    wwDBGrid9: TwwDBGrid;
    Tipos: TwwDBComboBox;
    dsTablaSS: TDataSource;
    TabSheet1: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    DSTipoNomina: TDataSource;
    TipoEmpleado: TADOTable;
    ISR: TADOTable;
    TipoNomina: TADOTable;
    TipoTransaccion: TADOTable;
    TipoTransaccionTipoTransaccionID: TIntegerField;
    TipoTransaccionTipoTransaccion: TStringField;
    TipoTransaccionDebito: TBooleanField;
    TipoTransaccionCotizable: TBooleanField;
    TipoTransaccionTipo: TStringField;
    TipoTransaccionAdelanto: TBooleanField;
    TipoTransaccionProgramada: TBooleanField;
    TipoTransaccionNota: TStringField;
    TipoTransaccionOrden: TIntegerField;
    TipoTransaccionClasificacion: TIntegerField;
    TipoTransaccionRegalia: TBooleanField;
    TipoTransaccionISRno: TBooleanField;
    SemanasMes: TADOTable;
    TablaSS: TADOTable;
    TipoTransaccionValor: TFloatField;
    TipoTransaccionLiquidacion: TBooleanField;
    TipoTransaccionuidTipoTransaccion: TGuidField;
    TipoTransaccionMultiplo: TFloatField;
    TipoEmpleadoTipoEmpleadoID: TAutoIncField;
    TipoEmpleadoTipoEmpleado: TStringField;
    TipoEmpleadoAFP: TBooleanField;
    TipoEmpleadoEntradaDiarioNum: TStringField;
    TipoEmpleadouidTipoEmpleado: TGuidField;
    TipoEmpleadoAfpNumero: TIntegerField;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TipoTransaccionNewRecord(DataSet: TDataSet);
    procedure TipoTransaccionAdelantoValidate(Sender: TField);
    procedure TipoTransaccionDebitoValidate(Sender: TField);
    procedure TipoTransaccionBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tipo: TTipo;

implementation

uses Udata, UdataNom;

{$R *.dfm}

procedure TTipo.Button1Click(Sender: TObject);
begin
  inherited;
  close();
end;

procedure TTipo.FormCreate(Sender: TObject);
begin
  inherited;
  TipoNomina.open ;
  isr.open;
  semanasmes.open;
  tipoempleado.open;

  tipotransaccion.open;
  Tablass.open;
end;

procedure TTipo.TipoTransaccionNewRecord(DataSet: TDataSet);
begin
  inherited;
  TipoTransaccionDebito.value := true;
  TipoTransaccionCotizable.Value := true;
  TipoTransacciontipo.Value := 'M';
  TipoTransaccionISRNO.Value := false;
  TipoTransaccionAdelanto.Value := false;
  TipoTransaccionMultiplo.Value := 1;
  TipoTransaccionRegalia.Value := true;
end;

procedure TTipo.TipoTransaccionAdelantoValidate(Sender: TField);
begin
  inherited;
  if Not(TipotransaccionDebito.Value) then
    raise exception.create('Esta funcion es solo para los Ingresos');

  if tipotransaccionprogramada.value then
    raise exception.create('No se pueden modificar esta opcion para las transacciones preprogramadas');
end;

procedure TTipo.TipoTransaccionDebitoValidate(Sender: TField);
begin
  inherited;
  if (not(sender.Value)) and (TipoTransaccionAdelanto.Value) then
     raise exception.create('Si es solo para I/R debe ser Ingreso');

  if tipotransaccionprogramada.value then
    raise exception.create('No se pueden modificar esta opcion para las transacciones preprogramadas');
end;

procedure TTipo.TipoTransaccionBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if tipotransaccionprogramada.value then
    raise exception.create('No se pueden modificar las transacciones preprogramadas');
end;

end.

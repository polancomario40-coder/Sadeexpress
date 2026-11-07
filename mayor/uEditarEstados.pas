unit uEditarEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit, Wwdotdot,
  Wwdbcomb, StdCtrls, wwdblook, ComCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCheckBox, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeelPainters, cxButtons, cxExportGrid4Link;

type
  TfEditarEstados = class(TForm)
    rsEstados: TADODataSet;
    rsEstadosidEstado: TAutoIncField;
    rsEstadosDescripcion: TStringField;
    rsGrupos: TADODataSet;
    rsGruposidGrupo: TAutoIncField;
    rsGruposidEstado: TIntegerField;
    rsGruposOrden: TWordField;
    rsGruposDescripcion: TStringField;
    efds: TDataSource;
    grds: TDataSource;
    itmds: TDataSource;
    ctasds: TDataSource;
    rsItems: TADODataSet;
    rsCuentas: TADODataSet;
    rsCuentasidEstado: TIntegerField;
    rsCuentasidGrupo: TIntegerField;
    rsCuentasidItem: TIntegerField;
    rsCuentasLineaId: TAutoIncField;
    rsCuentasidCuenta: TStringField;
    rsCuentasDebCre: TWordField;
    rsItemsidEstado: TIntegerField;
    rsItemsIdGrupo: TIntegerField;
    rsItemsidItem: TAutoIncField;
    rsItemsDescripcion: TStringField;
    rsCatalogo: TADODataSet;
    rsCatalogoidCuenta: TStringField;
    rsCatalogoDescripcion: TStringField;
    rsCuentasluCuenta: TStringField;
    rsGruposSeccion: TStringField;
    rsGruposTextoPie: TStringField;
    rsItemsTextoPie: TStringField;
    rsItemsOrden: TIntegerField;
    rsGruposDebCre: TWordField;
    rsItemsDebCre: TWordField;
    rsEstadosTextoPie: TStringField;
    rsSecciones: TADODataSet;
    dsSecciones: TDataSource;
    rsSeccionesidSeccion: TAutoIncField;
    rsSeccionesidEstado: TIntegerField;
    rsSeccionesidGrupo: TIntegerField;
    rsSeccionesDescripcion: TStringField;
    rsSeccionesTextoPie: TStringField;
    rsSeccionesDebCre: TWordField;
    rsSeccionesOrden: TIntegerField;
    rsItemsidSeccion: TIntegerField;
    rsCuentasidSeccion: TIntegerField;
    rsGruposMostrarDetalle: TBooleanField;
    rsGruposMostrarHeader: TBooleanField;
    rsGruposMostrarTotales: TBooleanField;
    rsItemsMostrarDetalle: TBooleanField;
    rsItemsMostrarHeader: TBooleanField;
    rsItemsMostrarTotales: TBooleanField;
    rsSeccionesMostrarDetalle: TBooleanField;
    rsSeccionesMostrarHeader: TBooleanField;
    rsSeccionesMostrarTotales: TBooleanField;
    rsEstadosTipo: TStringField;
    rsGruposNotaGrupo: TStringField;
    rsItemsNotaItem: TStringField;
    rsSeccionesNotaSec: TStringField;
    rsEstadosNotaEstado: TStringField;
    rsCuentasOrden: TIntegerField;
    dsCatalogo: TDataSource;
    sd: TSaveDialog;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid5: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    grCtas: TcxGrid;
    grCtasDBTableView1: TcxGridDBTableView;
    grCtasDBTableView1idCuenta: TcxGridDBColumn;
    grCtasDBTableView1DebCre: TcxGridDBColumn;
    grCtasDBTableView1luCuenta: TcxGridDBColumn;
    grCtasDBTableView1Orden: TcxGridDBColumn;
    grCtasLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    procedure rsGruposNewRecord(DataSet: TDataSet);
    procedure rsItemsNewRecord(DataSet: TDataSet);
    procedure rsCuentasNewRecord(DataSet: TDataSet);
    procedure rsEstadosAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure rsEstadosNewRecord(DataSet: TDataSet);
    procedure rsSeccionesNewRecord(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditarEstados: TfEditarEstados;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TfEditarEstados.rsGruposNewRecord(DataSet: TDataSet);
begin
  rsGruposIdEstado.AsInteger := rsEstadosidEstado.AsInteger;
  rsGruposMostrarDetalle.Value := True;
  rsGruposMostrarHeader.Value := True;
  rsGruposMostrarTotales.Value := True;
  rsGruposDebCre.Value := 1;  
end;

procedure TfEditarEstados.rsItemsNewRecord(DataSet: TDataSet);
begin
  rsItemsIdEstado.AsInteger := rsSeccionesIdEstado.AsInteger;
  rsItemsIdGrupo.AsInteger := rsSeccionesIdGrupo.AsInteger;
  rsItemsIdSeccion.AsInteger := rsSeccionesIdSeccion.AsInteger;
  rsItemsMostrarDetalle.Value := True;
  rsItemsMostrarHeader.Value := True;
  rsItemsMostrarTotales.Value := True;
  rsItemsDebCre.Value := 1;  
end;

procedure TfEditarEstados.rsCuentasNewRecord(DataSet: TDataSet);
begin
  rsCuentasIdEstado.AsInteger := rsItemsIdEstado.AsInteger;
  rsCuentasIdGrupo.AsInteger := rsItemsIdGrupo.AsInteger;
  rsCuentasIdItem.AsInteger := rsItemsIdItem.AsInteger;
  rsCuentasIdSeccion.AsInteger := rsItemsIdSeccion.AsInteger;
  rsCuentasDebCre.Value := 1;
end;

procedure TfEditarEstados.rsEstadosAfterPost(DataSet: TDataSet);
begin
  rsEstados.Requery;
end;

procedure TfEditarEstados.FormCreate(Sender: TObject);
begin
  rsEstados.Open();
  rsGrupos.Open();
  rsSecciones.Open();
  rsItems.Open();
  rsCuentas.Open();
  rsCatalogo.Open();

end;

procedure TfEditarEstados.rsEstadosNewRecord(DataSet: TDataSet);
begin
  rsEstadosTipo.Value := 'B';
end;

procedure TfEditarEstados.rsSeccionesNewRecord(DataSet: TDataSet);
begin
  rsSeccionesidEstado.AsInteger := rsEstadosIdEstado.AsInteger;
  rsSeccionesIdGrupo.AsInteger := rsGruposIdGrupo.AsInteger;
  rsSeccionesMostrarDetalle.Value := True;
  rsSeccionesMostrarHeader.Value := True;
  rsSeccionesMostrarTotales.Value := True;
  rsSeccionesDebCre.Value := 1;
end;

procedure TfEditarEstados.cxButton1Click(Sender: TObject);
begin
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName, grCtas);
end;

end.

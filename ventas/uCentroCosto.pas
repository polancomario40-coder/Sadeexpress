unit uCentroCosto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant1, DB, ADODB, ActnList, ImgList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxEdLib,
  dxDBELib, StdCtrls, dxCntner, dxEditor, dxDBEdtr, uformmant2, Grids,
  Wwdbigrd, Wwdbgrid, strutils, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, Buttons, cxMemo, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLookAndFeelPainters, cxButtons,
  cxCalendar, cxCheckBox;

type
  TCentroCosto = class(Tfformmant1)
    Label1: TLabel;
    Label3: TLabel;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Label7: TLabel;
    AGetGrupo: TAction;
    RSidCentroCosto: TGuidField;
    RSCentroCosto: TStringField;
    RSCentroCostoDesc: TStringField;
    RSActivo: TBooleanField;
    RSTipo: TStringField;
    RSReferencia: TStringField;
    Label2: TLabel;
    RSidCentroCostoParent: TGuidField;
    RSOrden: TIntegerField;
    Label4: TLabel;
    CCParent: TADODataSet;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dsParent: TwwDataSource;
    CCParentidCentroCosto: TGuidField;
    CCParentCentroCosto: TStringField;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    RSNivel: TIntegerField;
    RSStatus: TStringField;
    Label8: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    RSNota: TStringField;
    cxDBMemo1: TcxDBMemo;
    CCParentNivel: TIntegerField;
    CCParentActivo: TBooleanField;
    CCParentTipo: TStringField;
    Gridx: TcxGrid;
    GridxDBTableView1: TcxGridDBTableView;
    GridxDBTableView1idDocumento: TcxGridDBColumn;
    GridxDBTableView1idCentroCosto: TcxGridDBColumn;
    GridxDBTableView1idPartida: TcxGridDBColumn;
    GridxDBTableView1Fecha: TcxGridDBColumn;
    GridxDBTableView1Partida: TcxGridDBColumn;
    GridxDBTableView1Documento: TcxGridDBColumn;
    GridxDBTableView1Tipo: TcxGridDBColumn;
    GridxDBTableView1Valor: TcxGridDBColumn;
    GridxDBTableView1Notas: TcxGridDBColumn;
    GridxLevel1: TcxGridLevel;
    DS2: TwwDataSource;
    rsdet: TADODataSet;
    rsdetidDocumento: TGuidField;
    rsdetidCentroCosto: TGuidField;
    rsdetidPartida: TStringField;
    rsdetPartida: TStringField;
    rsdetFecha: TDateTimeField;
    rsdetDocumento: TStringField;
    rsdetTipo: TStringField;
    rsdetValor: TBCDField;
    rsdetNotas: TStringField;
    cxButton1: TcxButton;
    Hasta: TcxDateEdit;
    Desde: TcxDateEdit;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSidCentroCostoParentValidate(Sender: TField);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure Cargargastos;
    { Private declarations }
  public
    { Public declarations }
  protected
  end;

var
  CentroCosto: TCentroCosto;

implementation

uses Udata, uBusqueda, UUtiles, uFullTextSearch;

{$R *.dfm}

procedure TCentroCosto.FormCreate(Sender: TObject);
begin
  MasterField := 'idCentrocosto';
  inherited;
  LogField := 'CentroCosto';
  ImageidField := 'idCentroCosto';
  TipoDoc := 'CENTROCOSTO';
  ccParent.open;
  spName := 'costCentroCostoFind';
  Busqfield := 'idCentroCosto';
  tfBusqueda := TFullTextSearch;
  OcultarC1 := true;    //oculta la columna 1 en la busqueda
  Desde.Date := dm.FechaDesde;
  Hasta.Date := dm.FechaHasta; 
end;

procedure TCentroCosto.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsactivo.Value := true;
  rsidCentroCosto.AsGuid := dm.NewGuid;
  rsNivel.Value := 0;
  rsTipo.value := 'GENERAL';
  rsOrden.Value := 100;
end;


procedure TCentroCosto.RSidCentroCostoParentValidate(Sender: TField);
begin
  inherited;
  if RSidCentroCosto.Value = Sender.value then
       raise exception.create('No es posible asignar un Centro de Costo a el mismo como dependiente');

  if (ccparent.Locate('idCentroCosto',sender.value,[])) and ((ccparentactivo.value)) then begin
    rsNivel.Value := ccParentnivel.Value + 1;
    rsTipo.Value := ccParenttipo.value;
  end

end;

procedure TCentroCosto.cxButton1Click(Sender: TObject);
begin
  inherited;
  CargarGastos();
end;

procedure TCentroCosto.Cargargastos();
begin
  inherited;
  if rsidCentroCosto.asstring = '' then
    Rsdet.close
  else begin
    RSDet.parameters[1].value := rsidCentroCosto.value;
    RSDet.parameters[2].value := Desde.Date;
    RSDet.parameters[3].value := Hasta.Date;
    RSDet.close;
    RSDet.open;
  end;
end;

end.




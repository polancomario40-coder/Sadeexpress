unit uEvaluacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, DB, ADODB, ActnList, ImgList, Wwdatsrc, Grids,
  Wwdbigrd, Wwdbgrid, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, StdCtrls, DBCtrls, Mask, dxCntner, dxEditor,
  dxEdLib, dxDBELib;

type
  TEvaluacion = class(Tfformmant2)
    RSidEvaluacion: TGuidField;
    RSidCliente: TIntegerField;
    RSFecha: TDateTimeField;
    RSMontura: TStringField;
    RSColorCristal: TStringField;
    RSObservaciones: TStringField;
    RSDiabetes: TBooleanField;
    RSHipertension: TBooleanField;
    RSToxoplasmosis: TBooleanField;
    RSCirugiasOculares: TBooleanField;
    RSCliente: TStringField;
    RSDetidEvaluacion: TGuidField;
    RSDetidEvaluacionDet: TGuidField;
    RSDetRX: TStringField;
    RSDetESPERA: TBCDField;
    RSDetCIL: TBCDField;
    RSDetEJE: TBCDField;
    RSDetADD: TBCDField;
    RSDetDP: TBCDField;
    RSDetALT: TBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit4: TDBEdit;
    dxDBDateEdit2: TcxDBDateEdit;
    Label4: TLabel;
    FindCliente: TButton;
    dxDBEdit6: TdxDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure FindClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Evaluacion: TEvaluacion;

implementation

uses uBusqueda, Udata;

{$R *.dfm}

procedure TEvaluacion.FormCreate(Sender: TObject);
begin
  inherited;
 MasterField := 'idEvaluacion';
  DetailField := 'idEvaluacion';
  inherited;
  Modulo := 'Evaluacion';
  logField := 'Cliente';
  imageidField := 'idEvaluacion';

  spName := 'FindEvaluacion';
  Busqfield := 'idEvaluacion';
  tfBusqueda := TBusqueda;
  OcultarC1 := false; //oculta la columna 1 en la busqueda
end;

procedure TEvaluacion.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsdetidEvaluacion.AsGuid := dm.NewGuid;
end;

procedure TEvaluacion.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
   rsdetidEvaluacionDet.AsGuid := dm.NewGuid;
end;

procedure TEvaluacion.FindClienteClick(Sender: TObject);
var
  x: variant;
begin
  inherited;
   x := fbuscar(TBusqueda, 'idCliente', false, 'FindCliente');
   //x := ModalShowResult(TCliente, ShowFind, rsidCliente.Value, 'idCliente', False,'idCliente');
  if x <> Null then
  begin
    RSidCliente.Value := x;
  end;

end;

end.

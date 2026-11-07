unit uEquipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant1, DB, ADODB, ActnList, ImgList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxEdLib,
  dxDBELib, StdCtrls, dxCntner, dxEditor, dxDBEdtr, uformmant2, Grids,
  Wwdbigrd, Wwdbgrid, strutils, cxMemo, cxDBEdit, cxImage, cxSpinEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox;

type
  TEquipo = class(Tfformmant1)
    Label1: TLabel;
    Label7: TLabel;
    RSidEquipo: TStringField;
    RSEquipo: TStringField;
    RSActivo: TBooleanField;
    RSGrupoTrabajo: TIntegerField;
    RSUidEquipo: TGuidField;
    AGetLinea: TAction;
    RSesProceso: TBooleanField;
    RSMarca: TStringField;
    RSColor: TStringField;
    RSAnno: TWordField;
    RSPlaca: TStringField;
    RSMatricula: TStringField;
    RSAseguradora: TStringField;
    RSPoliza: TStringField;
    RSTarifa: TFloatField;
    RSColaterales: TBCDField;
    RSPropietario: TStringField;
    RSFechaAdq: TDateTimeField;
    RSStatus: TStringField;
    RSNota: TStringField;
    RSCapacidad: TFloatField;
    RSidUnidadCapacidad: TStringField;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label6: TLabel;
    Label8: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxLabel2: TcxLabel;
    Shape2: TShape;
    Label9: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBImage1: TcxDBImage;
    cxDBMemo1: TcxDBMemo;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label16: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label18: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    rsUnidad: TADODataSet;
    rsUnidadidUnidad: TStringField;
    rsUnidadUnidad: TStringField;
    rsUnidadidUnidadBase: TStringField;
    rsUnidadidFactor: TFloatField;
    rsUnidadUidUnidad: TGuidField;
    dsUnidad: TwwDataSource;
    RSFoto: TBlobField;
    Label19: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    rsTipo: TADODataSet;
    dsTipo: TwwDataSource;
    rsTipoidEquipoTipo: TStringField;
    rsTipoEquipoTipo: TStringField;
    rsTipoTarifaPorHora: TBooleanField;
    RSidEquipoTipo: TStringField;
    RSesCentroCosto: TBooleanField;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure AGuardarExecute(Sender: TObject);
    procedure RSStatusValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;
  end;

CONST
  TIPOCC = 'EQUIPO';

var
  Equipo: TEquipo;

implementation

uses Udata, uBusqueda, UUtiles, ConduceFind, udmCentroCosto;

{$R *.dfm}

procedure TEquipo.FormCreate(Sender: TObject);
begin
  inherited;
  LogField := 'idEquipo';
  ImageidField := 'uidEquipo';
  TipoDoc := 'EQUIPO';
  MasterField := 'idEquipo';
  spName := 'FindEquipo';
  Busqfield := 'idEquipo';
  tfBusqueda := TBusqueda;
  OcultarC1 := false;    //oculta la columna 1 en la busqueda
  rsUnidad.Open();
  rsTipo.Open();
end;

procedure TEquipo.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsactivo.Value := true;
  rsuidequipo.AsGuid := dm.NewGuid;
  rsStatus.Value := 'ACTIVO';
  rsesCentrocosto.Value := false;  
end;

procedure TEquipo.browsebotonstate;
begin
  inherited;

end;

procedure TEquipo.editbotonstate;
begin
  inherited;

end;

procedure TEquipo.newbotonstate;
begin
  inherited;


end;

procedure TEquipo.AGuardarExecute(Sender: TObject);
begin
  dm.Coneccion.BeginTrans;
  try
    inherited;
    if rsesCentroCosto.Value then begin
      if not(CentroCostoUpdate(rsuidequipo.value, rsidequipo.Value, rsequipo.Value, TIPOCC,'', rsactivo.Value)) then
        raise exception.create('Error al actualizar el centro de costos');
    end;
  except
    dm.Coneccion.RollbackTrans;
    raise;
  end;
  dm.Coneccion.CommitTrans;
end;

procedure TEquipo.RSStatusValidate(Sender: TField);
begin
  inherited;
  rsActivo.Value := rsStatus.Value = 'ACTIVO';
end;

end.




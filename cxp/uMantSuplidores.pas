unit uMantSuplidores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, DB, dxCntner, Buttons, StdCtrls, ExtCtrls, dxEditor,
  dxExEdtr, dxDBEdtr, dxDBELib, ADODB, Mask, dxEdLib, Gradient,
  uMantClassRS, cxLookAndFeelPainters, ActnList, cxButtons,
  cxCheckBox, cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Wwdatsrc, cxButtonEdit, cxImageComboBox, cxPC,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfMantSuplidores = class(TMantClassRS)
    rsTipoEnt: TADODataSet;
    dsTipos: TDataSource;
    dsImp: TDataSource;
    rsTiposImp: TADODataSet;
    rsEntidades: TADODataSet;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    wwDBEdit1: TcxDBTextEdit;
    edNom: TcxDBTextEdit;
    edRNC: TcxDBTextEdit;
    edDir: TcxDBTextEdit;
    edTel1: TcxDBTextEdit;
    edTel2: TcxDBTextEdit;
    edFax: TcxDBTextEdit;
    edMail: TcxDBTextEdit;
    luTipo: TcxDBLookupComboBox;
    rsTipoEntTipoSuplidor: TIntegerField;
    rsTipoEntDescripcion: TStringField;
    rsEntidadesidSuplidor: TAutoIncField;
    rsEntidadesNombre: TStringField;
    rsEntidadesDireccion: TStringField;
    rsEntidadesCiudad: TStringField;
    rsEntidadesProvincia: TStringField;
    rsEntidadesPais: TStringField;
    rsEntidadesTelefono1: TStringField;
    rsEntidadesTelefono2: TStringField;
    rsEntidadesLimiteCredito: TBCDField;
    rsEntidadesDiasCredito: TIntegerField;
    rsEntidadesTipoSuplidor: TIntegerField;
    rsEntidadesRNC: TStringField;
    rsEntidadesFechaIngreso: TDateTimeField;
    rsEntidadesEstatus: TBooleanField;
    rsEntidadesEMail: TStringField;
    rsEntidadesContacto: TStringField;
    rsEntidadesTelContacto: TStringField;
    rsEntidadesFax: TStringField;
    rsEntidadesCod: TStringField;
    rsEntidadesidMoneda: TIntegerField;
    rsTiposImpTipoImpuesto: TAutoIncField;
    rsTiposImpDescripcion: TStringField;
    rsTiposImpPorcentaje: TBCDField;
    rsTiposImpTitulo: TStringField;
    rsTiposImpidCuenta: TStringField;
    rsEntidadesTipoImpuesto: TIntegerField;
    rsMonedas: TADODataSet;
    Label2: TLabel;
    luMon: TcxDBLookupComboBox;
    dsMonedas: TDataSource;
    rsEntidadesidCuenta: TStringField;
    Label17: TLabel;
    Label18: TLabel;
    edPais: TcxDBTextEdit;
    Label19: TLabel;
    edCiudad: TcxDBTextEdit;
    dxDBCheckEdit1: TcxDBCheckBox;
    dxDBCheckEdit2: TcxDBCheckBox;
    rsEntidadesMostrarEnCXP: TBooleanField;
    rsEntidadesAbrev: TStringField;
    rsMonedasidMoneda: TIntegerField;
    rsMonedasNombre: TStringField;
    rsTipoDocID: TADODataSet;
    dsTipoId: TDataSource;
    rsTipoDocIDidTipoIdentificacion: TStringField;
    rsTipoDocIDTipoIdentificacion: TStringField;
    luTipoID: TcxDBLookupComboBox;
    rsEntidadesidTipoIdentificacion: TStringField;
    rsEntidadesPedirNCF: TStringField;
    rsEntidadesFormaPago: TStringField;
    pcSuplidor: TcxPageControl;
    tsContacto: TcxTabSheet;
    tsImpuestos: TcxTabSheet;
    tsBancos: TcxTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edCont: TcxDBTextEdit;
    edTelCon: TcxDBTextEdit;
    edDias: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label13: TLabel;
    Label20: TLabel;
    luItbis: TcxDBLookupComboBox;
    luPedirNCF: TcxDBImageComboBox;
    rsBancoSuplidor: TADODataSet;
    dsBancoSuplidor: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    rsBancosACH: TADODataSet;
    rsBancoSuplidorIdBancoSuplidor: TGuidField;
    rsBancoSuplidorIdSuplidor: TIntegerField;
    rsBancoSuplidorIdMoneda: TIntegerField;
    rsBancoSuplidorBancoCodigo: TStringField;
    rsBancoSuplidorTipoCuenta: TStringField;
    rsBancoSuplidorBancoDefault: TBooleanField;
    cxGrid1DBTableView1IdBancoSuplidor: TcxGridDBColumn;
    cxGrid1DBTableView1IdSuplidor: TcxGridDBColumn;
    cxGrid1DBTableView1IdMoneda: TcxGridDBColumn;
    cxGrid1DBTableView1BancoCodigo: TcxGridDBColumn;
    cxGrid1DBTableView1TipoCuenta: TcxGridDBColumn;
    cxGrid1DBTableView1BancoDefault: TcxGridDBColumn;
    dsBancosACH: TDataSource;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    rsBancosACHCodigo: TStringField;
    rsBancosACHBanco: TStringField;
    rsBancosACHLongitudCuenta: TIntegerField;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    rsBancoSuplidorCuenta: TStringField;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    Label3: TLabel;
    luSupRef: TcxDBButtonEdit;
    rsEntidadesidSuplidorParent: TIntegerField;
    cxDBTextEdit3: TcxDBTextEdit;
    rsParentAct: TADODataSet;
    rsParentActNombre: TStringField;
    dsParents: TDataSource;
    dsCtas: TDataSource;
    rsCuentas: TADODataSet;
    rsCuentasidSuplidor: TIntegerField;
    rsCuentasidMoneda: TIntegerField;
    rsCuentasidCuenta: TStringField;
    grCtasDBTableView1: TcxGridDBTableView;
    grCtasLevel1: TcxGridLevel;
    grCtas: TcxGrid;
    grCtasDBTableView1idMoneda: TcxGridDBColumn;
    grCtasDBTableView1idCuenta: TcxGridDBColumn;
    rsCuentasidCuentaGasto: TStringField;
    grCtasDBTableView1DBColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure rsEntidadesNewRecord(DataSet: TDataSet);
    procedure ALocalizarExecute(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure edCtaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DSStateChange(Sender: TObject);
    procedure rsEntidadesAfterPost(DataSet: TDataSet);
    procedure rsBancoSuplidorNewRecord(DataSet: TDataSet);
    procedure rsEntidadesidSuplidorParentValidate(Sender: TField);
    procedure luSupRefPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure rsCuentasNewRecord(DataSet: TDataSet);
    procedure rsCuentasBeforeInsert(DataSet: TDataSet);
    procedure rsBancoSuplidorBeforeInsert(DataSet: TDataSet);
    procedure grCtasDBTableView1DBColumn1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure AGuardarExecute(Sender: TObject);
  private
    procedure ValidarSuplidorParent;
    { Private declarations }

  protected
    procedure browsebotonstate; override;
    procedure Editbotonstate; override;
    procedure Newbotonstate; override;

    procedure doCancelar; override;
    procedure doGuardar; override;
  public
    { Public declarations }
  end;

var
  fMantSuplidores: TfMantSuplidores;

implementation

uses uListaSups, uReporteSuplidores, Udata, uBuscarCuentaMayor,
  UUtiles, uformx;

{$R *.dfm}

procedure TfMantSuplidores.FormCreate(Sender: TObject);
begin
  inherited;
  LogField := 'idSuplidor';
  rsTipoEnt.Open();

  if not rsTiposImp.Active then
    rsTiposImp.Open();

  if not rsEntidades.Active then
    rsEntidades.Open();

  if not rsMonedas.Active then
    rsMonedas.Open();

  rsTipoDocID.Open();
  pcSuplidor.ActivePageIndex := 0;
  rsBancosACH.Open();
  With rsBancoSuplidor, Parameters Do
  Begin
    Close();
    ParamByName('@IdSuplidor').Value := rsEntidadesIdSuplidor.Value;
    rsBancoSuplidor.Open();
  End;

  with rsCuentas do begin
    Close();
    Parameters[1].value := rsEntidadesIdSuplidor.Value;
    Open();
  end;
end;

procedure TfMantSuplidores.rsEntidadesNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsEntidadesEstatus.AsBoolean := True;
  rsEntidadesidTipoIdentificacion.Value := '02';
  rsEntidadesMostrarEnCXP.Value := True;
  rsEntidadesPedirNCF.Value := 'S';


  with rsCuentas do begin
    Close();
    Parameters[1].value := rsEntidadesIdSuplidor.Value;
    Open();
  end;

  with rsBancoSuplidor do begin
    Close();
    Parameters[1].value := rsEntidadesIdSuplidor.Value;
    Open();
  end;




end;

procedure TfMantSuplidores.ALocalizarExecute(Sender: TObject);
var
  i: Integer;
begin
//  inherited;
  i := BuscarSuplidor(True);
  if (i > 0) then begin
    rsEntidades.Requery();
    rsEntidades.Locate('idSuplidor',i,[]);

    With rsBancoSuplidor, Parameters Do
    Begin
      Close();
      ParamByName('@IdSuplidor').Value := i;
      Open();
    End;

    with rsCuentas do begin
      Close();
      Parameters[1].value := rsEntidadesIdSuplidor.Value;
      Open();
    end;
  end;

  ValidarSuplidorParent();
end;

procedure TfMantSuplidores.AprintExecute(Sender: TObject);
begin
  inherited;
  uReporteSuplidores.ImprimirReporte();
end;

procedure TfMantSuplidores.edCtaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  s: Variant;
begin
  inherited;
  if appEstado <> appBrowse then begin
    s := BuscarCtaDetalle();
    if (s <> NULL) and (s <> '') then begin
      if not (rsCuentas.State in dsEditModes) then
        rsCuentas.Edit();

      rsCuentasidCuenta.Value := s;
    end;
  end;
end;

procedure TfMantSuplidores.DSStateChange(Sender: TObject);
begin
  inherited;
//  tsBancos.TabVisible := (ds.State = dsBrowse);
//  grCtas.Enabled := (ds.State = dsBrowse);
end;

procedure TfMantSuplidores.rsEntidadesAfterPost(DataSet: TDataSet);
begin
  inherited;
{  With rsBancoSuplidor, Parameters Do
  Begin
    Close();
    ParamByName('@IdSuplidor').Value := rsEntidadesidSuplidor.Value;
    Open();
  End;

  with rsCuentas do begin
    Close();
    Parameters[1].value := rsEntidadesIdSuplidor.Value;
    Open();
  end;}
end;

procedure TfMantSuplidores.rsBancoSuplidorNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsBancoSuplidorIdSuplidor.Value := rsEntidadesIdSuplidor.Value;
end;

procedure TfMantSuplidores.ValidarSuplidorParent;
begin
  with rsParentAct do begin
    Close();

    if rsEntidades.Active and (rsEntidadesidSuplidorParent.asInteger > 0) then begin
      Parameters[0].Value := rsEntidadesidSuplidorParent.asInteger;
      Open();
    end;
  end;
end;

procedure TfMantSuplidores.rsEntidadesidSuplidorParentValidate(
  Sender: TField);
begin
  inherited;
  if rsEntidadesIdSuplidorParent.AsInteger > 0 then begin
    if rsEntidadesIdSuplidor.AsInteger = rsEntidadesIdSuplidorParent.AsInteger then
      raise Exception.Create('El suplidor referido no puede ser igual al actual');

    ValidarSuplidorParent();
    if rsParentAct.Eof then
      raise Exception.Create('El suplidor referido no existe');
  end
  else
    rsParentAct.Close();


end;

procedure TfMantSuplidores.luSupRefPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  inherited;
  if appEstado <> appBrowse then begin
    i := BuscarSuplidor(True);
    if i > 0 then begin
      if not (rsEntidades.State in dsEditModes) then
        rsEntidades.Edit();

      rsEntidadesIdSuplidorParent.Value := i;
    end;
  end;
end;

procedure TfMantSuplidores.rsCuentasNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsCuentasIdSuplidor.Value := rsEntidadesIdSuplidor.Value;
end;

procedure TfMantSuplidores.rsCuentasBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if rsEntidadesidSuplidor.AsInteger = 0 then
    raise Exception.Create('No puede agregar cuentas antes de guardar el suplidor');
end;

procedure TfMantSuplidores.rsBancoSuplidorBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if rsEntidadesidSuplidor.AsInteger = 0 then
    raise Exception.Create('No puede agregar bancos antes de guardar el suplidor');
end;

procedure TfMantSuplidores.browsebotonstate;
begin
  inherited;
  CxGridReadOnly(True, grCtas);
  CxGridReadOnly(True, cxGrid1);
end;

procedure TfMantSuplidores.Editbotonstate;
begin
  inherited;
  CxGridReadOnly(False, grCtas);
  CxGridReadOnly(False, cxGrid1);
end;

procedure TfMantSuplidores.Newbotonstate;
begin
  inherited;
  CxGridReadOnly(True, grCtas);
  CxGridReadOnly(True, cxGrid1);
end;

procedure TfMantSuplidores.grCtasDBTableView1DBColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  s: Variant;
begin
  inherited;
  if appEstado <> appBrowse then begin
    s := BuscarCtaDetalle();
    if (s <> NULL) or (s <> '') then begin
      if not (rsCuentas.State in dsEditModes) then
        rsCuentas.Edit();

      rsCuentasidCuentaGasto.Value := s;
    end;
  end;
end;

procedure TfMantSuplidores.doCancelar;
begin
  if rsCuentas.State in dsEditModes then
    rsCuentas.Cancel();

  if rsBancoSuplidor.State in dsEditModes then
    rsBancoSuplidor.Cancel();

  inherited;
end;

procedure TfMantSuplidores.doGuardar;
begin
 inherited;

  with rsCuentas do begin
    if State in dsEditModes then
      Post();
    First();
    while not Eof do begin
      if rsCuentasIdSuplidor.AsInteger = 0 then begin
        Edit();
        rsCuentasIdSuplidor.Value := rsEntidadesIdSuplidor.Value;
        Post();
      end;
      Next();
    end;
  end;

  with rsBancoSuplidor do begin
    if State in dsEditModes then
      Post();
    First();
    while not Eof do begin
      if rsBancoSuplidorIdSuplidor.AsInteger = 0 then begin
        Edit();
        rsBancoSuplidorIdSuplidor.Value := rsEntidadesIdSuplidor.Value;
        Post();
      end;
      Next();
    end;
  end;

  rsCuentas.UpdateBatch();
  rsBancoSuplidor.UpdateBatch();
end;

procedure TfMantSuplidores.AGuardarExecute(Sender: TObject);
begin

  if not rsEntidadesMostrarEnCXP.value  then begin
    if not(uutiles.Confirmar('Si no marca la casilla de Mostrar en CxP' + chr(13) +
    'No apareceran las facturas pendientes de este suplidor en los reportes de CxP'+ chr(13) +
    'Seguro que desea continuar guardando sin marcar la casilla')) then abort;
  end;
  inherited;

end;

end.

unit UTransaccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UModelTrans, Wwdbigrd, Wwdbgrid, wwDialog, wwidlg, DB, Wwdatsrc,
  Grids, DBGrids, StdCtrls, Wwkeycb, Mask, wwdbedit, wwfltdlg,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, DBCtrls, wwdblook,
  Wwdbdlg, ActnList, ComCtrls, ToolWin, ImgList, Buttons, ADODB, dxDBTLCl,
  dxGrClms, dxDBGrid, dxTL, dxDBCtrl, dxCntner, dxExEdtr, Math, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppParameter;

type
  TTransaccion = class(TModeloTrans)
    xGrid: TdxDBGrid;
    xGridLTransaccion: TdxDBGridColumn;
    xGridLEmpleado: TdxDBGridColumn;
    xGridNotas: TdxDBGridMaskColumn;
    xGridCalculada: TdxDBGridCheckColumn;
    xGridModificada: TdxDBGridCheckColumn;
    xGridCxCEmpID: TdxDBGridMaskColumn;
    xGridNominaID: TdxDBGridMaskColumn;
    xGridTransaccionID: TdxDBGridMaskColumn;
    xGridTransaccionDefID: TdxDBGridMaskColumn;
    xGridTransaccion: TdxDBGridMaskColumn;
    Label2: TLabel;
    AImprimir: TAction;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton4: TSpeedButton;
    xGridXCantidad: TdxDBGridSpinColumn;
    xGridCentroCosto: TdxDBGridButtonColumn;
    xGridEmpleadoID: TdxDBGridButtonColumn;
    xGridTipoTransaccionID: TdxDBGridButtonColumn;
    Transaccion: TADODataSet;
    TransaccionEmpleadoID: TIntegerField;
    TransaccionTipoTransaccionID: TIntegerField;
    TransaccionXCantidad: TBCDField;
    TransaccionTransaccion: TBCDField;
    TransaccionLTransaccion: TStringField;
    TransaccionLEmpleado: TStringField;
    TransaccionNotas: TStringField;
    TransaccionCalculada: TBooleanField;
    TransaccionModificada: TBooleanField;
    TransaccionCxCEmpID: TIntegerField;
    TransaccionNominaID: TIntegerField;
    TransaccionTransaccionID: TAutoIncField;
    TransaccionTransaccionDefID: TIntegerField;
    TransaccionidCentroCosto: TGuidField;
    TransaccionCentroCosto: TStringField;
    TipoTransaccion: TADOTable;
    TipoTransaccionTipoTransaccionID: TIntegerField;
    TipoTransaccionTipoTransaccion: TStringField;
    TipoTransaccionDebito: TBooleanField;
    TipoTransaccionCotizable: TBooleanField;
    TipoTransaccionTipo: TStringField;
    TipoTransaccionValor: TBCDField;
    TipoTransaccionMultiplo: TBCDField;
    TipoTransaccionAdelanto: TBooleanField;
    TipoTransaccionProgramada: TBooleanField;
    TipoTransaccionNota: TStringField;
    TipoTransaccionOrden: TIntegerField;
    TipoTransaccionClasificacion: TIntegerField;
    TipoTransaccionRegalia: TBooleanField;
    TipoTransaccionISRno: TBooleanField;
    SalarioDia: TADOStoredProc;
    SalarioDiaCOLUMN1: TBCDField;
    CalcDiaHora: TADOCommand;
    spCentroCostoAct: TADOStoredProc;
    spCentroCostoActidCentroCosto: TGuidField;
    spCentroCostoActCentroCosto: TStringField;
    RptTrans: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppShape32: TppShape;
    ppLabel105: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppDBText120: TppDBText;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel115: TppLabel;
    ppDBText241: TppDBText;
    ppDetailBand13: TppDetailBand;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppFooterBand11: TppFooterBand;
    ppSystemVariable5: TppSystemVariable;
    ppLabel116: TppLabel;
    ppSummaryBand18: TppSummaryBand;
    ppDBCalc125: TppDBCalc;
    ppLine11: TppLine;
    pltrans: TppDBPipeline;
    pltransppField1: TppField;
    pltransppField2: TppField;
    pltransppField3: TppField;
    pltransppField4: TppField;
    pltransppField5: TppField;
    pltransppField6: TppField;
    pltransppField7: TppField;
    pltransppField8: TppField;
    pltransppField9: TppField;
    pltransppField10: TppField;
    pltransppField11: TppField;
    pltransppField12: TppField;
    pltransppField13: TppField;
    pltransppField14: TppField;
    pltransppField15: TppField;
    dstrans: TDataSource;
    rsBuscarTx: TADODataSet;
    Emp: TADODataSet;
    EmpEmpleadoID: TIntegerField;
    EmpTipoEmpleadoID: TIntegerField;
    EmpDepartamentoID: TIntegerField;
    EmpSecionID: TIntegerField;
    EmpEmpleado: TStringField;
    EmpCedula: TStringField;
    EmpPosicion: TStringField;
    EmpSueldo: TBCDField;
    EmpInicio: TDateTimeField;
    EmpFin: TDateTimeField;
    EmpNacimiento: TDateTimeField;
    EmpSexo: TStringField;
    EmpEstadoCivil: TStringField;
    EmpDireccion: TStringField;
    EmpCiudad: TStringField;
    EmpTelefono1: TStringField;
    EmpTelefono2: TStringField;
    EmpTipoCuenta: TStringField;
    EmpNumeroCuenta: TStringField;
    EmpAFP: TBooleanField;
    EmpSueldoFijo: TBooleanField;
    EmpActivo: TBooleanField;
    EmpSS: TBooleanField;
    EmpISR: TBooleanField;
    EmpPuntoA: TBCDField;
    EmpPuntoB: TBCDField;
    EmpPuntoC: TBCDField;
    EmpNombre: TStringField;
    EmpApellido: TStringField;
    EmpHorasDia: TBCDField;
    EmpNumeroSS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure xGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AAgregarExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure xGridCentroCostoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure xGridEmpleadoIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure xGridTipoTransaccionIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TransaccionCalcFields(DataSet: TDataSet);
    procedure TransaccionNewRecord(DataSet: TDataSet);
    procedure TransaccionEmpleadoIDValidate(Sender: TField);
    procedure TransaccionXCantidadChange(Sender: TField);
    procedure TransaccionTipoTransaccionIDChange(Sender: TField);
    procedure TransaccionTransaccionChange(Sender: TField);
    procedure TransaccionidCentroCostoValidate(Sender: TField);
    procedure TransaccionCentroCostoValidate(Sender: TField);
    procedure TipoTransaccionDebitoChange(Sender: TField);
    procedure TipoTransaccionBeforePost(DataSet: TDataSet);
    procedure TransaccionTipoTransaccionIDValidate(Sender: TField);
  private
    { Private declarations }
    NominaId : Variant;
    function SalarioDiario(EmpleadoID: integer): Currency;
    function BuscarTxEmpleado(const idEmp, idTx: Integer): Boolean;

  public
    { Public declarations }
    Procedure DoShowState; Override;
    Procedure GetCentroCosto;
  end;

var
  Transaccion: TTransaccion;

implementation

uses Udata, UdataNom, uDMReportes, UUtiles, uBusqEmpleado, uBusqueda,
  uformx, uCentroCostoFind, uFullTextSearch;

{$R *.dfm}

procedure TTransaccion.FormCreate(Sender: TObject);
begin
  ds.DataSet := Transaccion;
  Emp.Open;
  TipoTransaccion.Open();
  TipoField := 'TipoTransaccionid';
  inherited;
//  transaccion.Parameters[1].Value := dmNom.NominasNominaID.Value;
//    if dmNom.Transaccion.active then dmNom.Transaccion.Requery() else dmNom.Transaccion.Open;
  if dm.Tienepermiso(pBorrar,Permisos) then begin
    SpeedButton4.Enabled := True;
    DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbCancel];
  end
  else begin
    SpeedButton4.Enabled := False;
//    xGrid.OptionsData.Deleting := False;
    DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbCancel];
  end;
end;

procedure TTransaccion.FormDestroy(Sender: TObject);
begin
  DmNom.Emp.Close;
  inherited;

end;

procedure TTransaccion.xGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (not(dmNom.NominasCerrada.Value)) and (xgrid.FocusedColumn = 3) then
  begin
      xgrid.DataSource.DataSet.append;
      xgrid.FocusedColumn := 0;
      key := 0;
  end;
end;

procedure TTransaccion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TTransaccion.AImprimirExecute(Sender: TObject);
begin
  inherited;
  Imprimir(RptTrans);
end;

procedure TTransaccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  xgrid.Filter.Active := false;
end;

procedure TTransaccion.AAgregarExecute(Sender: TObject);
begin
  inherited;
  xgrid.SetFocus;
  xgrid.FocusedField := xgrid.Columns[0].Field;
end;

procedure TTransaccion.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  xGrid.DeleteSelection;

end;

procedure TTransaccion.xGridCentroCostoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  getcentroCosto;
end;




procedure TTransaccion.xGridEmpleadoIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  xx : variant;
begin
  inherited;
  if Transaccion.LockType <> ltReadOnly then begin
    xx := UUtiles.fBuscar(TBusqEmpleado, 'EmpleadoID');
    if not(xx = null) then
    begin
      if  not (ds.State in [dsInsert,dsEdit]) then
          ds.DataSet.Edit();

      ds.DataSet.FieldByName('EmpleadoID').Value := xx;
    end;
  end;
end;

procedure TTransaccion.xGridTipoTransaccionIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  xx : variant;
begin
  inherited;
  if Transaccion.LockType <> ltReadOnly then begin
    xx := fBuscar(TBusqueda, 'TipoTransaccionID', False, 'TipoTransaccionFind');
    if not(xx = null) then
    begin
      if not (ds.State in dsEditModes) then
        ds.DataSet.Edit();

      ds.DataSet.FieldByName('TipoTransaccionId').Value := xx;

    end;
  end;
end;

procedure TTransaccion.DoShowState;
begin
  inherited;
  If xField = 'NominaId' Then
  Begin
    NominaId := xValue;
    Transaccion.Close();
    transaccion.Parameters[1].Value := XValue;
    Transaccion.Open;
  End;
end;

procedure TTransaccion.TransaccionCalcFields(DataSet: TDataSet);
begin
  inherited;
  if TransaccionempleadoID.IsNull then
     TransaccionLEmpleado.value := ''
  else
     if emp.Active then
     Begin
       Try
          TransaccionLEmpleado.value := Emp.Lookup('EmpleadoID',TransaccionempleadoID.Value, 'Empleado');
       Except
         TransaccionLEmpleado.value := 'Error Empleado'
       End;
     End;

  if TransaccionTipoTransaccionID.IsNull then
     TransaccionLTransaccion.value := ''
  else
  begin
    try
       if TipoTransaccion.Active then
        TransaccionLTransaccion.value := TipoTransaccion.Lookup('TipoTransaccionID',TransaccionTipoTransaccionID.Value, 'TipoTransaccion');
    except
      TransaccionLTransaccion.value := 'Error Tipo Trans.' ;
//      raise exception.create('Error, es posible que este tipo de transaccion no exista, verifiquelo ');
    end;
  end;
end;

procedure TTransaccion.TransaccionNewRecord(DataSet: TDataSet);
begin
  inherited;
  TransaccionNominaID.Value := NominaId;
  transacciontransaccion.Value := 0;
  transaccioncalculada.value := false;
  transaccionmodificada.value :=false;
  TransaccionNotas.value := 'Digitacion Manual';

end;

procedure TTransaccion.TransaccionEmpleadoIDValidate(Sender: TField);
var
  valr: Variant;
begin
  inherited;
  if (not(transaccionEmpleadoID.IsNull)) then
  begin
    if (not(Emp.Locate('empleadoid', TransaccionEmpleadoid.Value, []))) then
      raise exception.Create('Este empleado no existe');

    if (not(empactivo.Value)) and (EmpTipoEmpleadoID.Value <> dmNom.GrupoInact) then
      ShowMessage('Este empleado no esta activo');
//      raise exception.Create('Este empleado no esta activo');

    if (empTipoEmpleadoid.value <> dmNom.NominasTipoEmpleadoid.value) then
      raise exception.Create('Este empleado no pertenece a esta nomina');

    if dm.GetDefaultStr('NOM_REP_TRANS') = '0' then begin
      if BuscarTxEmpleado(TransaccionEmpleadoId.Value, TransaccionTipoTransaccionId.Value) then
        raise Exception.Create('Este empleado ya tiene una transaccion de este tipo registrada');
    end;


// Asignar el Centro de costo de la seccion
 //  With spGetCentroCostoEmp, Parameters Do
 //  Begin
 //    Close;
 //    ParamByName('@EmpleadoId').Value := Sender.Value;
 //    Open;
 //    if not spGetCentroCostoEmpidCentroCosto.isNull then
 //      TransaccionidCentroCosto.Value := spGetCentroCostoEmpidCentroCosto.Value;
 //  End;
//*********

    if (not(TransaccionTipoTransaccionID.IsNull)) then
    begin
      if TipoTransaccion.Lookup('TipoTransaccionID',TransaccionTipoTransaccionID.Value,'Tipo') = 'D' then
      begin
         try
            TransaccionTransaccion.Value :=
              SalarioDiario(TransaccionEmpleadoID.Value) * TipoTransaccion.Lookup('TipoTransaccionID',TransaccionTipoTransaccionID.Value,'Valor');
         except
            TransaccionTransaccion.Value := 0;
         end;
      end
      else
      Begin
         valr := TipoTransaccion.Lookup('TipoTransaccionID',TransaccionTipoTransaccionID.Value,'Valor');
         if valr <> NULL then
           TransaccionTransaccion.Value := valr
         else
           TransaccionTransaccion.Value := 0;
      End;
    end;
  end;
end;

function TTransaccion.SalarioDiario(EmpleadoID: integer): Currency;
begin
  try
    Salariodia.Parameters.ParamByName('@EmpleadoID').Value := EmpleadoID;
    SalarioDia.Open ;
    Result := Salariodia.Fields[0].AsCurrency  ;

  except
    Result := 0;
  end;
end;

procedure TTransaccion.TransaccionXCantidadChange(Sender: TField);
var
  z : string;
begin
  inherited;
   if not(Transaccionempleadoid.isnull)        and
      not(Transacciontipotransaccionid.IsNull) and
      not(Transaccionxcantidad.IsNull)         and
         (Transaccionxcantidad.value > 0)     then
   begin
     z := TipoTransaccion.lookup('TipoTransaccionID',Transacciontipotransaccionid.value,'Tipo');
     if (z <> 'M') then
     begin
       CalcDiaHora.parameters[1].value := Transaccionempleadoid.Value;
       CalcDiaHora.Parameters[2].value := Transacciontipotransaccionid.value;
       CalcDiaHora.Parameters[3].value := Transaccionxcantidad.value;
       CalcDiaHora.execute;
       TransaccionTransaccion.value := RoundTo(CalcDiaHora.Parameters[4].value,-2);
     end;
   end;
end;

function TTransaccion.BuscarTxEmpleado(const idEmp: Integer; const idTx: Integer): Boolean;
begin
  with rsBuscarTx do begin
    Close();
    Parameters[0].Value := NominaId;
    Parameters[1].Value := idEmp;
    Parameters[2].Value := idTx;
    Open();
    Result := not Eof;
  end;
end;

procedure TTransaccion.TransaccionTipoTransaccionIDChange(Sender: TField);
var
  y : variant;
begin
  inherited;
  if not(sender.IsNull) then
  begin
     y := TipoTransaccion.Lookup('TipoTransaccionid',sender.Value,'Valor');
     if not(y = null) then
       transaccionxcantidad.AsCurrency := y
     else
       transaccionxcantidad.AsCurrency := 0.00;
  end;
end;

procedure TTransaccion.TransaccionTransaccionChange(Sender: TField);
begin
  inherited;
  if transaccioncalculada.Value then transaccionmodificada.value := true;
end;

procedure TTransaccion.TransaccionidCentroCostoValidate(Sender: TField);
var
  h : variant;
begin
  inherited;

  if sender.AsString <> '' then
    h := ReturnVariant('CentroCosto','CentroCosto','idCentroCosto = ''' + Sender.AsString + '''')
  else begin
    if not(TransaccionCentroCosto.isnull) then TransaccionCentroCosto.Clear;
    exit;
  end;

  if (h = null) then begin
    Raise exception.Create('Esta Centro de costo no existe')
  end
  else if TransaccionCentroCosto.Value <> H then
    TransaccionCentroCosto.Value := H;

end;

procedure TTransaccion.TransaccionCentroCostoValidate(Sender: TField);
begin
  inherited;
  With spCentroCostoAct, Parameters Do
  Begin
    If Sender.Value <> '' Then
    Begin
      Close();
      ParamByName('@CentroCosto').Value := Sender.Value;

      Open();
      If IsEmpty Then
        Raise Exception.Create('Centro de Costos no existe')
      Else
        TransaccionidCentroCosto.Value := spCentroCostoActidCentroCosto.Value;
    End;
  End;
end;

procedure TTransaccion.GetCentroCosto;
var
  id : variant;
begin
  id := TfulltextSearch.Buscar('idCentroCosto',true,'costCentroCostoFind');
  if id <> null then begin
    if not(transaccion.State in dsEditmodes) then transaccion.Edit;
      transaccionidCentroCosto.Value := id;
  end;
end;

procedure TTransaccion.TipoTransaccionDebitoChange(Sender: TField);
begin
  inherited;
   if tipotransacciondebito.Value = false then
      tipotransaccioncotizable.Value := false;
end;

procedure TTransaccion.TipoTransaccionBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (TipoTransaccionTipo.Value = 'P') And (TipoTransaccionDebito.Value) Then
    Raise Exception.Create('Las transacciones de porciento no pueden ser de tipo debito');
end;

procedure TTransaccion.TransaccionTipoTransaccionIDValidate(
  Sender: TField);
begin
  inherited;
  if dm.GetDefaultStr('NOM_REP_TRANS') = '0' then begin
    if BuscarTxEmpleado(TransaccionEmpleadoId.Value, TransaccionTipoTransaccionId.Value) then
      raise Exception.Create('Este empleado ya tiene una transaccion de este tipo registrada');
  end;
end;

end.

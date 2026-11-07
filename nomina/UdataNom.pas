
unit UdataNom;

interface

uses
  SysUtils, Classes, ADODB, DB, Dialogs, variants, Math;


type
  TdmNom = class(TDataModule)
    AutoHora: TADOStoredProc;
    CalcularNomina: TADOStoredProc;
    CerrarNomina: TADOStoredProc;
    AutoProduc: TADOStoredProc;
    Emp: TADOTable;
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
    NominaEmp: TADOTable;
    NominaEmpNominaID: TIntegerField;
    NominaEmpEmpleadoID: TIntegerField;
    NominaEmpHoraNormal: TBCDField;
    NominaEmpHoraNocturna: TBCDField;
    NominaEmpHoraExtra: TBCDField;
    NominaEmpHoraDoble: TBCDField;
    NominaEmpPrecioNormal: TBCDField;
    NominaEmpPrecioNocturna: TBCDField;
    NominaEmpPrecioExtra: TBCDField;
    NominaEmpPrecioDoble: TBCDField;
    NominaEmpTotalNormal: TBCDField;
    NominaEmpTotalNocturna: TBCDField;
    NominaEmpTotalExtra: TBCDField;
    NominaEmpTotalDoble: TBCDField;
    NominaEmpOtrosIngresos: TBCDField;
    NominaEmpBruto: TBCDField;
    NominaEmpSS: TBCDField;
    NominaEmpAFP: TBCDField;
    NominaEmpIR: TBCDField;
    NominaEmpOtrosDescuentos: TBCDField;
    NominaEmpTDescuentos: TBCDField;
    NominaEmpNeto: TBCDField;
    NominaEmpNotas: TStringField;
    NominaEmpDias: TBCDField;
    NominaEmpDiasPuntoA: TBCDField;
    NominaEmpDiasPuntoB: TBCDField;
    NominaEmpDiasPuntoC: TBCDField;
    NominaEmpCheque: TIntegerField;
    NominaEmpVolante: TIntegerField;
    NominaEmpNumero: TAutoIncField;
    Resultados: TADOTable;
    ResultadosNominaID: TIntegerField;
    ResultadosFecha: TDateTimeField;
    ResultadosDesde: TDateTimeField;
    ResultadosHasta: TDateTimeField;
    ResultadosDepartamentoID: TIntegerField;
    ResultadosDepartamento: TStringField;
    ResultadosDepOrd: TIntegerField;
    ResultadosSeccionID: TIntegerField;
    ResultadosSeccion: TStringField;
    ResultadosSecOrd: TIntegerField;
    ResultadosEmpleadoID: TIntegerField;
    ResultadosEmpleado: TStringField;
    ResultadosHoraNormal: TBCDField;
    ResultadosHoraNocturna: TBCDField;
    ResultadosHoraExtra: TBCDField;
    ResultadosHoraDoble: TBCDField;
    ResultadosPrecioNormal: TBCDField;
    ResultadosPrecioNocturna: TBCDField;
    ResultadosPrecioExtra: TBCDField;
    ResultadosPrecioDoble: TBCDField;
    ResultadosTotalNormal: TBCDField;
    ResultadosTotalNocturna: TBCDField;
    ResultadosTotalExtra: TBCDField;
    ResultadosTotalDoble: TBCDField;
    ResultadosOtrosIngresos: TBCDField;
    ResultadosDias: TBCDField;
    ResultadosBruto: TBCDField;
    ResultadosSS: TBCDField;
    ResultadosIR: TBCDField;
    ResultadosAFP: TBCDField;
    ResultadosOtrosDescuentos: TBCDField;
    ResultadosTDescuentos: TBCDField;
    ResultadosNeto: TBCDField;
    ResultadosNotas: TStringField;
    ResultadosDiasPuntoA: TBCDField;
    ResultadosDiasPuntoB: TBCDField;
    ResultadosDiasPuntoC: TBCDField;
    ResultadosCheque: TIntegerField;
    ResultadosVolante: TIntegerField;
    ResultadosNumero: TAutoIncField;
    SPNominaEmp: TADOStoredProc;
    DNomina: TDataSource;
    ResultadosAdelanto: TBCDField;
    AutoRegalia: TADOCommand;
    AutoTransaccion: TADOCommand;
    Nominas: TADODataSet;
    NominasNominaID: TIntegerField;
    NominasTipoNomina: TStringField;
    NominasTipoEmpleado: TStringField;
    NominasFecha: TDateTimeField;
    NominasuNomina: TGuidField;
    NominasDesde: TDateTimeField;
    NominasHasta: TDateTimeField;
    NominasProdDesde: TDateTimeField;
    NominasProdHasta: TDateTimeField;
    NominasDiaFeriado: TIntegerField;
    NominasCerrada: TBooleanField;
    NominasTipoNominaID: TIntegerField;
    NominasTipoEmpleadoID: TIntegerField;
    NominasNumero: TSmallintField;
    NominasMes: TSmallintField;
    NominasISR: TBooleanField;
    NominascfMes: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    //LastEmp : string;
    { Private declarations }
  public
    { Public declarations }
    GrupoInact : integer;
    procedure Inicializar;
    function AutoHoras(NominaID: integer; Reloj : Boolean):Boolean;
    Function AutoRegaliaPascual(NominaID :integer; const fal: Integer; acti : integer = 1; proy: integer = 1):Boolean;
    function AutoTransaccions(NominaID: integer; Clase : integer): Boolean;
    function CalcularNominas(NominaID: integer): Boolean;
    function CerrarNominas(NominaID: integer; Cerrar: Boolean): Boolean;
    function Autoproducc(NominaID: integer):Boolean;
  end;


var
  dmNom: TdmNom;

implementation

uses Udata, UUtiles, uCentroCostoFind;

{$R *.dfm}


Function TdmNom.AutoHoras(NominaID :integer; Reloj : Boolean):Boolean;
Begin
   try
     AutoHora.Parameters[1].Value := NominaID;
     AutoHora.Parameters[2].Value := Reloj;
     Autohora.ExecProc;
     Result := True;
     if AutoHora.Parameters[0].Value <> 0 then abort;
   except
      Result := False;
   end;
End;


Function TdmNom.AutoRegaliaPascual(NominaID :integer; const fal: Integer; acti : integer = 1; proy: integer = 1):Boolean;
Begin
   try
     AutoRegalia.Parameters[1].Value := NominaID;
     AutoRegalia.Parameters[2].Value := acti;
     AutoRegalia.Parameters[3].Value := proy;
     AutoRegalia.Parameters[4].Value := fal;
     AutoRegalia.Execute;
     Result := True;
     if AutoRegalia.Parameters[0].Value <> 0 then abort;
   except
      Result := False;
   end;
End;


Function TdmNom.AutoProducc(NominaID :integer):Boolean;
Begin
   try
     AutoProduc.Parameters[1].Value := NominaID;
     AutoProduc.ExecProc;
     Result := True;
   except
      Result := False;
   end;
End;

Function TdmNom.AutoTransaccions(NominaID :integer; Clase : integer):Boolean;
Begin
   try
     AutoTransaccion.Parameters[1].Value := NominaID;
     AutoTransaccion.Parameters[2].Value := Clase;
     AutoTransaccion.Execute;
     Result := True;
   except
      Result := False;
   end;
End;

Function TdmNom.CalcularNominas(NominaID :integer):Boolean;
Begin
  try
     CalcularNomina.Parameters.ParamByName('@NominaID').Value := NominaID;
     CalcularNomina.ExecProc;
     If CalcularNomina.Parameters.ParamByName('@RETURN_VALUE').Value = 1 Then
       ShowMessage('Existe(n) empleado(s) con neto menor o igual a 0');
     Result := True;
  except
     Result := False;
  end;
End;


Function TdmNom.CerrarNominas(NominaID :integer;Cerrar:Boolean):Boolean;
Begin
   try
     CerrarNomina.Parameters.ParamByName('@NominaID').Value := NominaID;
     CerrarNomina.Parameters.ParamByName('@Cerrar').Value := Cerrar;
     CerrarNomina.ExecProc;
     Result := True;
   except
     Result := False;
   end;
End;
procedure TdmNom.Inicializar;
begin
  if dm.Coneccion.Connected then begin
    GrupoInact := StrToIntDef(dm.GetDefaultStr('GRUPOINACTIVOS'),0);

  Nominas.open;

  end;
end;

procedure TdmNom.DataModuleCreate(Sender: TObject);
begin
  Inicializar();
end;

end.

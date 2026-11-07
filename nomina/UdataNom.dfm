object dmNom: TdmNom
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 402
  Top = 190
  Height = 456
  Width = 524
  object AutoHora: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'SPAutoHora;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@reloj'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 392
    Top = 240
  end
  object CalcularNomina: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'SPCalcularNomina;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 392
    Top = 288
  end
  object CerrarNomina: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'SPCerrarAbrir;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Cerrar'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 392
    Top = 192
  end
  object AutoProduc: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'spComisionesCalc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nominaid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 320
    Top = 288
  end
  object Emp: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    IndexFieldNames = 'TipoEmpleadoID'
    TableName = 'Empleados'
    Left = 176
    Top = 224
    object EmpEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object EmpTipoEmpleadoID: TIntegerField
      FieldName = 'TipoEmpleadoID'
    end
    object EmpDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
    end
    object EmpSecionID: TIntegerField
      FieldName = 'SecionID'
    end
    object EmpEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object EmpCedula: TStringField
      FieldName = 'Cedula'
    end
    object EmpPosicion: TStringField
      FieldName = 'Posicion'
    end
    object EmpSueldo: TBCDField
      FieldName = 'Sueldo'
      Precision = 18
      Size = 2
    end
    object EmpInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object EmpFin: TDateTimeField
      FieldName = 'Fin'
    end
    object EmpNacimiento: TDateTimeField
      FieldName = 'Nacimiento'
    end
    object EmpSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object EmpEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      FixedChar = True
      Size = 1
    end
    object EmpDireccion: TStringField
      FieldName = 'Direccion'
      FixedChar = True
      Size = 70
    end
    object EmpCiudad: TStringField
      FieldName = 'Ciudad'
      FixedChar = True
    end
    object EmpTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 15
    end
    object EmpTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 15
    end
    object EmpTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      FixedChar = True
      Size = 1
    end
    object EmpNumeroCuenta: TStringField
      FieldName = 'NumeroCuenta'
    end
    object EmpAFP: TBooleanField
      FieldName = 'AFP'
    end
    object EmpSueldoFijo: TBooleanField
      FieldName = 'SueldoFijo'
    end
    object EmpActivo: TBooleanField
      FieldName = 'Activo'
    end
    object EmpSS: TBooleanField
      FieldName = 'SS'
    end
    object EmpISR: TBooleanField
      FieldName = 'ISR'
    end
    object EmpPuntoA: TBCDField
      FieldName = 'PuntoA'
      Precision = 18
      Size = 2
    end
    object EmpPuntoB: TBCDField
      FieldName = 'PuntoB'
      Precision = 18
      Size = 2
    end
    object EmpPuntoC: TBCDField
      FieldName = 'PuntoC'
      Precision = 18
      Size = 2
    end
    object EmpNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object EmpApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object EmpHorasDia: TBCDField
      FieldName = 'HorasDia'
      Precision = 18
      Size = 2
    end
    object EmpNumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
  end
  object NominaEmp: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    IndexFieldNames = 'NominaID;Empleadoid'
    MasterFields = 'NominaID'
    MasterSource = DNomina
    TableName = 'NominaEmp'
    Left = 96
    Top = 224
    object NominaEmpNominaID: TIntegerField
      FieldName = 'NominaID'
    end
    object NominaEmpEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object NominaEmpHoraNormal: TBCDField
      FieldName = 'HoraNormal'
      Precision = 18
      Size = 2
    end
    object NominaEmpHoraNocturna: TBCDField
      FieldName = 'HoraNocturna'
      Precision = 18
      Size = 2
    end
    object NominaEmpHoraExtra: TBCDField
      FieldName = 'HoraExtra'
      Precision = 18
      Size = 2
    end
    object NominaEmpHoraDoble: TBCDField
      FieldName = 'HoraDoble'
      Precision = 18
      Size = 2
    end
    object NominaEmpPrecioNormal: TBCDField
      FieldName = 'PrecioNormal'
      Precision = 18
      Size = 2
    end
    object NominaEmpPrecioNocturna: TBCDField
      FieldName = 'PrecioNocturna'
      Precision = 18
      Size = 2
    end
    object NominaEmpPrecioExtra: TBCDField
      FieldName = 'PrecioExtra'
      Precision = 18
      Size = 2
    end
    object NominaEmpPrecioDoble: TBCDField
      FieldName = 'PrecioDoble'
      Precision = 18
      Size = 2
    end
    object NominaEmpTotalNormal: TBCDField
      FieldName = 'TotalNormal'
      ReadOnly = True
      Precision = 32
    end
    object NominaEmpTotalNocturna: TBCDField
      FieldName = 'TotalNocturna'
      ReadOnly = True
      Precision = 32
    end
    object NominaEmpTotalExtra: TBCDField
      FieldName = 'TotalExtra'
      ReadOnly = True
      Precision = 32
    end
    object NominaEmpTotalDoble: TBCDField
      FieldName = 'TotalDoble'
      ReadOnly = True
      Precision = 32
    end
    object NominaEmpOtrosIngresos: TBCDField
      FieldName = 'OtrosIngresos'
      Precision = 19
      Size = 2
    end
    object NominaEmpBruto: TBCDField
      FieldName = 'Bruto'
      ReadOnly = True
      Precision = 32
    end
    object NominaEmpSS: TBCDField
      FieldName = 'SS'
      Precision = 19
      Size = 2
    end
    object NominaEmpAFP: TBCDField
      FieldName = 'AFP'
      Precision = 19
      Size = 2
    end
    object NominaEmpIR: TBCDField
      FieldName = 'IR'
      Precision = 19
      Size = 2
    end
    object NominaEmpOtrosDescuentos: TBCDField
      FieldName = 'OtrosDescuentos'
      Precision = 19
      Size = 2
    end
    object NominaEmpTDescuentos: TBCDField
      FieldName = 'TDescuentos'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object NominaEmpNeto: TBCDField
      FieldName = 'Neto'
      ReadOnly = True
      Precision = 32
    end
    object NominaEmpNotas: TStringField
      FieldName = 'Notas'
      Size = 60
    end
    object NominaEmpDias: TBCDField
      FieldName = 'Dias'
      Precision = 19
    end
    object NominaEmpDiasPuntoA: TBCDField
      FieldName = 'DiasPuntoA'
      Precision = 10
      Size = 2
    end
    object NominaEmpDiasPuntoB: TBCDField
      FieldName = 'DiasPuntoB'
      Precision = 10
      Size = 2
    end
    object NominaEmpDiasPuntoC: TBCDField
      FieldName = 'DiasPuntoC'
      Precision = 10
      Size = 2
    end
    object NominaEmpCheque: TIntegerField
      FieldName = 'Cheque'
    end
    object NominaEmpVolante: TIntegerField
      FieldName = 'Volante'
    end
    object NominaEmpNumero: TAutoIncField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object Resultados: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    IndexFieldNames = 'NominaID'
    MasterFields = 'NominaID'
    MasterSource = DNomina
    TableName = 'NominasEmps'
    Left = 96
    Top = 272
    object ResultadosDepartamento: TStringField
      DisplayWidth = 11
      FieldName = 'Departamento'
      Size = 30
    end
    object ResultadosSeccion: TStringField
      DisplayWidth = 10
      FieldName = 'Seccion'
    end
    object ResultadosEmpleadoID: TIntegerField
      DisplayLabel = 'Empl'
      DisplayWidth = 5
      FieldName = 'EmpleadoID'
    end
    object ResultadosEmpleado: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 61
    end
    object ResultadosHoraNormal: TBCDField
      DisplayLabel = 'H Nor'
      DisplayWidth = 5
      FieldName = 'HoraNormal'
      Precision = 18
      Size = 2
    end
    object ResultadosHoraNocturna: TBCDField
      DisplayLabel = 'H Noc'
      DisplayWidth = 6
      FieldName = 'HoraNocturna'
      Precision = 18
      Size = 2
    end
    object ResultadosHoraExtra: TBCDField
      DisplayLabel = 'H Extra'
      DisplayWidth = 6
      FieldName = 'HoraExtra'
      Precision = 18
      Size = 2
    end
    object ResultadosHoraDoble: TBCDField
      DisplayLabel = 'H Doble'
      DisplayWidth = 6
      FieldName = 'HoraDoble'
      Precision = 18
      Size = 2
    end
    object ResultadosPrecioNormal: TBCDField
      DisplayLabel = 'Pr Normal'
      DisplayWidth = 7
      FieldName = 'PrecioNormal'
      Precision = 18
      Size = 2
    end
    object ResultadosPrecioNocturna: TBCDField
      DisplayWidth = 12
      FieldName = 'PrecioNocturna'
      Precision = 18
      Size = 2
    end
    object ResultadosPrecioExtra: TBCDField
      DisplayWidth = 9
      FieldName = 'PrecioExtra'
      Precision = 18
      Size = 2
    end
    object ResultadosPrecioDoble: TBCDField
      DisplayWidth = 9
      FieldName = 'PrecioDoble'
      Precision = 18
      Size = 2
    end
    object ResultadosTotalNormal: TBCDField
      DisplayWidth = 9
      FieldName = 'TotalNormal'
      ReadOnly = True
      Precision = 32
    end
    object ResultadosTotalNocturna: TBCDField
      DisplayWidth = 11
      FieldName = 'TotalNocturna'
      ReadOnly = True
      Precision = 32
    end
    object ResultadosTotalExtra: TBCDField
      DisplayWidth = 8
      FieldName = 'TotalExtra'
      ReadOnly = True
      Precision = 32
    end
    object ResultadosTotalDoble: TBCDField
      DisplayWidth = 8
      FieldName = 'TotalDoble'
      ReadOnly = True
      Precision = 32
    end
    object ResultadosNominaID: TIntegerField
      FieldName = 'NominaID'
      Visible = False
    end
    object ResultadosOtrosIngresos: TBCDField
      DisplayWidth = 10
      FieldName = 'OtrosIngresos'
      Precision = 19
      Size = 2
    end
    object ResultadosBruto: TBCDField
      DisplayWidth = 10
      FieldName = 'Bruto'
      ReadOnly = True
      Precision = 32
    end
    object ResultadosSS: TBCDField
      DisplayWidth = 6
      FieldName = 'SS'
      Precision = 19
      Size = 2
    end
    object ResultadosIR: TBCDField
      DisplayWidth = 6
      FieldName = 'IR'
      Precision = 19
      Size = 2
    end
    object ResultadosDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
      Visible = False
    end
    object ResultadosOtrosDescuentos: TBCDField
      DisplayWidth = 13
      FieldName = 'OtrosDescuentos'
      Precision = 19
      Size = 2
    end
    object ResultadosTDescuentos: TBCDField
      DisplayWidth = 10
      FieldName = 'TDescuentos'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object ResultadosNeto: TBCDField
      DisplayWidth = 10
      FieldName = 'Neto'
      ReadOnly = True
      Precision = 32
    end
    object ResultadosDiasPuntoA: TBCDField
      DisplayWidth = 9
      FieldName = 'DiasPuntoA'
      Precision = 10
      Size = 2
    end
    object ResultadosDiasPuntoB: TBCDField
      DisplayWidth = 9
      FieldName = 'DiasPuntoB'
      Precision = 10
      Size = 2
    end
    object ResultadosDiasPuntoC: TBCDField
      DisplayWidth = 9
      FieldName = 'DiasPuntoC'
      Precision = 10
      Size = 2
    end
    object ResultadosCheque: TIntegerField
      DisplayWidth = 6
      FieldName = 'Cheque'
    end
    object ResultadosVolante: TIntegerField
      DisplayWidth = 6
      FieldName = 'Volante'
    end
    object ResultadosNotas: TStringField
      DisplayWidth = 30
      FieldName = 'Notas'
      Size = 60
    end
    object ResultadosDepOrd: TIntegerField
      FieldName = 'DepOrd'
      Visible = False
    end
    object ResultadosFecha: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Fecha'
    end
    object ResultadosSeccionID: TIntegerField
      FieldName = 'SeccionID'
      Visible = False
    end
    object ResultadosDesde: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Desde'
    end
    object ResultadosSecOrd: TIntegerField
      FieldName = 'SecOrd'
      Visible = False
    end
    object ResultadosHasta: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Hasta'
    end
    object ResultadosDias: TBCDField
      FieldName = 'Dias'
      Visible = False
      Precision = 19
    end
    object ResultadosAFP: TBCDField
      FieldName = 'AFP'
      Visible = False
      Precision = 19
      Size = 2
    end
    object ResultadosNumero: TAutoIncField
      FieldName = 'Numero'
      ReadOnly = True
      Visible = False
    end
    object ResultadosAdelanto: TBCDField
      FieldName = 'Adelanto'
      Precision = 18
    end
  end
  object SPNominaEmp: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'SPNominaEmp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 96
    Top = 320
  end
  object DNomina: TDataSource
    DataSet = Nominas
    Left = 96
    Top = 173
  end
  object AutoRegalia: TADOCommand
    CommandText = 'nomRegaliaProyectada;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nominaid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Activos'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@UsarSueldo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@faltantes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 320
    Top = 336
  end
  object AutoTransaccion: TADOCommand
    CommandText = 'SPAutoTransaccion;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Clase'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 320
    Top = 192
  end
  object Nominas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'nomNomina;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 152
    Top = 80
    object NominasNominaID: TIntegerField
      FieldName = 'NominaID'
    end
    object NominasTipoNomina: TStringField
      FieldName = 'TipoNomina'
      Size = 10
    end
    object NominasTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
    object NominasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object NominasuNomina: TGuidField
      FieldName = 'uNomina'
      FixedChar = True
      Size = 38
    end
    object NominasDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object NominasHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object NominasProdDesde: TDateTimeField
      FieldName = 'ProdDesde'
    end
    object NominasProdHasta: TDateTimeField
      FieldName = 'ProdHasta'
    end
    object NominasDiaFeriado: TIntegerField
      FieldName = 'DiaFeriado'
    end
    object NominasCerrada: TBooleanField
      FieldName = 'Cerrada'
    end
    object NominasTipoNominaID: TIntegerField
      FieldName = 'TipoNominaID'
      ReadOnly = True
    end
    object NominasTipoEmpleadoID: TIntegerField
      FieldName = 'TipoEmpleadoID'
      ReadOnly = True
    end
    object NominasNumero: TSmallintField
      FieldName = 'Numero'
    end
    object NominasMes: TSmallintField
      FieldName = 'Mes'
    end
    object NominasISR: TBooleanField
      FieldName = 'ISR'
    end
    object NominascfMes: TStringField
      FieldName = 'NominascfMes'
      ReadOnly = True
      Size = 12
    end
  end
end

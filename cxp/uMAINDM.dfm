object MainDM: TMainDM
  OldCreateOrder = False
  Left = 412
  Top = 210
  Height = 325
  Width = 355
  object rsBuscarSup: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarSuplidorXId;1'
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
        Name = '@sid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 42
    Top = 78
    object rsBuscarSupidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      ReadOnly = True
    end
    object rsBuscarSupNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsBuscarSupDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
    object rsBuscarSupCiudad: TStringField
      FieldName = 'Ciudad'
      Size = 50
    end
    object rsBuscarSupProvincia: TStringField
      FieldName = 'Provincia'
      Size = 50
    end
    object rsBuscarSupPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object rsBuscarSupTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 14
    end
    object rsBuscarSupTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 14
    end
    object rsBuscarSupLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
    end
    object rsBuscarSupDiasCredito: TIntegerField
      FieldName = 'DiasCredito'
    end
    object rsBuscarSupTipoSuplidor: TIntegerField
      FieldName = 'TipoSuplidor'
    end
    object rsBuscarSupRNC: TStringField
      FieldName = 'RNC'
    end
    object rsBuscarSupFechaIngreso: TDateTimeField
      FieldName = 'FechaIngreso'
    end
    object rsBuscarSupEstatus: TBooleanField
      FieldName = 'Estatus'
    end
    object rsBuscarSupEMail: TStringField
      FieldName = 'EMail'
      Size = 50
    end
    object rsBuscarSupContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object rsBuscarSupTelContacto: TStringField
      FieldName = 'TelContacto'
      Size = 8
    end
    object rsBuscarSupFax: TStringField
      FieldName = 'Fax'
      Size = 8
    end
    object rsBuscarSupCod: TStringField
      FieldName = 'Cod'
    end
    object rsBuscarSupidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsBuscarSupTipoImpuesto: TIntegerField
      FieldName = 'TipoImpuesto'
    end
    object rsBuscarSupidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsBuscarSupMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object rsBuscarSupAbrev: TStringField
      FieldName = 'Abrev'
    end
    object rsBuscarSupidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsBuscarSupidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object rsBuscarSupPedirNCF: TStringField
      FieldName = 'PedirNCF'
      FixedChar = True
      Size = 1
    end
  end
  object rsListaSups: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpListaSuplidoresStatus;1'
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
        Name = '@Todos'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = True
      end>
    Left = 42
    Top = 158
    object rsListaSupsidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      ReadOnly = True
    end
    object rsListaSupsRNC: TStringField
      FieldName = 'RNC'
    end
    object rsListaSupsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsListaSupsTelefono1: TStringField
      FieldName = 'Telefono1'
    end
  end
  object rsFecha: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select getdate() as dbFecha'
    Parameters = <>
    Left = 122
    Top = 6
    object rsFechadbFecha: TDateTimeField
      FieldName = 'dbFecha'
      ReadOnly = True
    end
  end
  object rsSupCuenta: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'cxpRSSuplidorCuenta'
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
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 148
    Top = 104
    object rsSupCuentaidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsSupCuentaidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsSupCuentaidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsBuscarCtaSup: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cxpBuscarCtaSuplidor'
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
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 264
    Top = 80
    object rsBuscarCtaSupidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsBuscarCtaSupidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsBuscarCtaSupidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsBuscarCtaSupidCuentaGasto: TStringField
      FieldName = 'idCuentaGasto'
      Size = 16
    end
  end
end

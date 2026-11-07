object dmRepository: TdmRepository
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 694
  Top = 276
  Height = 277
  Width = 523
  object repConx: TADOConnection
    CommandTimeout = 240
    ConnectionString = 'FILE NAME=cbsrepository.udl'
    ConnectionTimeout = 90
    LoginPrompt = False
    Provider = 'cbsrepository.udl'
    Left = 30
    Top = 10
  end
  object rsBuscarUsuario: TADODataSet
    Connection = repConx
    CommandText = 'cfgBuscarUsuario;1'
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
        Name = '@idSegUserGrp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 144
    Top = 14
    object rsBuscarUsuarioidSegUserGrp: TStringField
      FieldName = 'idSegUserGrp'
      Size = 30
    end
    object rsBuscarUsuarioClave: TStringField
      DisplayWidth = 100
      FieldName = 'Clave'
      Size = 100
    end
    object rsBuscarUsuarioesGrupo: TBooleanField
      FieldName = 'esGrupo'
    end
    object rsBuscarUsuarioObjetoDefault: TStringField
      FieldName = 'ObjetoDefault'
      Size = 50
    end
    object rsBuscarUsuarioActivo: TBooleanField
      FieldName = 'Activo'
    end
    object rsBuscarUsuarioNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object rsBuscarUsuarioGuidUserGrp: TGuidField
      FieldName = 'GuidUserGrp'
      FixedChar = True
      Size = 38
    end
  end
  object rsEmpresasUsr: TADODataSet
    Connection = repConx
    LockType = ltReadOnly
    CommandText = 'cfgRSEmpresasXUsr;1'
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
        Name = '@idSegUserGrp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 34
    Top = 108
    object rsEmpresasUsridEmpresa: TGuidField
      FieldName = 'idEmpresa'
      FixedChar = True
      Size = 38
    end
    object rsEmpresasUsrEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 200
    end
    object rsEmpresasUsrRNC: TStringField
      FieldName = 'RNC'
    end
    object rsEmpresasUsrServidor: TStringField
      FieldName = 'Servidor'
      Size = 50
    end
    object rsEmpresasUsrBaseDatos: TStringField
      FieldName = 'BaseDatos'
      Size = 50
    end
    object rsEmpresasUsrTrusted: TBooleanField
      FieldName = 'Trusted'
    end
    object rsEmpresasUsrUserId: TStringField
      FieldName = 'UserId'
      Size = 50
    end
    object rsEmpresasUsrUserPwd: TWideStringField
      FieldName = 'UserPwd'
      Size = 50
    end
    object rsEmpresasUsrActiva: TBooleanField
      FieldName = 'Activa'
    end
  end
  object rsEmpresa: TADODataSet
    Connection = repConx
    CommandText = 'cfgRSEmpresa;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 134
    Top = 114
    object rsEmpresaidEmpresa: TGuidField
      FieldName = 'idEmpresa'
      FixedChar = True
      Size = 38
    end
    object rsEmpresaEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 200
    end
    object rsEmpresaRNC: TStringField
      FieldName = 'RNC'
    end
    object rsEmpresaServidor: TStringField
      FieldName = 'Servidor'
      Size = 50
    end
    object rsEmpresaBaseDatos: TStringField
      FieldName = 'BaseDatos'
      Size = 50
    end
    object rsEmpresaTrusted: TBooleanField
      FieldName = 'Trusted'
    end
    object rsEmpresaUserId: TStringField
      FieldName = 'UserId'
      Size = 50
    end
    object rsEmpresaUserPwd: TWideStringField
      FieldName = 'UserPwd'
      Size = 50
    end
    object rsEmpresaActiva: TBooleanField
      FieldName = 'Activa'
    end
    object rsEmpresaEncriptada: TBooleanField
      FieldName = 'Encriptada'
    end
  end
  object cUsuarioEmpresa: TADOCommand
    CommandText = 
      'declare @idUsr varchar(30)'#13#10'declare @idEmpresa uniqueidentifier'#13 +
      #10#13#10'set @idUsr = :usuario'#13#10'set @idEmpresa = :idEmp'#13#10#13#10'if not exis' +
      'ts (select 1 from segUserGrpEmpresa where idSegUserGrp = @idUsr)' +
      #13#10'  insert into SegUserGrpEmpresa (idEmpresa, idSegUserGrp)'#13#10'  v' +
      'alues (@idUsr, @idEmpresa)'
    Connection = repConx
    Parameters = <
      item
        Name = 'usuario'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'idEmp'
        DataType = ftGuid
        Size = -1
        Value = Null
      end>
    Left = 264
    Top = 18
  end
  object cLeerLic: TADOCommand
    CommandText = 'cfgLeerLicencia;1'
    CommandType = cmdStoredProc
    Connection = repConx
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdEmpresa'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Licencia'
        Attributes = [paNullable]
        DataType = ftWideString
        Direction = pdInputOutput
        Size = 200
        Value = Null
      end>
    Left = 262
    Top = 102
  end
  object cEscribirLic: TADOCommand
    CommandText = 'cfgEscribirLicencia;1'
    CommandType = cmdStoredProc
    Connection = repConx
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdEmpresa'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Licencia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end>
    Left = 262
    Top = 174
  end
  object rsFecha: TADODataSet
    Connection = repConx
    LockType = ltReadOnly
    CommandText = 
      'SELECT Fecha =(Select Convert(DateTime,Round(Convert(Float,GetDa' +
      'te()),0,1)))'
    Parameters = <>
    Left = 44
    Top = 190
    object rsFechaFecha: TDateTimeField
      FieldName = 'Fecha'
      ReadOnly = True
    end
  end
  object cLogEvent: TADOCommand
    CommandText = 'segInsertLog;1'
    CommandType = cmdStoredProc
    Connection = repConx
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idEmpresa'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Evento'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Objeto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Referencia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Descripcion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@DatosAdd'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end>
    Left = 140
    Top = 188
  end
  object cGetGlobal: TADOCommand
    CommandText = 'cfgGetGlobalValue;1'
    CommandType = cmdStoredProc
    Connection = repConx
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idGlobal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@valor'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 100
        Value = Null
      end>
    Left = 362
    Top = 18
  end
  object cSetGlobal: TADOCommand
    CommandText = 'cfgSetGlobalValue;1'
    CommandType = cmdStoredProc
    Connection = repConx
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idGlobal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@valor'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 360
    Top = 108
  end
end

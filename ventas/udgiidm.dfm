object dmDGII: TdmDGII
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 455
  Top = 144
  Height = 505
  Width = 742
  object svCompfiscal: TADOCommand
    CommandText = 'svCompfiscal2018'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@OutPut'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 19
        Value = ''
      end
      item
        Name = '@TipoDoc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@VencimientoNCF'
        Attributes = [paNullable]
        DataType = ftDateTime
        Direction = pdInputOutput
        Value = Null
      end
      item
        Name = '@reorden'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 36
    Top = 10
  end
  object rsTipoIngreso: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svListaTipoIngreso;1'
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
        Name = '@Orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 54
    Top = 150
  end
  object dsTipoIngreso: TDataSource
    DataSet = rsTipoIngreso
    Left = 110
    Top = 245
  end
  object rsFormaPago: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT * FROM PagoFormaCxP'
    Parameters = <>
    Left = 430
    Top = 252
  end
  object rsTiposRetencion: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT * FROM cxpTiposRetencionDGII'
    Parameters = <>
    Left = 595
    Top = 320
    object rsTiposRetencionidTiposRetencionDGII: TIntegerField
      FieldName = 'idTiposRetencionDGII'
    end
    object rsTiposRetencionTiposRetencionDGII: TStringField
      FieldName = 'TiposRetencionDGII'
      Size = 50
    end
  end
  object dsFormaPago: TDataSource
    DataSet = rsFormaPago
    Left = 276
    Top = 228
  end
  object dsTiposRetencion: TDataSource
    DataSet = rsTiposRetencion
    Left = 336
    Top = 133
  end
end

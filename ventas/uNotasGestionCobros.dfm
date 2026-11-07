inherited NotasGestionCobros: TNotasGestionCobros
  Left = 397
  Top = 329
  Caption = 'Notas Gestion de Cobros'
  ClientHeight = 266
  ClientWidth = 572
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 572
  end
  inherited Gradient2: TGradient
    Width = 572
  end
  object Label2: TLabel [2]
    Left = 4
    Top = 38
    Width = 46
    Height = 13
    Caption = 'Tipo Nota'
  end
  object Label4: TLabel [3]
    Left = 4
    Top = 79
    Width = 69
    Height = 13
    Caption = 'Fecha Agenda'
  end
  object Label1: TLabel [4]
    Left = 4
    Top = 119
    Width = 55
    Height = 13
    Caption = 'Comentario'
  end
  inherited btImprimir: TcxButton
    Top = 216
    Width = 56
    Height = 48
    Action = Aprint
    TabOrder = 2
  end
  inherited btLocalizar: TcxButton
    Top = 216
    Width = 56
    Height = 48
    TabOrder = 3
  end
  inherited btNuevo: TcxButton
    Top = 216
    Width = 56
    Height = 48
    TabOrder = 4
  end
  inherited btCancelar: TcxButton
    Top = 216
    Width = 56
    Height = 48
    TabOrder = 6
  end
  inherited btGuardar: TcxButton
    Top = 216
    Width = 56
    Height = 48
    TabOrder = 7
  end
  inherited btBorrar: TcxButton
    Top = 216
    Width = 56
    Height = 48
    TabOrder = 8
  end
  inherited btSalir: TcxButton
    Top = 216
    Width = 56
    Height = 48
    TabOrder = 9
  end
  inherited btEditar: TcxButton
    Top = 217
    Width = 56
    Height = 48
    TabOrder = 5
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [13]
    Left = 4
    Top = 51
    Width = 555
    Height = 21
    DataBinding.DataField = 'TipoNota'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'IdTipoNota'
    Properties.ListColumns = <
      item
        FieldName = 'TipoNota'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTiposNotas
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxDBDateEdit1: TcxDBDateEdit [14]
    Left = 4
    Top = 93
    Width = 137
    Height = 21
    DataBinding.DataField = 'FechaAgenda'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxDBMemo1: TcxDBMemo [15]
    Left = 4
    Top = 135
    Width = 555
    Height = 74
    DataBinding.DataField = 'Nota'
    DataBinding.DataSource = DS
    TabOrder = 10
  end
  inherited DS: TwwDataSource
    DataSet = rs
  end
  inherited Acciones: TActionList
    Left = 344
    inherited Aprint: TAction
      Visible = False
    end
  end
  object rsTiposNotas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT * FROM cxcTipoNota'
    Parameters = <>
    Left = 226
    Top = 38
    object rsTiposNotasIdTipoNota: TStringField
      FieldName = 'IdTipoNota'
      Size = 16
    end
    object rsTiposNotasTipoNota: TStringField
      FieldName = 'TipoNota'
      Size = 100
    end
    object rsTiposNotasInformacion: TBooleanField
      FieldName = 'Informacion'
    end
    object rsTiposNotasAgendar: TBooleanField
      FieldName = 'Agendar'
    end
  end
  object dsTiposNotas: TDataSource
    DataSet = rsTiposNotas
    Left = 298
    Top = 36
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsNewRecord
    CommandText = 'cxcRSNotasGestionCobros;1'
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
        Name = '@idNota'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 188
    Top = 26
    object rsidNota: TGuidField
      FieldName = 'idNota'
      FixedChar = True
      Size = 38
    end
    object rsFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object rsFechaAgenda: TDateTimeField
      FieldName = 'FechaAgenda'
    end
    object rsTipoNota: TStringField
      FieldName = 'TipoNota'
      Size = 16
    end
    object rsNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
    object rsidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsAgendar: TBooleanField
      FieldName = 'Agendar'
    end
    object rsCerrada: TBooleanField
      FieldName = 'Cerrada'
    end
    object rsCerradaPor: TStringField
      FieldName = 'CerradaPor'
      Size = 30
    end
    object rsFechaCerrada: TDateTimeField
      FieldName = 'FechaCerrada'
    end
  end
  object rsValidaTieneAgenda: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxcValidaTieneAgenda'
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
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@idcliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 374
    Top = 76
  end
end

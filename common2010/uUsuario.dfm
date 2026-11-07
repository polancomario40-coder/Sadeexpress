inherited Usuario: TUsuario
  Left = 404
  Top = 144
  BorderIcons = []
  Caption = 'Usuario'
  ClientHeight = 276
  ClientWidth = 689
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 22
    Top = 16
    Width = 39
    Height = 13
    Caption = 'Cuenta:'
    Transparent = True
  end
  object Label2: TLabel [1]
    Left = 22
    Top = 58
    Width = 41
    Height = 13
    Caption = 'Nombre:'
    Transparent = True
  end
  object Label3: TLabel [2]
    Left = 22
    Top = 100
    Width = 28
    Height = 13
    Caption = 'Email:'
    Transparent = True
  end
  object Label4: TLabel [3]
    Left = 240
    Top = 100
    Width = 78
    Height = 13
    Caption = 'Nivel de acceso:'
    Transparent = True
  end
  object edCodigo: TcxDBTextEdit [4]
    Left = 22
    Top = 32
    Width = 121
    Height = 21
    DataBinding.DataField = 'idSegUserGrp'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxDBTextEdit2: TcxDBTextEdit [5]
    Left = 22
    Top = 74
    Width = 383
    Height = 21
    DataBinding.DataField = 'Nombre'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxDBTextEdit3: TcxDBTextEdit [6]
    Left = 22
    Top = 115
    Width = 191
    Height = 21
    DataBinding.DataField = 'Email'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [7]
    Left = 240
    Top = 115
    Width = 121
    Height = 21
    DataBinding.DataField = 'Nivel'
    DataBinding.DataSource = DS
    Properties.LargeIncrement = 2.000000000000000000
    Properties.MaxValue = 5.000000000000000000
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBImage1: TcxDBImage [8]
    Left = 446
    Top = 10
    Width = 209
    Height = 169
    DataBinding.DataField = 'Foto'
    DataBinding.DataSource = DS
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.ImmediatePost = True
    Properties.Stretch = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxDBCheckBox1: TcxDBCheckBox [9]
    Left = 22
    Top = 148
    Width = 121
    Height = 21
    Caption = 'Activo'
    DataBinding.DataField = 'Activo'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxDBCheckBox2: TcxDBCheckBox [10]
    Left = 238
    Top = 148
    Width = 121
    Height = 21
    Caption = 'Pedir cambio clave'
    DataBinding.DataField = 'CambiarClave'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxButton1: TcxButton [11]
    Left = 16
    Top = 222
    Width = 109
    Height = 41
    Caption = 'Guardar'
    TabOrder = 7
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [12]
    Left = 146
    Top = 222
    Width = 109
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [13]
    Left = 276
    Top = 222
    Width = 109
    Height = 41
    Caption = 'Reiniciar clave'
    TabOrder = 9
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 547
    Top = 61
  end
  object rs: TADODataSet
    Connection = dmRepository.repConx
    CursorType = ctStatic
    OnNewRecord = rsNewRecord
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
    Left = 494
    Top = 62
    object rsidSegUserGrp: TStringField
      FieldName = 'idSegUserGrp'
      OnValidate = rsidSegUserGrpValidate
      Size = 30
    end
    object rsClave: TStringField
      FieldName = 'Clave'
      Size = 16
    end
    object rsesGrupo: TBooleanField
      FieldName = 'esGrupo'
    end
    object rsObjetoDefault: TStringField
      FieldName = 'ObjetoDefault'
      Size = 50
    end
    object rsActivo: TBooleanField
      FieldName = 'Activo'
    end
    object rsNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object rsGuidUserGrp: TGuidField
      FieldName = 'GuidUserGrp'
      FixedChar = True
      Size = 38
    end
    object rsEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object rsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rsFoto: TBlobField
      FieldName = 'Foto'
    end
    object rsPreguntaSecreta: TStringField
      FieldName = 'PreguntaSecreta'
      Size = 300
    end
    object rsRespuesta: TStringField
      FieldName = 'Respuesta'
      Size = 300
    end
    object rsCambiarClave: TBooleanField
      FieldName = 'CambiarClave'
    end
  end
  object rsValidarusuario: TADODataSet
    Connection = dmRepository.repConx
    CursorType = ctStatic
    LockType = ltReadOnly
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
    Left = 472
    Top = 116
    object rsValidarusuarioidSegUserGrp: TStringField
      FieldName = 'idSegUserGrp'
      Size = 30
    end
    object rsValidarusuarioClave: TStringField
      FieldName = 'Clave'
      Size = 16
    end
    object rsValidarusuarioesGrupo: TBooleanField
      FieldName = 'esGrupo'
    end
    object rsValidarusuarioObjetoDefault: TStringField
      FieldName = 'ObjetoDefault'
      Size = 50
    end
    object rsValidarusuarioActivo: TBooleanField
      FieldName = 'Activo'
    end
    object rsValidarusuarioNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object rsValidarusuarioGuidUserGrp: TGuidField
      FieldName = 'GuidUserGrp'
      FixedChar = True
      Size = 38
    end
    object rsValidarusuarioEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object rsValidarusuarioNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsValidarusuarioTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rsValidarusuarioFoto: TBlobField
      FieldName = 'Foto'
    end
    object rsValidarusuarioPreguntaSecreta: TStringField
      FieldName = 'PreguntaSecreta'
      Size = 300
    end
    object rsValidarusuarioRespuesta: TStringField
      FieldName = 'Respuesta'
      Size = 300
    end
    object rsValidarusuarioCambiarClave: TBooleanField
      FieldName = 'CambiarClave'
    end
  end
end

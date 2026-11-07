inherited MantUbicaciones: TMantUbicaciones
  Left = 709
  Top = 348
  Caption = 'Ubicaciones'
  ClientHeight = 199
  ClientWidth = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 578
  end
  inherited Gradient2: TGradient
    Width = 578
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 42
    Width = 34
    Height = 13
    Caption = 'Activo:'
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 76
    Width = 58
    Height = 13
    Caption = 'Descripcion:'
  end
  object Label11: TLabel [4]
    Left = 8
    Top = 107
    Width = 62
    Height = 13
    Caption = 'Pertenece a:'
  end
  object edIdUbic: TcxDBTextEdit [5]
    Left = 97
    Top = 38
    Width = 121
    Height = 21
    DataBinding.DataField = 'idUbicacion'
    DataBinding.DataSource = DS
    Enabled = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object luUbic: TcxDBLookupComboBox [6]
    Left = 97
    Top = 104
    Width = 399
    Height = 21
    DataBinding.DataField = 'idUbicMadre'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idUbicacion'
    Properties.ListColumns = <
      item
        FieldName = 'Descripcion'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsMadres
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object edDescr: TcxDBTextEdit [7]
    Left = 97
    Top = 72
    Width = 397
    Height = 21
    DataBinding.DataField = 'Descripcion'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  inherited btImprimir: TcxButton
    Top = 147
    Width = 55
    Height = 50
  end
  inherited btLocalizar: TcxButton
    Top = 147
    Width = 55
    Height = 50
  end
  inherited btNuevo: TcxButton
    Top = 147
    Width = 55
    Height = 50
  end
  inherited btCancelar: TcxButton
    Top = 147
    Width = 55
    Height = 50
  end
  inherited btGuardar: TcxButton
    Top = 147
    Width = 55
    Height = 50
  end
  inherited btBorrar: TcxButton
    Top = 147
    Width = 55
    Height = 50
  end
  inherited btSalir: TcxButton
    Top = 147
    Width = 55
    Height = 50
  end
  inherited btEditar: TcxButton
    Top = 304
  end
  inherited DS: TwwDataSource
    DataSet = rsUbics
    Left = 237
    Top = 113
  end
  inherited Acciones: TActionList
    Left = 346
    Top = 40
  end
  inherited ImageList: TImageList
    Left = 254
    Top = 38
  end
  object rsUbics: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from afUbicaciones '#13#10'where idUbicacion = :idUbicacion'
    Parameters = <
      item
        Name = 'idUbicacion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 439
    Top = 68
    object rsUbicsidUbicacion: TAutoIncField
      FieldName = 'idUbicacion'
      ReadOnly = True
    end
    object rsUbicsidUbicMadre: TIntegerField
      FieldName = 'idUbicMadre'
    end
    object rsUbicsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object rsMadres: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from afUbicaciones descripcion'
    Parameters = <>
    Left = 391
    Top = 68
    object AutoIncField1: TAutoIncField
      FieldName = 'idUbicacion'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'idUbicMadre'
    end
    object StringField1: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object dsMadres: TDataSource
    AutoEdit = False
    DataSet = rsMadres
    OnUpdateData = DSUpdateData
    Left = 143
    Top = 95
  end
end

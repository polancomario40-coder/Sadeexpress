inherited MantClases: TMantClases
  Left = 354
  Top = 159
  Caption = 'Clases de activos'
  ClientHeight = 428
  ClientWidth = 665
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Left = 3
    Top = 66
    Width = 659
    Height = 359
    Selected.Strings = (
      'idActivoClase'#9'12'#9'Codigo'#9'F'
      'ActivoClase'#9'50'#9'Clase'#9#9
      'IdCuenta'#9'16'#9'Cuenta'#9'F'
      'lufCategoria'#9'27'#9'Categoria'#9#9)
    Align = alNone
    UseTFields = False
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 665
    inherited banterior: TwwNavButton
      Width = 84
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 84
      Width = 83
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 167
      Width = 83
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 250
      Width = 83
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 333
      Width = 83
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 416
      Width = 83
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 499
      Width = 83
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 582
      Width = 83
    end
  end
  object luCat: TcxLookupComboBox [2]
    Left = 2
    Top = 38
    Width = 359
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idCategoria'
    Properties.ListColumns = <
      item
        FieldName = 'Categoria'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsCats
    Properties.OnChange = luCatPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  inherited DS: TwwDataSource
    DataSet = rs
    OnStateChange = DSStateChange
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = rsBeforePost
    OnNewRecord = rsNewRecord
    CommandText = 'afRSActivoClase;1'
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
        Name = '@idCategoria'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 104
    object rsidActivoClase: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 12
      FieldName = 'idActivoClase'
      Size = 16
    end
    object rsActivoClase: TStringField
      DisplayLabel = 'Clase'
      DisplayWidth = 50
      FieldName = 'ActivoClase'
      Size = 100
    end
    object rslufCategoria: TStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 27
      FieldKind = fkLookup
      FieldName = 'lufCategoria'
      LookupDataSet = rsCats
      LookupKeyFields = 'idCategoria'
      LookupResultField = 'Categoria'
      KeyFields = 'idCategoria'
      Size = 100
      Lookup = True
    end
    object rsidCategoria: TIntegerField
      FieldName = 'idCategoria'
      Visible = False
    end
    object rsIdCuenta: TStringField
      FieldName = 'IdCuenta'
      Size = 16
    end
  end
  object rsCats: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'afRSCategoria;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 84
    Top = 188
    object rsCatsidCategoria: TIntegerField
      FieldName = 'idCategoria'
      ReadOnly = True
    end
    object rsCatsCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object rsCatsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
  end
  object dsCats: TwwDataSource
    AutoEdit = False
    DataSet = rsCats
    OnUpdateData = DSUpdateData
    Left = 155
    Top = 239
  end
end

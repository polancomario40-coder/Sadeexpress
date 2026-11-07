inherited svEmpleado: TsvEmpleado
  Caption = 'Vendedores y Empleados'
  ClientHeight = 188
  ClientWidth = 444
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 444
  end
  object Label1: TLabel [1]
    Left = 16
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Codigo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 84
    Width = 37
    Height = 13
    Caption = 'Nombre'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 108
    Width = 28
    Height = 13
    Caption = 'Notas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 132
    Width = 42
    Height = 13
    Caption = 'Telefono'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [5]
    Left = 16
    Top = 156
    Width = 24
    Height = 13
    Caption = 'Email'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 444
    inherited nuevo: TwwNavButton
      Width = 64
    end
    inherited editar: TwwNavButton
      Left = 64
      Width = 64
    end
    inherited guardar: TwwNavButton
      Left = 128
      Width = 64
    end
    inherited cancelar: TwwNavButton
      Left = 192
      Width = 63
    end
    inherited borrar: TwwNavButton
      Left = 255
      Width = 63
    end
    inherited BLocalizarx: TwwNavButton
      Left = 318
      Width = 63
    end
    inherited salir: TwwNavButton
      Left = 381
      Width = 63
    end
  end
  object dxDBEdit1: TdxDBEdit [7]
    Left = 72
    Top = 56
    Width = 121
    TabOrder = 1
    DataField = 'idEmpleado'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit3: TdxDBEdit [8]
    Left = 72
    Top = 80
    Width = 361
    TabOrder = 2
    DataField = 'Empleado'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit4: TdxDBEdit [9]
    Left = 72
    Top = 104
    Width = 361
    TabOrder = 3
    DataField = 'Notas'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBCheckEdit1: TdxDBCheckEdit [10]
    Left = 360
    Top = 52
    Width = 73
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Alignment = taRightJustify
    Caption = 'Inactivo'
    DataField = 'inactivo'
    DataSource = DS
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 1
  end
  object dxDBEdit5: TdxDBEdit [11]
    Left = 72
    Top = 128
    Width = 121
    TabOrder = 5
    DataField = 'Telefono'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBCheckEdit2: TdxDBCheckEdit [12]
    Left = 337
    Top = 128
    Width = 97
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Alignment = taRightJustify
    Caption = 'es Vendedor'
    DataField = 'esVendedor'
    DataSource = DS
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 1
  end
  object dxDBEdit2: TdxDBEdit [13]
    Left = 72
    Top = 152
    Width = 361
    TabOrder = 7
    DataField = 'Email'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  inherited DS: TwwDataSource
    Left = 189
    Top = 89
  end
  inherited ImageList: TImageList
    Left = 270
    Top = 64
  end
  inherited Acciones: TActionList
    Left = 224
    Top = 116
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'svrsEmpleado;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idEmpleado'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 302
    Top = 104
    object RSidEmpleado: TIntegerField
      DisplayLabel = 'Empleado'
      FieldName = 'idEmpleado'
    end
    object RSEmpleado: TStringField
      FieldName = 'Empleado'
      Required = True
      Size = 40
    end
    object RSDireccion: TStringField
      FieldName = 'Direccion'
      Size = 60
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSTelefono: TStringField
      FieldName = 'Telefono'
    end
    object RSBeeper: TStringField
      FieldName = 'Beeper'
    end
    object RSNotas: TStringField
      FieldName = 'Notas'
      Size = 200
    end
    object RSesVendedor: TBooleanField
      FieldName = 'esVendedor'
      Required = True
    end
    object RSinactivo: TBooleanField
      FieldName = 'inactivo'
      Required = True
    end
    object RSUidEmpleado: TGuidField
      FieldName = 'UidEmpleado'
      FixedChar = True
      Size = 38
    end
    object RSGrupoTrabajo: TIntegerField
      FieldName = 'GrupoTrabajo'
    end
    object RSidPlanta: TStringField
      FieldName = 'idPlanta'
      Size = 16
    end
    object RSIdEmpleadoGrupo: TIntegerField
      FieldName = 'IdEmpleadoGrupo'
    end
    object RSEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
  end
end

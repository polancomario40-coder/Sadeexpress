object BusquedaClientes: TBusquedaClientes
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  Color = 15528173
  ParentColor = False
  TabOrder = 0
  DesignSize = (
    320
    240)
  object Label1: TLabel
    Left = 5
    Top = 10
    Width = 40
    Height = 13
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grid: TDBGrid
    Left = 9
    Top = 32
    Width = 773
    Height = 394
    Anchors = [akLeft, akTop, akRight, akBottom]
    Ctl3D = False
    DataSource = DS
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = gridDblClick
    OnTitleClick = gridTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Telefono'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Direccion'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ciudad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idCliente'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 705
    Top = 474
    Width = 78
    Height = 25
    Anchors = [akRight, akBottom]
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 615
    Top = 475
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object edtBuscar: TEdit
    Left = 56
    Top = 8
    Width = 726
    Height = 19
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnChange = edtBuscarChange
    OnKeyDown = edtBuscarKeyDown
  end
  object DS: TDataSource
    DataSet = RS
    Left = 184
    Top = 56
  end
  object RS: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'BusqTestClientes'
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
        Size = 50
        Value = Null
      end>
    Left = 248
    Top = 52
    object RSTelefono: TStringField
      FieldName = 'Telefono'
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object RSDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
    end
  end
end

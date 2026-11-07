inherited ProductoEspec: TProductoEspec
  Caption = 'Especificaciones Tecnicas del Producto'
  ClientHeight = 440
  ClientWidth = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 573
  end
  object Label1: TLabel [1]
    Left = 410
    Top = 54
    Width = 30
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Fecha'
  end
  object Label5: TLabel [2]
    Left = 12
    Top = 222
    Width = 3
    Height = 13
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 573
    inherited nuevo: TwwNavButton
      Width = 82
    end
    inherited editar: TwwNavButton
      Left = 82
      Width = 82
    end
    inherited guardar: TwwNavButton
      Left = 164
      Width = 82
    end
    inherited cancelar: TwwNavButton
      Left = 246
      Width = 82
    end
    inherited borrar: TwwNavButton
      Left = 328
      Width = 82
    end
    inherited BLocalizarx: TwwNavButton
      Left = 410
      Width = 82
    end
    inherited salir: TwwNavButton
      Left = 492
      Width = 81
    end
  end
  object Espec: TcxDBMemo [4]
    Left = 2
    Top = 76
    Width = 569
    Height = 360
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataBinding.DataField = 'Especificacion'
    DataBinding.DataSource = DS
    Properties.WantTabs = True
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = dm.cxEstilo
    TabOrder = 1
  end
  object cxDBDateEdit1: TcxDBDateEdit [5]
    Left = 446
    Top = 50
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    DataBinding.DataField = 'FechaEspec'
    DataBinding.DataSource = DS
    Style.StyleController = dm.cxEstilo
    TabOrder = 2
  end
  inherited DS: TwwDataSource
    Left = 225
    Top = 117
  end
  inherited ImageList: TImageList
    Left = 258
    Top = 72
  end
  inherited Acciones: TActionList
    Left = 252
    Top = 160
    inherited ALocalizar: TAction
      Visible = False
    end
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsProductoEspec;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end>
    Left = 284
    Top = 122
    object RSidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object RSEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object RSFechaEspec: TDateTimeField
      FieldName = 'FechaEspec'
    end
  end
end

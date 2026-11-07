inherited ProductoCostoBase: TProductoCostoBase
  Left = 423
  Top = 252
  Caption = 'Costo Base de Productos'
  ClientHeight = 332
  ClientWidth = 547
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 547
  end
  object Label1: TLabel [1]
    Left = 6
    Top = 56
    Width = 54
    Height = 13
    Caption = 'Costo Base'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [2]
    Left = 140
    Top = 56
    Width = 39
    Height = 13
    Caption = 'Moneda'
  end
  object Label3: TLabel [3]
    Left = 6
    Top = 95
    Width = 105
    Height = 13
    Caption = 'Porc Beneficio Credito'
  end
  object Label4: TLabel [4]
    Left = 280
    Top = 95
    Width = 112
    Height = 13
    Caption = 'Porc Beneficio Contado'
  end
  object Label5: TLabel [5]
    Left = 12
    Top = 222
    Width = 3
    Height = 13
  end
  object Label6: TLabel [6]
    Left = 140
    Top = 95
    Width = 33
    Height = 13
    Caption = 'Credito'
    FocusControl = DBEdit2
  end
  object Label7: TLabel [7]
    Left = 412
    Top = 95
    Width = 40
    Height = 13
    Caption = 'Contado'
    FocusControl = DBEdit5
  end
  object Label8: TLabel [8]
    Left = 412
    Top = 56
    Width = 57
    Height = 13
    Caption = '% de gastos'
  end
  object Label9: TLabel [9]
    Left = 6
    Top = 135
    Width = 76
    Height = 13
    Caption = '% de descuento'
  end
  object Label10: TLabel [10]
    Left = 280
    Top = 56
    Width = 105
    Height = 13
    Caption = 'Tasa (0 = tasa del dia)'
    FocusControl = cxDBTextEdit1
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 547
    inherited nuevo: TwwNavButton
      Width = 79
    end
    inherited editar: TwwNavButton
      Left = 79
      Width = 78
    end
    inherited guardar: TwwNavButton
      Left = 157
      Width = 78
    end
    inherited cancelar: TwwNavButton
      Left = 235
      Width = 78
    end
    inherited borrar: TwwNavButton
      Left = 313
      Width = 78
    end
    inherited BLocalizarx: TwwNavButton
      Left = 391
      Width = 78
    end
    inherited salir: TwwNavButton
      Left = 469
      Width = 78
    end
  end
  object DBEdit1: TcxDBTextEdit [12]
    Left = 6
    Top = 70
    Width = 129
    Height = 21
    DataBinding.DataField = 'CostoBase'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [13]
    Left = 140
    Top = 70
    Width = 133
    Height = 21
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Moneda'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dm.dsMoneda
    Style.BorderStyle = ebsUltraFlat
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = dm.cxEstilo
    TabOrder = 1
  end
  object Memo1: TcxMemo [14]
    Left = 4
    Top = 208
    Width = 537
    Height = 118
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      
        'Los productos que tengan configurados Costo Base en esta pantall' +
        'a tendran el beneficio de que sus precios de '
      
        'venta podran ser calculados automaticamente con los cambios de t' +
        'asas y al momento de las nuevas compras '
      
        'del producto, se actualizara en la pantalla de producto un nuevo' +
        ' precio de venta base para credito y contado y '
      
        'se recalculara el precio en las listas de precios basado en este' +
        ' nuevo precio y la variacion porcentual '
      'especificada en la lista de precio')
    ParentColor = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object DBEdit2: TcxDBTextEdit [15]
    Left = 140
    Top = 109
    Width = 132
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Credito'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object DBEdit5: TcxDBTextEdit [16]
    Left = 412
    Top = 109
    Width = 132
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Contado'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object cxButton1: TcxButton [17]
    Left = 346
    Top = 158
    Width = 197
    Height = 45
    Caption = 'Actualizar Precios en el Producto'
    TabOrder = 9
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [18]
    Left = 6
    Top = 109
    Width = 128
    Height = 21
    DataBinding.DataField = 'CreditoPorc'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '##0.00'
    Properties.ImmediatePost = True
    Properties.MaxValue = 100.000000000000000000
    Properties.ValueType = vtFloat
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxDBSpinEdit2: TcxDBSpinEdit [19]
    Left = 280
    Top = 109
    Width = 128
    Height = 21
    DataBinding.DataField = 'ContadoPorc'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '##0.00'
    Properties.ImmediatePost = True
    Properties.MaxValue = 100.000000000000000000
    Properties.ValueType = vtFloat
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxDBSpinEdit3: TcxDBSpinEdit [20]
    Left = 6
    Top = 148
    Width = 128
    Height = 21
    DataBinding.DataField = 'PorcDesc'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '##0.00'
    Properties.ImmediatePost = True
    Properties.MaxValue = 100.000000000000000000
    Properties.ValueType = vtFloat
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxDBSpinEdit4: TcxDBSpinEdit [21]
    Left = 412
    Top = 70
    Width = 128
    Height = 21
    DataBinding.DataField = 'PorcGasto'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '##0.00'
    Properties.ImmediatePost = True
    Properties.MaxValue = 100.000000000000000000
    Properties.ValueType = vtFloat
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBTextEdit1: TcxDBTextEdit [22]
    Left = 280
    Top = 70
    Width = 129
    Height = 21
    DataBinding.DataField = 'Tasa'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  inherited DS: TwwDataSource
    Left = 221
  end
  inherited ImageList: TImageList
    Left = 406
    Top = 278
  end
  inherited Acciones: TActionList
    Left = 340
    Top = 122
    inherited ALocalizar: TAction
      Visible = False
    end
  end
  inherited RS: TADODataSet
    OnCalcFields = RSCalcFields
    OnNewRecord = RSNewRecord
    CommandText = 'rsproductocostobase'
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
    Left = 412
    Top = 122
    object RSidProducto: TStringField
      FieldName = 'idProducto'
      Required = True
      Size = 25
    end
    object RSCostoBase: TBCDField
      FieldName = 'CostoBase'
      Required = True
      Precision = 18
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
      Required = True
    end
    object RSCreditoPorc: TBCDField
      FieldName = 'CreditoPorc'
      Required = True
      Precision = 18
    end
    object RSContadoPorc: TBCDField
      FieldName = 'ContadoPorc'
      Required = True
      Precision = 18
    end
    object RSContado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Contado'
      Calculated = True
    end
    object RSCredito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Credito'
      Calculated = True
    end
    object RSUidProducto: TGuidField
      FieldName = 'UidProducto'
      FixedChar = True
      Size = 38
    end
    object RSPorcGasto: TFloatField
      FieldName = 'PorcGasto'
    end
    object RSPorcDesc: TFloatField
      FieldName = 'PorcDesc'
    end
    object RSTasa: TFloatField
      FieldName = 'Tasa'
    end
  end
  object ActualizarPrecio: TADOCommand
    CommandText = 'svActualizarPrecio;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end>
    Left = 134
    Top = 274
  end
  object cActualizarPreciosGM: TADOCommand
    CommandText = 'svActualizarPrecioGM'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end>
    Left = 54
    Top = 202
  end
end

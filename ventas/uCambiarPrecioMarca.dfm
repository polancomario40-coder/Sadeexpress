inherited CambiarPrecioMarca: TCambiarPrecioMarca
  Left = 416
  Top = 87
  Caption = 'Cambiar precios'
  ClientHeight = 537
  ClientWidth = 854
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object luMarca: TcxLookupComboBox [1]
    Left = 45
    Top = 14
    Width = 145
    Height = 21
    BeepOnEnter = False
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idMarca'
    Properties.ListColumns = <
      item
        FieldName = 'Marca'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsMarcas
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton [2]
    Left = 197
    Top = 10
    Width = 89
    Height = 29
    Caption = 'Mostrar'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [3]
    Left = 8
    Top = 44
    Width = 840
    Height = 384
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'idProducto'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1idProducto: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'idProducto'
        MinWidth = 154
      end
      object cxGrid1DBTableView1Producto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        MinWidth = 370
        Width = 370
      end
      object cxGrid1DBTableView1PrecioActual: TcxGridDBColumn
        Caption = 'Precio actual'
        DataBinding.FieldName = 'PrecioActual'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 75
        Width = 75
      end
      object cxGrid1DBTableView1CostoBase: TcxGridDBColumn
        Caption = 'Costo base'
        DataBinding.FieldName = 'CostoBase'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 75
        Width = 75
      end
      object cxGrid1DBTableView1PorcGasto: TcxGridDBColumn
        Caption = '% Gasto'
        DataBinding.FieldName = 'PorcGasto'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 56
        Width = 56
      end
      object cxGrid1DBTableView1CreditoPorc: TcxGridDBColumn
        Caption = '% Benef'
        DataBinding.FieldName = 'CreditoPorc'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 52
        Width = 52
      end
      object cxGrid1DBTableView1porcDesc: TcxGridDBColumn
        Caption = '% Desto.'
        DataBinding.FieldName = 'porcDesc'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 67
        Width = 67
      end
      object cxGrid1DBTableView1PrecioPropuesto: TcxGridDBColumn
        Caption = 'Precio Propuesto'
        DataBinding.FieldName = 'PrecioPropuesto'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 87
        Width = 87
      end
      object cxGrid1DBTableView1idMoneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        MinWidth = 61
        Width = 61
      end
      object cxGrid1DBTableView1Tasa: TcxGridDBColumn
        DataBinding.FieldName = 'Tasa'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 49
        Width = 49
      end
      object cxGrid1DBTableView1Marca: TcxGridDBColumn
        DataBinding.FieldName = 'Marca'
        MinWidth = 141
        Width = 141
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'idmoneda'
        DataBinding.FieldName = 'idMoneda'
        Visible = False
        Hidden = True
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox [4]
    Left = 268
    Top = 428
    Width = 580
    Height = 105
    Anchors = [akLeft, akRight, akBottom]
    Caption = ' Cambiar precios '
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
    object edTasa: TcxCurrencyEdit
      Left = 54
      Top = 20
      Width = 69
      Height = 21
      Properties.DisplayFormat = 'RD$,0.00;(RD$,0.00)'
      Properties.ValidateOnEnter = True
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object seGasto: TcxSpinEdit
      Left = 193
      Top = 20
      Width = 60
      Height = 21
      Properties.AssignedValues.MaxValue = True
      Properties.ValueType = vtFloat
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object seBen: TcxSpinEdit
      Left = 348
      Top = 20
      Width = 60
      Height = 21
      Properties.AssignedValues.MaxValue = True
      Properties.ValueType = vtFloat
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 2
    end
    object seDesc: TcxSpinEdit
      Left = 513
      Top = 20
      Width = 60
      Height = 21
      Properties.AssignedValues.MaxValue = True
      Properties.ValueType = vtFloat
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 3
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 69
      Width = 207
      Height = 31
      Caption = 'Actualizar todos los productos visibles'
      TabOrder = 4
      OnClick = cxButton3Click
      LookAndFeel.NativeStyle = True
    end
    object cxButton4: TcxButton
      Left = 364
      Top = 69
      Width = 207
      Height = 31
      Caption = 'Cambiar precio a productos'
      TabOrder = 5
      OnClick = cxButton4Click
      LookAndFeel.NativeStyle = True
    end
    object cbTasa: TcxCheckBox
      Left = 6
      Top = 20
      Width = 45
      Height = 21
      TabStop = False
      Caption = 'Tasa'
      Properties.ImmediatePost = True
      State = cbsChecked
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 6
    end
    object cbGasto: TcxCheckBox
      Left = 129
      Top = 20
      Width = 63
      Height = 21
      TabStop = False
      Caption = '% Gasto'
      Properties.ImmediatePost = True
      State = cbsChecked
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 7
    end
    object cbBen: TcxCheckBox
      Left = 267
      Top = 20
      Width = 78
      Height = 21
      TabStop = False
      Caption = '% beneficio'
      Properties.ImmediatePost = True
      State = cbsChecked
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 8
    end
    object cbDesc: TcxCheckBox
      Left = 426
      Top = 20
      Width = 86
      Height = 21
      TabStop = False
      Caption = '% Descuento'
      Properties.ImmediatePost = True
      State = cbsChecked
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 9
    end
  end
  object cxGroupBox2: TcxGroupBox [5]
    Left = 6
    Top = 428
    Width = 236
    Height = 105
    Anchors = [akLeft, akBottom]
    Caption = ' Cambiar precios '
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
    object cxLabel3: TcxLabel
      Left = 10
      Top = 18
      Width = 62
      Height = 17
      Caption = 'Costo base:'
      Style.LookAndFeel.NativeStyle = True
    end
    object edCosto: TcxCurrencyEdit
      Left = 72
      Top = 18
      Width = 145
      Height = 21
      Properties.DisplayFormat = 'RD$,0.00;(RD$,0.00)'
      Properties.ValidateOnEnter = True
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object cxLabel4: TcxLabel
      Left = 10
      Top = 42
      Width = 46
      Height = 17
      Caption = 'Moneda:'
      Style.LookAndFeel.NativeStyle = True
    end
    object luMoneda: TcxLookupComboBox
      Left = 72
      Top = 42
      Width = 145
      Height = 21
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'idMoneda'
      Properties.ListColumns = <
        item
          FieldName = 'Moneda'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsMoneda
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 69
      Width = 207
      Height = 31
      Caption = 'Actualizar productos activos'
      TabOrder = 4
      OnClick = cxButton2Click
      LookAndFeel.NativeStyle = True
    end
  end
  object cxButton5: TcxButton [6]
    Left = 761
    Top = 10
    Width = 87
    Height = 29
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 5
    OnClick = cxButton5Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 259
    Top = 145
  end
  object rsMarcas: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select idMarca, Marca'#13#10'from marca'#13#10'union '#13#10'select null, '#39'(todas)' +
      #39#13#10'order by 2'
    Parameters = <>
    Left = 80
    Top = 134
  end
  object dsMarcas: TDataSource
    DataSet = rsMarcas
    Left = 152
    Top = 142
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = rsAfterScroll
    CommandText = 'invListaPrecioMarca'
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
        Name = '@idMarca'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 206
    Top = 144
    object rsidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object rsMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object rsPrecioActual: TBCDField
      FieldName = 'PrecioActual'
      Precision = 19
      Size = 2
    end
    object rsCostoBase: TBCDField
      FieldName = 'CostoBase'
      Precision = 18
    end
    object rsPorcGasto: TFloatField
      FieldName = 'PorcGasto'
    end
    object rsCreditoPorc: TBCDField
      FieldName = 'CreditoPorc'
      Precision = 18
    end
    object rsTasa: TFloatField
      FieldName = 'Tasa'
    end
    object rsporcDesc: TFloatField
      FieldName = 'porcDesc'
    end
    object rsPrecioPropuesto: TBCDField
      FieldName = 'PrecioPropuesto'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
  end
  object cIniciar: TADOCommand
    CommandText = 'invIniciarProductoCostoBase;1'
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
        Size = 30
        Value = Null
      end
      item
        Name = '@Costo'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@idMon'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 122
    Top = 248
  end
  object cActualizar: TADOCommand
    CommandText = 'invActualizarProductoCostoBase;1'
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
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Costo'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@idMon'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Credito'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Contado'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@porcGasto'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@porcDesc'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Tasa'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 266
    Top = 244
  end
  object rsMonedas: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select * from moneda order by Moneda'#13#10
    Parameters = <>
    Left = 368
    Top = 160
    object rsMonedasidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsMonedasMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsMonedasCursoLegal: TBooleanField
      FieldName = 'CursoLegal'
    end
    object rsMonedasUidMoneda: TGuidField
      FieldName = 'UidMoneda'
      FixedChar = True
      Size = 38
    end
  end
  object dsMoneda: TDataSource
    DataSet = rsMonedas
    Left = 452
    Top = 250
  end
  object cCambiarPrecio: TADOCommand
    CommandText = 'CambiarPrecioXMarca'
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
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 348
    Top = 110
  end
end

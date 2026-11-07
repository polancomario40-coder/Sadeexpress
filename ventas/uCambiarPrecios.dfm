inherited CambiarPrecios: TCambiarPrecios
  Left = 344
  Top = 118
  Caption = 'Cambiar precios'
  ClientHeight = 564
  ClientWidth = 676
  Color = clWhite
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton2: TcxButton [0]
    Left = 8
    Top = 532
    Width = 123
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Salir'
    TabOrder = 0
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxPageControl1: TcxPageControl [1]
    Left = 2
    Top = 4
    Width = 673
    Height = 523
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookAndFeel.NativeStyle = True
    TabOrder = 1
    ClientRectBottom = 519
    ClientRectLeft = 2
    ClientRectRight = 669
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cambio por grupo de productos'
      ImageIndex = 0
      DesignSize = (
        667
        497)
      object cxGrid1: TcxGrid
        Left = 3
        Top = 2
        Width = 529
        Height = 81
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsInventario
          DataController.KeyFieldNames = 'idInventario'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1idInventario: TcxGridDBColumn
            DataBinding.FieldName = 'idInventario'
            Options.Filtering = False
          end
          object cxGrid1DBTableView1Inventario: TcxGridDBColumn
            DataBinding.FieldName = 'Inventario'
            Options.Filtering = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxGrid2: TcxGrid
        Left = 3
        Top = 86
        Width = 529
        Height = 157
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsLinea
          DataController.KeyFieldNames = 'idLinea'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1idLinea: TcxGridDBColumn
            DataBinding.FieldName = 'idLinea'
            Options.Filtering = False
          end
          object cxGridDBTableView1Linea: TcxGridDBColumn
            DataBinding.FieldName = 'Linea'
            Options.Filtering = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 3
        Top = 246
        Width = 529
        Height = 249
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = DS
          DataController.KeyFieldNames = 'idGrupo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView2idGrupo: TcxGridDBColumn
            DataBinding.FieldName = 'idGrupo'
            Options.Filtering = False
          end
          object cxGridDBTableView2Grupo: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
            Options.Filtering = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxLabel1: TcxLabel
        Left = 536
        Top = 4
        Width = 77
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Variacion (+/-) '
      end
      object seVar: TcxSpinEdit
        Left = 536
        Top = 24
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        Properties.ImmediatePost = True
        Properties.ValueType = vtFloat
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cbCredito: TcxCheckBox
        Left = 536
        Top = 56
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        Caption = 'Precio a credito'
        Properties.ImmediatePost = True
        State = cbsChecked
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cbCont: TcxCheckBox
        Left = 536
        Top = 82
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        Caption = 'Precio a contado'
        Properties.ImmediatePost = True
        State = cbsChecked
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
      object cxButton1: TcxButton
        Left = 536
        Top = 141
        Width = 125
        Height = 43
        Anchors = [akTop, akRight]
        Caption = 'Aplicar cambio'
        TabOrder = 7
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
      object cbCambioPorc: TcxCheckBox
        Left = 536
        Top = 110
        Width = 135
        Height = 21
        Caption = 'Cambio porcentual?'
        State = cbsChecked
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 8
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Cambio por marca '
      ImageIndex = 1
      object Label1: TLabel
        Left = 14
        Top = 18
        Width = 99
        Height = 13
        Caption = 'Marca de productos:'
      end
      object luMarca: TcxLookupComboBox
        Left = 14
        Top = 36
        Width = 205
        Height = 21
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idMarca'
        Properties.ListColumns = <
          item
            FieldName = 'Marca'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsMarca
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxLabel2: TcxLabel
        Left = 14
        Top = 60
        Width = 133
        Height = 17
        Caption = '% de beneficio de contado'
      end
      object seBenContado: TcxSpinEdit
        Left = 14
        Top = 80
        Width = 121
        Height = 21
        Properties.ImmediatePost = True
        Properties.ValueType = vtFloat
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxButton3: TcxButton
        Left = 14
        Top = 160
        Width = 155
        Height = 45
        Caption = 'Aplicar cambio'
        TabOrder = 3
        OnClick = cxButton3Click
        LookAndFeel.NativeStyle = True
      end
      object cxLabel3: TcxLabel
        Left = 14
        Top = 106
        Width = 127
        Height = 17
        Caption = '% de beneficio de credito'
      end
      object seBenCredito: TcxSpinEdit
        Left = 14
        Top = 126
        Width = 121
        Height = 21
        Properties.ImmediatePost = True
        Properties.ValueType = vtFloat
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Listas de Precio'
      ImageIndex = 2
      DesignSize = (
        667
        497)
      object cxGrid4: TcxGrid
        Left = 3
        Top = 4
        Width = 514
        Height = 182
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataSource = dsListaPrecio
          DataController.KeyFieldNames = 'idListaPrecio'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1idListaPrecio: TcxGridDBColumn
            Caption = 'Lista de Precio'
            DataBinding.FieldName = 'idListaPrecio'
            Width = 80
          end
          object cxGrid1DBTableView1ListaPrecio: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'ListaPrecio'
            Width = 172
          end
          object cxGrid1DBTableView1idMoneda: TcxGridDBColumn
            Caption = 'Moneda'
            DataBinding.FieldName = 'idMoneda'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'idMoneda'
            Properties.ListColumns = <
              item
                FieldName = 'Moneda'
              end>
            Properties.ListSource = dm.dsMoneda
            Width = 66
          end
          object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Porc Contado'
            DataBinding.FieldName = 'ContadoPorc'
            Width = 94
          end
          object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
            Caption = 'Porc Credito'
            DataBinding.FieldName = 'CreditoPorc'
            Width = 81
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxGrid5: TcxGrid
        Left = 2
        Top = 192
        Width = 663
        Height = 299
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGrid2DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsListaPrecioDet
          DataController.KeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1idProducto: TcxGridDBColumn
            DataBinding.FieldName = 'idProducto'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
          end
          object cxGrid2DBTableView1PrecioContado: TcxGridDBColumn
            DataBinding.FieldName = 'PrecioContado'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 4
            Properties.DisplayFormat = '0.00##;(0.00##)'
            Properties.ValidateOnEnter = True
          end
          object cxGrid2DBTableView1PrecioCredito: TcxGridDBColumn
            DataBinding.FieldName = 'PrecioCredito'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 4
            Properties.DisplayFormat = '0.00##;(0.00##)'
            Properties.ValidateOnEnter = True
          end
          object cxGrid2DBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'idProducto'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'idProducto'
            Properties.ListColumns = <
              item
                FieldName = 'producto'
              end>
            Properties.ListSource = dsProductos
            Width = 242
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object cxLabel4: TcxLabel
        Left = 529
        Top = 4
        Width = 88
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Variacion (+/-) %'
      end
      object LPPorciento: TcxSpinEdit
        Left = 544
        Top = 21
        Width = 113
        Height = 21
        Anchors = [akTop, akRight]
        Properties.ImmediatePost = True
        Properties.ValueType = vtFloat
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object lpcredito: TcxCheckBox
        Left = 542
        Top = 70
        Width = 108
        Height = 21
        Anchors = [akTop, akRight]
        Caption = 'Precio a credito'
        Properties.ImmediatePost = True
        State = cbsChecked
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object lpcontado: TcxCheckBox
        Left = 542
        Top = 87
        Width = 108
        Height = 21
        Anchors = [akTop, akRight]
        Caption = 'Precio a contado'
        Properties.ImmediatePost = True
        State = cbsChecked
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxButton4: TcxButton
        Left = 532
        Top = 148
        Width = 123
        Height = 39
        Anchors = [akTop, akRight]
        Caption = 'Aplicar cambio'
        TabOrder = 6
        OnClick = cxButton4Click
        LookAndFeel.NativeStyle = True
      end
      object cxLabel5: TcxLabel
        Left = 527
        Top = 53
        Width = 95
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Aplicar variacion a:'
      end
      object lptodas: TcxCheckBox
        Left = 542
        Top = 104
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        Caption = 'Todas las listas'
        Properties.ImmediatePost = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 8
      end
    end
  end
  inherited DS: TwwDataSource
    DataSet = Grupo
    Left = 345
    Top = 201
  end
  object LineaAll: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from linea order by linea'
    MasterFields = 'idInventario'
    Parameters = <>
    Left = 482
    Top = 264
    object StringField1: TStringField
      DisplayLabel = 'Linea'
      DisplayWidth = 16
      FieldName = 'idLinea'
      Size = 16
    end
    object StringField2: TStringField
      DisplayWidth = 42
      FieldName = 'Linea'
      Size = 50
    end
    object StringField3: TStringField
      DisplayLabel = 'Inventario'
      DisplayWidth = 10
      FieldName = 'idInventario'
      Size = 16
    end
    object GuidField1: TGuidField
      DisplayWidth = 38
      FieldName = 'UidLinea'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
  object dsLineaAll: TDataSource
    DataSet = LineaAll
    Left = 360
    Top = 316
  end
  object Grupo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from grupo  where idLinea = :idLinea'#13#10'order by Grupo'
    DataSource = dsLinea
    MasterFields = 'idLinea'
    Parameters = <
      item
        Name = 'idLinea'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '11'
      end>
    Left = 380
    Top = 250
    object GrupoidGrupo: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 15
      FieldName = 'idGrupo'
      Size = 16
    end
    object GrupoGrupo: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 38
      FieldName = 'Grupo'
      Size = 50
    end
    object GrupoDescuento: TFloatField
      DisplayLabel = '% Desc'
      DisplayWidth = 6
      FieldName = 'Descuento'
    end
    object GrupoidLinea: TStringField
      DisplayLabel = 'Linea'
      DisplayWidth = 8
      FieldName = 'idLinea'
      Size = 16
    end
    object GrupoUidGrupo: TGuidField
      DisplayWidth = 38
      FieldName = 'UidGrupo'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
  object Linea: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select * from linea where idinventario = :idInventario'#13#10'order by' +
      ' linea'
    DataSource = dsInventario
    MasterFields = 'idInventario'
    Parameters = <
      item
        Name = 'idInventario'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '1'
      end>
    Left = 352
    Top = 82
    object LineaidLinea: TStringField
      DisplayLabel = 'Linea'
      DisplayWidth = 16
      FieldName = 'idLinea'
      Size = 16
    end
    object LineaLinea: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 42
      FieldName = 'Linea'
      Size = 50
    end
    object LineaidInventario: TStringField
      DisplayLabel = 'Inventario'
      DisplayWidth = 10
      FieldName = 'idInventario'
      Size = 16
    end
    object LineaUidLinea: TGuidField
      DisplayWidth = 38
      FieldName = 'UidLinea'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
  object dsLinea: TDataSource
    DataSet = Linea
    Left = 350
    Top = 138
  end
  object Inventario: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from inventario'#13#10'order by inventario'
    Parameters = <>
    Left = 410
    Top = 78
    object InventarioidInventario: TStringField
      DisplayLabel = 'Inventario'
      DisplayWidth = 16
      FieldName = 'idInventario'
      Size = 16
    end
    object InventarioInventario: TStringField
      DisplayWidth = 52
      FieldName = 'Inventario'
      Size = 50
    end
    object InventarioUidInventario: TGuidField
      DisplayWidth = 38
      FieldName = 'UidInventario'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
  object dsInventario: TDataSource
    DataSet = Inventario
    Left = 408
    Top = 132
  end
  object cAplicar: TADOCommand
    CommandText = 'svCambiarPrecios;1'
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
        Name = '@idGrupo'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 10
        Value = Null
      end
      item
        Name = '@variacion'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Contado'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Credito'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@esPorc'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 46
    Top = 204
  end
  object rsMarca: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select idMarca, Marca from Marca'#13#10'order by Marca'
    Parameters = <>
    Left = 154
    Top = 274
    object rsMarcaidMarca: TStringField
      FieldName = 'idMarca'
      Size = 16
    end
    object rsMarcaMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
  end
  object dsMarca: TDataSource
    DataSet = rsMarca
    Left = 286
    Top = 263
  end
  object cCambiarXMarca: TADOCommand
    CommandText = 'invCambiarPrecioMarca'
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
        Name = '@idMarca'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@porcCont'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Value = Null
      end
      item
        Name = '@porcCred'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Value = Null
      end>
    Left = 282
    Top = 151
  end
  object rsListaPrecio: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Select * from ListaPrecio order by idlistaprecio'
    Parameters = <>
    Left = 52
    Top = 82
    object rsListaPrecioidListaPrecio: TStringField
      DisplayWidth = 16
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object rsListaPrecioListaPrecio: TStringField
      DisplayWidth = 50
      FieldName = 'ListaPrecio'
      Size = 50
    end
    object rsListaPrecioidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsListaPrecioContadoPorc: TBCDField
      FieldName = 'ContadoPorc'
      Precision = 18
    end
    object rsListaPrecioCreditoPorc: TBCDField
      FieldName = 'CreditoPorc'
      Precision = 18
    end
  end
  object dsListaPrecio: TDataSource
    DataSet = rsListaPrecio
    Left = 44
    Top = 134
  end
  object rsListaPrecioDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Select newid() as id, * From ListaPrecioDet order by idproducto'
    DataSource = dsListaPrecio
    IndexFieldNames = 'idListaPrecio'
    MasterFields = 'idListaPrecio'
    Parameters = <>
    Left = 154
    Top = 94
    object rsListaPrecioDetid: TGuidField
      FieldName = 'id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object rsListaPrecioDetidProducto: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 20
      FieldName = 'idProducto'
      Size = 25
    end
    object rsListaPrecioDetPrecioContado: TBCDField
      DisplayWidth = 15
      FieldName = 'PrecioContado'
      DisplayFormat = '#,0.00##'
      Precision = 18
    end
    object rsListaPrecioDetPrecioCredito: TBCDField
      DisplayWidth = 14
      FieldName = 'PrecioCredito'
      DisplayFormat = '#,0.00##'
      Precision = 18
    end
    object rsListaPrecioDetidListaPrecio: TStringField
      DisplayWidth = 16
      FieldName = 'idListaPrecio'
      Visible = False
      Size = 16
    end
  end
  object dsListaPrecioDet: TDataSource
    DataSet = rsListaPrecioDet
    Left = 154
    Top = 150
  end
  object Productos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'Select '#13#10'  idProducto, '#13#10'  producto, '#13#10'  PrecioContado,'#13#10'  Preci' +
      'oCredito,'#13#10'  inactivo '#13#10'from '#13#10'  producto'
    Parameters = <>
    Left = 228
    Top = 106
  end
  object dsProductos: TDataSource
    DataSet = Productos
    Left = 228
    Top = 162
  end
  object ListaPrecioUpdate: TADOCommand
    CommandText = 'svListaprecioupdate;1'
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
        Name = '@idListaprecio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Contado'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Credito'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Porcentaje'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 46
    Top = 296
  end
end

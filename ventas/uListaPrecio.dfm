inherited ListaPrecio: TListaPrecio
  Left = 465
  Top = 193
  Caption = 'Listas de Precios'
  ClientHeight = 519
  ClientWidth = 753
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton [0]
    Left = 635
    Top = 394
    Width = 111
    Height = 32
    Anchors = [akRight, akBottom]
    Caption = 'Ver Producto'
    TabOrder = 0
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [1]
    Left = 635
    Top = 479
    Width = 111
    Height = 32
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 1
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 36
    Width = 753
    Height = 183
    Align = alTop
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsListaPrecio
      DataController.KeyFieldNames = 'idListaPrecio'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsData.Appending = True
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
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid [3]
    Left = 0
    Top = 258
    Width = 619
    Height = 260
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object cxGrid2DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsListaPrecioDet
      DataController.KeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsData.Appending = True
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
        Properties.OnButtonClick = cxGrid2DBTableView1idProductoPropertiesButtonClick
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
        DataBinding.FieldName = 'luProducto'
        Width = 242
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object cxButton5: TcxButton [4]
    Left = 635
    Top = 438
    Width = 111
    Height = 32
    Anchors = [akRight, akBottom]
    Caption = 'Exportar a Excel'
    TabOrder = 4
    OnClick = cxButton5Click
    LookAndFeel.NativeStyle = True
  end
  object DBNavigator1: TDBNavigator [5]
    Left = 0
    Top = 0
    Width = 753
    Height = 36
    DataSource = dsListaPrecio
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alTop
    TabOrder = 5
  end
  object DBNavigator2: TDBNavigator [6]
    Left = -2
    Top = 228
    Width = 621
    Height = 30
    DataSource = dsListaPrecioDet
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 6
  end
  object rsListaPrecio: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * from ListaPrecio order by idlistaprecio'
    Parameters = <>
    Left = 54
    Top = 124
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
  object rsListaPrecioDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforeInsert = rsListaPrecioDetBeforeInsert
    AfterPost = rsListaPrecioDetAfterPost
    OnNewRecord = rsListaPrecioDetNewRecord
    CommandText = 'Select newid() as id, * From ListaPrecioDet order by idproducto'
    DataSource = dsListaPrecio
    IndexFieldNames = 'idListaPrecio'
    MasterFields = 'idListaPrecio'
    Parameters = <>
    Left = 164
    Top = 122
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
    object rsListaPrecioDetluProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'luProducto'
      LookupDataSet = Productos
      LookupKeyFields = 'idProducto'
      LookupResultField = 'producto'
      KeyFields = 'idProducto'
      Lookup = True
    end
  end
  object dsListaPrecio: TDataSource
    AutoEdit = False
    DataSet = rsListaPrecio
    Left = 64
    Top = 72
  end
  object dsListaPrecioDet: TDataSource
    AutoEdit = False
    DataSet = rsListaPrecioDet
    Left = 168
    Top = 72
  end
  object Productos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'Select '#13#10'  idProducto, '#13#10'  producto, '#13#10'  PrecioContado,'#13#10'  Preci' +
      'oCredito,'#13#10'  inactivo '#13#10'from '#13#10'  producto'
    Parameters = <>
    Left = 208
    Top = 216
  end
  object dsProductos: TDataSource
    DataSet = Productos
    Left = 208
    Top = 272
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 374
    Top = 176
  end
end

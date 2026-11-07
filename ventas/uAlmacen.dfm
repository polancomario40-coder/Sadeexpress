inherited Almacen: TAlmacen
  Left = 389
  Top = 199
  Caption = 'Almacen'
  ClientHeight = 486
  ClientWidth = 692
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Inventarios: TPageControl
    Left = 8
    Top = 8
    Width = 673
    Height = 447
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Inventarios, Lineas y Grupos'
      DesignSize = (
        665
        419)
      object wwDBGrid1: TwwDBGrid
        Left = 8
        Top = 8
        Width = 651
        Height = 89
        DisableThemes = False
        Selected.Strings = (
          'idInventario'#9'16'#9'Inventario'
          'Inventario'#9'52'#9'Inventario')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight]
        DataSource = dsInventario
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object wwDBGrid2: TwwDBGrid
        Left = 8
        Top = 104
        Width = 654
        Height = 119
        DisableThemes = False
        Selected.Strings = (
          'idLinea'#9'16'#9'Linea'
          'Linea'#9'42'#9'Descripcion'#9'F'
          'idInventario'#9'10'#9'Inventario')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight]
        DataSource = dsLinea
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object wwDBGrid3: TwwDBGrid
        Left = 8
        Top = 228
        Width = 654
        Height = 99
        DisableThemes = False
        Selected.Strings = (
          'idGrupo'#9'15'#9'Grupo'
          'Grupo'#9'38'#9'Descripcion'
          'DescNivel1'#9'10'#9'% Desc 1'
          'DescNivel2'#9'10'#9'% Desc 2'
          'DescNivel3'#9'10'#9'% Desc 3'
          'Descuento'#9'7'#9'% Desc 4'
          'idLinea'#9'7'#9'Linea')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsrupo
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object cxGrid2: TcxGrid
        Left = 8
        Top = 331
        Width = 655
        Height = 85
        TabOrder = 3
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsDescuentoxCantidad
          DataController.KeyFieldNames = 'IdDescuentoXCantidad'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.Prior.Visible = False
          NavigatorButtons.Next.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Refresh.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1IdDescuentoXCantidad: TcxGridDBColumn
            DataBinding.FieldName = 'IdDescuentoXCantidad'
            Visible = False
          end
          object cxGridDBTableView1IdGrupo: TcxGridDBColumn
            DataBinding.FieldName = 'IdGrupo'
            Visible = False
          end
          object cxGridDBTableView1Desde: TcxGridDBColumn
            DataBinding.FieldName = 'Desde'
          end
          object cxGridDBTableView1Hasta: TcxGridDBColumn
            DataBinding.FieldName = 'Hasta'
          end
          object cxGridDBTableView1Descuento: TcxGridDBColumn
            DataBinding.FieldName = 'Descuento'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object Almacenes: TTabSheet
      Caption = 'Almacenes'
      ImageIndex = 1
      DesignSize = (
        665
        419)
      object cxGrid3: TcxGrid
        Left = 4
        Top = 3
        Width = 655
        Height = 406
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
          DataController.DataSource = dsAlmacen
          DataController.KeyFieldNames = 'idAlmacen'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsSelection.HideSelection = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Bands = <
            item
            end
            item
            end>
          object cxGrid3DBBandedTableView1idAlmacen: TcxGridDBBandedColumn
            DataBinding.FieldName = 'idAlmacen'
            Options.Filtering = False
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Almacen: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Almacen'
            Options.Filtering = False
            Width = 247
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Activo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Activo'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1ContadorEntradas: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ContadorEntradas'
            Options.Filtering = False
            Width = 112
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1ContadorSalidas: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ContadorSalidas'
            Options.Filtering = False
            Width = 112
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBBandedTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cuetas Contables de Almacen segun Lineas'
      ImageIndex = 2
      DesignSize = (
        665
        419)
      object cxGrid1: TcxGrid
        Left = 4
        Top = 6
        Width = 655
        Height = 403
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsAlmacenLineaCC
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.ColumnAutoWidth = True
          object cxGrid1DBTableView1idAlmacen: TcxGridDBColumn
            DataBinding.FieldName = 'idAlmacen'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'idAlmacen'
            Properties.ListColumns = <
              item
                FieldName = 'Almacen'
              end>
            Properties.ListSource = dsAlmacen
            Width = 142
          end
          object cxGrid1DBTableView1idLinea: TcxGridDBColumn
            DataBinding.FieldName = 'idLinea'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'idLinea'
            Properties.ListColumns = <
              item
                FieldName = 'Linea'
              end>
            Properties.ListSource = dsLineaAll
            Width = 201
          end
          object cxGrid1DBTableView1idCuenta: TcxGridDBColumn
            Caption = 'Cuenta Contable'
            DataBinding.FieldName = 'idCuenta'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGrid1DBTableView1idCuentaPropertiesButtonClick
            Width = 159
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 610
    Top = 458
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object Inventario: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from inventario'#13#10'order by inventario'
    Parameters = <>
    Left = 418
    Top = 126
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
    Left = 360
    Top = 130
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
    Left = 302
    Top = 130
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
    object GrupoDescNivel1: TFloatField
      DisplayLabel = '% Desc 1'
      DisplayWidth = 10
      FieldName = 'DescNivel1'
    end
    object GrupoDescNivel2: TFloatField
      DisplayLabel = '% Desc 2'
      DisplayWidth = 10
      FieldName = 'DescNivel2'
    end
    object GrupoDescNivel3: TFloatField
      DisplayLabel = '% Desc 3'
      DisplayWidth = 10
      FieldName = 'DescNivel3'
    end
    object GrupoDescuento: TFloatField
      DisplayLabel = '% Desc 4'
      DisplayWidth = 7
      FieldName = 'Descuento'
      OnValidate = GrupoDescuentoValidate
    end
    object GrupoidLinea: TStringField
      DisplayLabel = 'Linea'
      DisplayWidth = 7
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
  object dsInventario: TDataSource
    DataSet = Inventario
    Left = 416
    Top = 180
  end
  object dsLinea: TDataSource
    DataSet = Linea
    Left = 360
    Top = 186
  end
  object dsrupo: TDataSource
    DataSet = Grupo
    Left = 302
    Top = 186
  end
  object almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterPost = almacenAfterPost
    OnNewRecord = almacenNewRecord
    CommandText = 'Select * from almacen order by almacen'
    Parameters = <>
    Left = 230
    Top = 132
    object almacenidAlmacen: TStringField
      DisplayLabel = 'Almacen'
      DisplayWidth = 14
      FieldName = 'idAlmacen'
      OnValidate = almacenidAlmacenValidate
      Size = 16
    end
    object almacenAlmacen: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 46
      FieldName = 'Almacen'
      Size = 50
    end
    object almacenActivo: TBooleanField
      DisplayWidth = 5
      FieldName = 'Activo'
    end
    object almacenContadorEntradas: TStringField
      DisplayWidth = 16
      FieldName = 'ContadorEntradas'
      Size = 16
    end
    object almacenContadorSalidas: TStringField
      DisplayWidth = 16
      FieldName = 'ContadorSalidas'
      Size = 16
    end
  end
  object dsAlmacen: TDataSource
    DataSet = almacen
    Left = 228
    Top = 180
  end
  object AlmacenLineaCC: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * from invAlmacenLineaCC order by idAlmacen, idLinea'
    Parameters = <>
    Left = 142
    Top = 132
    object AlmacenLineaCCidAlmacen: TStringField
      DisplayLabel = 'Almacen'
      DisplayWidth = 18
      FieldName = 'idAlmacen'
      Size = 16
    end
    object AlmacenLineaCCidLinea: TStringField
      DisplayLabel = 'Linea de Productos'
      DisplayWidth = 19
      FieldName = 'idLinea'
      Size = 16
    end
    object AlmacenLineaCCidCuenta: TStringField
      DisplayLabel = 'Cuenta Contab. de Almacen'
      DisplayWidth = 25
      FieldName = 'idCuenta'
      OnValidate = AlmacenLineaCCidCuentaValidate
      Size = 16
    end
  end
  object dsAlmacenLineaCC: TDataSource
    DataSet = AlmacenLineaCC
    Left = 142
    Top = 184
  end
  object LineaAll: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from linea order by linea'
    MasterFields = 'idInventario'
    Parameters = <>
    Left = 56
    Top = 140
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
    Left = 46
    Top = 210
  end
  object qryDescuentoXCantidad: TADOQuery
    Connection = dm.Coneccion
    OnNewRecord = qryDescuentoXCantidadNewRecord
    DataSource = dsrupo
    Parameters = <
      item
        Name = 'IdGrupo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  svDescuentoxCantidad'
      'WHERE'
      '  IdGrupo = :IdGrupo'
      'Order By'
      '  Descuento')
    Left = 322
    Top = 312
    object qryDescuentoXCantidadIdDescuentoXCantidad: TGuidField
      FieldName = 'IdDescuentoXCantidad'
      FixedChar = True
      Size = 38
    end
    object qryDescuentoXCantidadIdGrupo: TStringField
      FieldName = 'IdGrupo'
      Size = 16
    end
    object qryDescuentoXCantidadDesde: TBCDField
      FieldName = 'Desde'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object qryDescuentoXCantidadHasta: TBCDField
      FieldName = 'Hasta'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object qryDescuentoXCantidadDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '#,0.00%'
      Precision = 18
      Size = 2
    end
  end
  object dsDescuentoxCantidad: TDataSource
    DataSet = qryDescuentoXCantidad
    Left = 184
    Top = 292
  end
  object InsertarContador: TADOCommand
    CommandText = 'svInsertarContadorAlmacen;1'
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
        Name = '@ContadorSalidas'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@ContadorEntradas'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 532
    Top = 286
  end
end

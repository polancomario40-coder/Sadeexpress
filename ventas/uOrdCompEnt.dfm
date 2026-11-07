inherited OrdCompEnt: TOrdCompEnt
  Left = 693
  Top = 156
  Caption = 'Entregas de Pedidos'
  ClientHeight = 510
  ClientWidth = 907
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 1
    Top = 2
    Width = 901
    Height = 504
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = 'Pedidos Pendientes por Despachar'
      DesignSize = (
        893
        476)
      object cxButton1: TcxButton
        Left = 196
        Top = 8
        Width = 83
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Buscar'
        TabOrder = 0
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
      object status: TcxLookupComboBox
        Left = 50
        Top = 11
        Width = 139
        Height = 21
        Anchors = [akTop, akRight]
        Properties.KeyFieldNames = 'idOrdCompStatus'
        Properties.ListColumns = <
          item
            FieldName = 'idOrdCompStatus'
          end>
        Properties.ListSource = dsOrdCompStatus
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxLabel1: TcxLabel
        Left = 8
        Top = 13
        Width = 40
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Status :'
      end
      object cxButton2: TcxButton
        Left = 288
        Top = 8
        Width = 103
        Height = 28
        Action = aNuevo
        Anchors = [akTop, akRight]
        TabOrder = 3
        LookAndFeel.NativeStyle = True
      end
      object cxGrid1: TcxGrid
        Left = 2
        Top = 41
        Width = 888
        Height = 311
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        LookAndFeel.Kind = lfUltraFlat
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = ds
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'idOrdComp'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          Filtering.MaxDropDownCount = 12
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGrid1DBTableView1idOrdComp: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdComp'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
            Width = 97
          end
          object cxGrid1DBTableView1OrdComp: TcxGridDBColumn
            DataBinding.FieldName = 'OrdComp'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 16
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 57
          end
          object cxGrid1DBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DateButtons = [btnClear, btnToday]
            Properties.DateOnError = deToday
            Properties.InputKind = ikRegExpr
            Options.Filtering = False
            Width = 65
          end
          object cxGrid1DBTableView1Cliente: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 50
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 101
          end
          object cxGrid1DBTableView1Sector: TcxGridDBColumn
            DataBinding.FieldName = 'Sector'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 48
          end
          object cxGrid1DBTableView1Ciudad: TcxGridDBColumn
            DataBinding.FieldName = 'Ciudad'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 47
          end
          object cxGrid1DBTableView1Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 71
          end
          object cxGrid1DBTableView1Usuario: TcxGridDBColumn
            DataBinding.FieldName = 'Usuario'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 30
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 45
          end
          object cxGrid1DBTableView1Observacion: TcxGridDBColumn
            DataBinding.FieldName = 'Observacion'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 200
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 73
          end
          object cxGrid1DBTableView1idCondicion: TcxGridDBColumn
            DataBinding.FieldName = 'idCondicion'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 16
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 57
          end
          object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'OrdCompStatus'
            Width = 127
          end
          object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Facturable'
            Width = 68
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 359
        Width = 891
        Height = 151
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 5
        LookAndFeel.Kind = lfUltraFlat
        object cxGrid2DBTableView1: TcxGridDBTableView
          DataController.DataSource = ds2
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'idOrdCompDet'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid2DBTableView1Cantidad
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1Entregado
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1Pendiente
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          Filtering.MaxDropDownCount = 12
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          Preview.Visible = True
          object cxGrid2DBTableView1idOrdCompDet: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdCompDet'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
            Width = 855
          end
          object cxGrid2DBTableView1idOrdComp: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdComp'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
            Width = 855
          end
          object cxGrid2DBTableView1CodProd: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'idProducto'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 95
          end
          object cxGrid2DBTableView1Producto: TcxGridDBColumn
            DataBinding.FieldName = 'Producto'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 120
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 279
          end
          object cxGrid2DBTableView1Unidad: TcxGridDBColumn
            DataBinding.FieldName = 'Unidad'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 66
          end
          object cxGrid2DBTableView1Cantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 70
          end
          object cxGrid2DBTableView1Entregado: TcxGridDBColumn
            DataBinding.FieldName = 'Entregado'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 77
          end
          object cxGrid2DBTableView1Pendiente: TcxGridDBColumn
            DataBinding.FieldName = 'Pendiente'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 79
          end
          object cxGrid2DBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Ubicacion'
            DataBinding.FieldName = 'ubicacion'
            Width = 223
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object cxButton7: TcxButton
        Left = 396
        Top = 8
        Width = 118
        Height = 28
        Action = aProductoList
        Anchors = [akTop, akRight]
        TabOrder = 6
        LookAndFeel.NativeStyle = True
      end
      object statuspedido: TcxLookupComboBox
        Left = 748
        Top = 12
        Width = 139
        Height = 21
        Anchors = [akTop, akRight]
        Properties.KeyFieldNames = 'idOrdCompStatus'
        Properties.ListColumns = <
          item
            FieldName = 'idOrdCompStatus'
          end>
        Properties.ListSource = dsOrdCompStatus
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 7
      end
      object cxButton13: TcxButton
        Left = 610
        Top = 8
        Width = 135
        Height = 28
        Action = aPedidoStatus
        Anchors = [akTop, akRight]
        TabOrder = 8
        LookAndFeel.NativeStyle = True
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Despachos de Pedidos  (Status)'
      ImageIndex = 2
      OnShow = TabSheet3Show
      DesignSize = (
        893
        476)
      object cxButton4: TcxButton
        Left = 792
        Top = 60
        Width = 98
        Height = 32
        Action = aMostrar
        Anchors = [akTop, akRight]
        Caption = 'Mostrar Desp.'
        TabOrder = 0
        LookAndFeel.NativeStyle = True
      end
      object cxGrid3: TcxGrid
        Left = 1
        Top = 0
        Width = 780
        Height = 267
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        object cxGrid3DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsEntregas
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'idOrdCompEnt'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          Filtering.MaxDropDownCount = 12
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGrid3DBTableView1idOrdCompEnt: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdCompEnt'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
            Width = 297
          end
          object cxGrid3DBTableView1OrdCompEnt: TcxGridDBColumn
            DataBinding.FieldName = 'OrdCompEnt'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 16
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
            Width = 127
          end
          object cxGrid3DBTableView1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            Width = 69
          end
          object cxGrid3DBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DateButtons = [btnClear, btnToday]
            Properties.DateOnError = deToday
            Properties.InputKind = ikRegExpr
            Options.Filtering = False
            Width = 70
          end
          object cxGrid3DBTableView1Hora: TcxGridDBColumn
            DataBinding.FieldName = 'Hora'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DateButtons = [btnClear, btnToday]
            Properties.DateOnError = deToday
            Properties.InputKind = ikRegExpr
            Properties.Kind = ckDateTime
            Options.Filtering = False
            Width = 60
          end
          object cxGrid3DBTableView1Cliente: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            Width = 158
          end
          object cxGrid3DBTableView1idOrdComp: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'idOrdComp'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
            Width = 297
          end
          object cxGrid3DBTableView1OrdComp: TcxGridDBColumn
            DataBinding.FieldName = 'OrdComp'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 16
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 78
          end
          object cxGrid3DBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Factura'
            DataBinding.FieldName = 'factura'
            Options.Filtering = False
            Width = 71
          end
          object cxGrid3DBTableView1DBColumn2: TcxGridDBColumn
            Caption = 'Salida Alm.'
            DataBinding.FieldName = 'promov'
            Options.Filtering = False
            Width = 73
          end
          object cxGrid3DBTableView1DBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Empleado'
            Width = 87
          end
          object cxGrid3DBTableView1Usuario: TcxGridDBColumn
            DataBinding.FieldName = 'Usuario'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 30
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 91
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 290
        Width = 889
        Height = 185
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 2
        LookAndFeel.Kind = lfUltraFlat
        object cxGrid4DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsEntregasDet
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'idOrdCompEntDet'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          Filtering.MaxDropDownCount = 12
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          Preview.Visible = True
          object cxGrid4DBTableView1idOrdCompEntDet: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdCompEntDet'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
          end
          object cxGrid4DBTableView1idOrdCompEnt: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdCompEnt'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
          end
          object cxGrid4DBTableView1idOrdCompDet: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdCompDet'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
          end
          object cxGrid4DBTableView1idProducto: TcxGridDBColumn
            DataBinding.FieldName = 'idProducto'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 25
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 109
          end
          object cxGrid4DBTableView1Producto: TcxGridDBColumn
            DataBinding.FieldName = 'Producto'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 120
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 434
          end
          object cxGrid4DBTableView1Pedido: TcxGridDBColumn
            DataBinding.FieldName = 'Pedido'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 72
          end
          object cxGrid4DBTableView1Despachado: TcxGridDBColumn
            DataBinding.FieldName = 'Despachado'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 74
          end
          object cxGrid4DBTableView1Pendiente: TcxGridDBColumn
            DataBinding.FieldName = 'Pendiente'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Filtering = False
            Width = 72
          end
          object cxGrid4DBTableView1Linea: TcxGridDBColumn
            DataBinding.FieldName = 'Linea'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            Options.Filtering = False
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBTableView1
        end
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 792
        Top = 28
        Width = 98
        Height = 28
        Anchors = [akTop, akRight]
        DataBinding.DataField = 'OrdComp'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 3
      end
      object cxButton8: TcxButton
        Left = 792
        Top = 172
        Width = 98
        Height = 30
        Action = aVerSalida
        Anchors = [akTop, akRight]
        TabOrder = 4
        TabStop = False
        LookAndFeel.NativeStyle = True
      end
      object cxButton11: TcxButton
        Left = 792
        Top = 204
        Width = 98
        Height = 30
        Action = aVerFactura
        Anchors = [akTop, akRight]
        TabOrder = 5
        TabStop = False
        LookAndFeel.NativeStyle = True
      end
      object cball: TcxCheckBox
        Left = 792
        Top = 2
        Width = 98
        Height = 21
        Anchors = [akTop, akRight]
        Caption = 'Ver todas '
        Properties.ImmediatePost = True
        Properties.OnChange = cballPropertiesChange
        TabOrder = 6
      end
      object cxButton9: TcxButton
        Left = 792
        Top = 104
        Width = 98
        Height = 32
        Action = aEnviado
        Anchors = [akTop, akRight]
        TabOrder = 7
        LookAndFeel.NativeStyle = True
      end
      object cxButton10: TcxButton
        Left = 792
        Top = 138
        Width = 98
        Height = 32
        Action = aCompletado
        Anchors = [akTop, akRight]
        TabOrder = 8
        LookAndFeel.NativeStyle = True
      end
      object cxButton12: TcxButton
        Left = 793
        Top = 253
        Width = 98
        Height = 30
        Action = aListaDespachos
        Anchors = [akTop, akRight]
        Caption = 'Lista de Desp.'
        TabOrder = 9
        TabStop = False
        LookAndFeel.NativeStyle = True
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 82
        Top = 268
        Width = 157
        Height = 21
        Anchors = [akLeft, akBottom]
        DataBinding.DataField = 'FechaEnviado'
        DataBinding.DataSource = dsEntregas
        Properties.ReadOnly = True
        TabOrder = 10
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 378
        Top = 268
        Width = 121
        Height = 21
        Anchors = [akLeft, akBottom]
        DataBinding.DataField = 'FechaCompletado'
        DataBinding.DataSource = dsEntregas
        Properties.ReadOnly = True
        TabOrder = 11
      end
      object cxLabel2: TcxLabel
        Left = 2
        Top = 269
        Width = 71
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Salida / Envio'
      end
      object cxLabel3: TcxLabel
        Left = 256
        Top = 271
        Width = 119
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Receibido / Completado'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Nuevo Despacho'
      ImageIndex = 1
      OnEnter = TabSheet2Enter
      DesignSize = (
        893
        476)
      object Label1: TLabel
        Left = 752
        Top = 114
        Width = 30
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Fecha'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 752
        Top = 156
        Width = 23
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Hora'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 752
        Top = 236
        Width = 36
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Usuario'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 752
        Top = 197
        Width = 44
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'OrdComp'
        FocusControl = DBEdit5
      end
      object Label4: TLabel
        Left = 468
        Top = 5
        Width = 87
        Height = 13
        Caption = 'Lectura de Codigo'
      end
      object Label7: TLabel
        Left = 750
        Top = 52
        Width = 71
        Height = 20
        Anchors = [akTop, akRight]
        Caption = 'Pedido : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 8
        Top = 26
        Width = 41
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Almacen'
      end
      object Label8: TLabel
        Left = 404
        Top = 5
        Width = 42
        Height = 13
        Caption = 'Cantidad'
      end
      object Label6: TLabel
        Left = 752
        Top = 278
        Width = 104
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Responsable / Chofer'
        FocusControl = DBEdit3
      end
      object cxButton3: TcxButton
        Left = 767
        Top = 406
        Width = 118
        Height = 30
        Anchors = [akRight, akBottom]
        Caption = 'Guardar / Procesar'
        TabOrder = 3
        TabStop = False
        OnClick = cxButton3Click
        LookAndFeel.NativeStyle = True
      end
      object DBEdit1: TDBEdit
        Left = 752
        Top = 128
        Width = 123
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        DataField = 'Fecha'
        DataSource = DsEnt
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 752
        Top = 170
        Width = 125
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        DataField = 'Hora'
        DataSource = DsEnt
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit3: TDBEdit
        Left = 752
        Top = 250
        Width = 125
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        DataField = 'Usuario'
        DataSource = DsEnt
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 752
        Top = 211
        Width = 125
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        DataField = 'OrdComp'
        DataSource = DsEnt
        ReadOnly = True
        TabOrder = 7
      end
      object cxButton5: TcxButton
        Left = 652
        Top = 18
        Width = 87
        Height = 31
        Caption = 'Aceptar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        TabStop = False
        OnClick = cxButton5Click
        LookAndFeel.NativeStyle = True
      end
      object codigo: TcxTextEdit
        Left = 468
        Top = 17
        Width = 175
        Height = 32
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        TabOrder = 2
        OnKeyDown = codigoKeyDown
      end
      object cxButton6: TcxButton
        Left = 767
        Top = 442
        Width = 118
        Height = 30
        Anchors = [akRight, akBottom]
        Cancel = True
        Caption = 'Cancelar'
        TabOrder = 9
        TabStop = False
        OnClick = cxButton6Click
        LookAndFeel.NativeStyle = True
      end
      object cxGrid5: TcxGrid
        Left = 6
        Top = 54
        Width = 733
        Height = 421
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 10
        TabStop = False
        LookAndFeel.Kind = lfUltraFlat
        object cxGrid5DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsentdet
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'idOrdCompEntDet'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          Filtering.MaxDropDownCount = 12
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          Preview.Visible = True
          object cxGrid5DBTableView1idOrdCompEntDet: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdCompEntDet'
            Visible = False
          end
          object cxGrid5DBTableView1idOrdCompEnt: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdCompEnt'
            Visible = False
          end
          object cxGrid5DBTableView1idOrdCompDet: TcxGridDBColumn
            DataBinding.FieldName = 'idOrdCompDet'
            Visible = False
          end
          object cxGrid5DBTableView1idProducto: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'idProducto'
            Width = 87
          end
          object cxGrid5DBTableView1Producto: TcxGridDBColumn
            DataBinding.FieldName = 'Producto'
            Width = 294
          end
          object cxGrid5DBTableView1Pedido: TcxGridDBColumn
            DataBinding.FieldName = 'Pedido'
            Width = 76
          end
          object cxGrid5DBTableView1Despachado: TcxGridDBColumn
            DataBinding.FieldName = 'Despachado'
            Width = 74
          end
          object cxGrid5DBTableView1Pendiente: TcxGridDBColumn
            DataBinding.FieldName = 'Pendiente'
            Width = 74
          end
          object cxGrid5DBTableView1Linea: TcxGridDBColumn
            DataBinding.FieldName = 'Linea'
            Visible = False
          end
        end
        object cxGrid5Level1: TcxGridLevel
          GridView = cxGrid5DBTableView1
        end
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 752
        Top = 70
        Width = 125
        Height = 28
        TabStop = False
        Anchors = [akTop, akRight]
        DataBinding.DataField = 'OrdComp'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 11
      end
      object lalmacen: TdxDBLookupEdit
        Left = 56
        Top = 22
        Width = 321
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
        Anchors = [akTop, akRight]
        DataField = 'idAlmacen'
        DataSource = DsEnt
        StyleController = dm.dxEstilo
        ListFieldName = 'Almacen'
        KeyFieldName = 'idAlmacen'
        ListSource = dsAlmacen
        LookupKeyValue = Null
      end
      object CANT: TcxTextEdit
        Left = 404
        Top = 17
        Width = 51
        Height = 32
        TabStop = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        TabOrder = 1
        Text = '1'
        OnKeyDown = CANTKeyDown
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 752
        Top = 290
        Width = 129
        Height = 21
        DataBinding.DataField = 'idEmpleado'
        DataBinding.DataSource = DsEnt
        Properties.KeyFieldNames = 'idEmpleado'
        Properties.ListColumns = <
          item
            FieldName = 'Empleado'
          end>
        Properties.ListSource = dsEmpleados
        TabOrder = 12
      end
    end
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = RSAfterScroll
    CommandText = 'svOrdCompPendiente;1'
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
        Name = '@idOrdCompStatus'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 434
    Top = 112
    object RSidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object RSOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object RSSector: TStringField
      FieldName = 'Sector'
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSTelefono: TStringField
      FieldName = 'Telefono'
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object RSidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object RSOrdCompStatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'OrdCompStatus'
      Size = 50
    end
    object RSFacturable: TBooleanField
      FieldName = 'Facturable'
    end
  end
  object ds: TDataSource
    DataSet = RS
    Left = 528
    Top = 120
  end
  object RSDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'rsOrdCompDetalle;1'
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
        Name = '@idOrdComp'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 434
    Top = 170
    object RSDetidOrdCompDet: TGuidField
      FieldName = 'idOrdCompDet'
      FixedChar = True
      Size = 38
    end
    object RSDetidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object RSDetidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object RSDetProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object RSDetCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object RSDetPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
      Size = 5
    end
    object RSDetidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object RSDetDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 2
    end
    object RSDetItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object RSDetLineTotal: TBCDField
      FieldName = 'LineTotal'
      Precision = 18
      Size = 2
    end
    object RSDetLinea: TIntegerField
      FieldName = 'Linea'
    end
    object RSDetEntregado: TFloatField
      FieldName = 'Entregado'
      ReadOnly = True
    end
    object RSDetPendiente: TFloatField
      FieldName = 'Pendiente'
      ReadOnly = True
    end
    object RSDetubicacion: TStringField
      FieldName = 'ubicacion'
      Size = 50
    end
  end
  object ds2: TDataSource
    DataSet = RSDet
    Left = 530
    Top = 176
  end
  object OrdCompStatus: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'Select idOrdCompStatus from OrdCompStatus order by idOrdCompStat' +
      'us'
    Parameters = <>
    Left = 436
    Top = 228
    object OrdCompStatusidOrdCompStatus: TStringField
      FieldName = 'idOrdCompStatus'
      Size = 16
    end
  end
  object dsOrdCompStatus: TDataSource
    DataSet = OrdCompStatus
    Left = 532
    Top = 230
  end
  object Entregas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = EntregasAfterScroll
    CommandText = 'svOrdCompEntList;1'
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
        Name = '@idOrdComp'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 256
    Top = 110
    object EntregasidOrdCompEnt: TGuidField
      FieldName = 'idOrdCompEnt'
      FixedChar = True
      Size = 38
    end
    object EntregasOrdCompEnt: TStringField
      FieldName = 'OrdCompEnt'
      Size = 16
    end
    object EntregasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object EntregasHora: TDateTimeField
      FieldName = 'Hora'
    end
    object EntregasUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object EntregasidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object EntregasOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object EntregasidProMov: TGuidField
      FieldName = 'idProMov'
      FixedChar = True
      Size = 38
    end
    object EntregasidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object EntregasidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object EntregasCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object Entregasfactura: TStringField
      FieldName = 'factura'
      Size = 16
    end
    object Entregaspromov: TStringField
      FieldName = 'promov'
      Size = 16
    end
    object EntregasStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
    object EntregasidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object EntregasEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object EntregasidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object EntregasCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object EntregasFechaEnviado: TDateTimeField
      FieldName = 'FechaEnviado'
    end
    object EntregasFechaCompletado: TDateTimeField
      FieldName = 'FechaCompletado'
    end
  end
  object dsEntregas: TDataSource
    DataSet = Entregas
    Left = 346
    Top = 110
  end
  object EntregasDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svOrdCompEntDet;1'
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
        Name = '@idOrdCompEnt'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 256
    Top = 166
    object EntregasDetidOrdCompEntDet: TGuidField
      FieldName = 'idOrdCompEntDet'
      FixedChar = True
      Size = 38
    end
    object EntregasDetidOrdCompEnt: TGuidField
      FieldName = 'idOrdCompEnt'
      FixedChar = True
      Size = 38
    end
    object EntregasDetidOrdCompDet: TGuidField
      FieldName = 'idOrdCompDet'
      FixedChar = True
      Size = 38
    end
    object EntregasDetidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object EntregasDetProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object EntregasDetPedido: TFloatField
      FieldName = 'Pedido'
    end
    object EntregasDetDespachado: TFloatField
      FieldName = 'Despachado'
    end
    object EntregasDetPendiente: TFloatField
      FieldName = 'Pendiente'
    end
    object EntregasDetLinea: TIntegerField
      FieldName = 'Linea'
    end
  end
  object dsEntregasDet: TDataSource
    DataSet = EntregasDet
    Left = 348
    Top = 160
  end
  object Ent: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnNewRecord = pwRecord
    CommandText = 'svOrdCompEnt;1'
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
        Name = '@idOrdComp'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 112
    Top = 110
    object EntidOrdCompEnt: TGuidField
      FieldName = 'idOrdCompEnt'
      FixedChar = True
      Size = 38
    end
    object EntOrdCompEnt: TStringField
      FieldName = 'OrdCompEnt'
      Size = 16
    end
    object EntFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object EntHora: TDateTimeField
      FieldName = 'Hora'
    end
    object EntUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object EntidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object EntOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object EntidProMov: TGuidField
      FieldName = 'idProMov'
      FixedChar = True
      Size = 38
    end
    object EntidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object EntidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object EntCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object EntStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
    object Entfactura: TStringField
      FieldName = 'factura'
      Size = 16
    end
    object Entpromov: TStringField
      FieldName = 'promov'
      Size = 16
    end
    object EntidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
  end
  object EntDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'svOrdCompEntDet;1'
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
        Name = '@idOrdCompEnt'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 112
    Top = 162
    object EntDetidOrdCompEntDet: TGuidField
      FieldName = 'idOrdCompEntDet'
      FixedChar = True
      Size = 38
    end
    object EntDetidOrdCompEnt: TGuidField
      FieldName = 'idOrdCompEnt'
      FixedChar = True
      Size = 38
    end
    object EntDetidOrdCompDet: TGuidField
      FieldName = 'idOrdCompDet'
      FixedChar = True
      Size = 38
    end
    object EntDetidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object EntDetProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object EntDetPedido: TFloatField
      FieldName = 'Pedido'
    end
    object EntDetDespachado: TFloatField
      FieldName = 'Despachado'
    end
    object EntDetPendiente: TFloatField
      FieldName = 'Pendiente'
    end
    object EntDetLinea: TIntegerField
      FieldName = 'Linea'
    end
  end
  object dsentdet: TDataSource
    DataSet = EntDet
    Left = 172
    Top = 164
  end
  object DsEnt: TDataSource
    DataSet = Ent
    Left = 170
    Top = 106
  end
  object Almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Almacenes;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 46
    Top = 104
  end
  object dsAlmacen: TDataSource
    DataSet = Almacen
    Left = 48
    Top = 168
  end
  object OrdCompEnt2ProMov: TADOCommand
    CommandText = 'svOrdCompEnt2ProMov;1'
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
        Name = '@idOrdCompEnt'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 49
    Top = 222
  end
  object ProductoAct: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'ProductoAct;1'
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
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Lista'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idAlmacen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 255
    Top = 216
    object ProductoActidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object ProductoActProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object ProductoActMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object ProductoActReorden: TFloatField
      FieldName = 'Reorden'
    end
    object ProductoActAutoDescuento: TBooleanField
      FieldName = 'AutoDescuento'
    end
    object ProductoActCambiarPrecio: TBooleanField
      FieldName = 'CambiarPrecio'
    end
    object ProductoActExistencia: TFloatField
      FieldName = 'Existencia'
      ReadOnly = True
    end
    object ProductoActCostoPromedio: TFloatField
      FieldName = 'CostoPromedio'
      ReadOnly = True
    end
    object ProductoActPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object ProductoActPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object ProductoActInactivo: TBooleanField
      FieldName = 'Inactivo'
    end
    object ProductoActporciento: TFloatField
      FieldName = 'porciento'
    end
    object ProductoActidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object ProductoActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object ProductoActExistenciaNeg: TBooleanField
      FieldName = 'ExistenciaNeg'
    end
    object ProductoActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      ReadOnly = True
      Size = 16
    end
    object ProductoActidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object ProductoActCalcExistencia: TBooleanField
      FieldName = 'CalcExistencia'
    end
    object ProductoActidMoneda: TIntegerField
      FieldName = 'idMoneda'
      ReadOnly = True
    end
  end
  object SetStatus: TADOCommand
    CommandText = 'svOrdCompSetStatus;1'
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
        Name = '@idOrdCompEnt'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@status'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 345
    Top = 216
  end
  object Acciones: TActionManager
    Left = 403
    Top = 300
    StyleName = 'XP Style'
    object aNuevo: TAction
      Caption = 'Nuevo Despacho'
      OnExecute = aNuevoExecute
    end
    object aEnviado: TAction
      Caption = 'Enviado'
      OnExecute = aEnviadoExecute
    end
    object aCompletado: TAction
      Caption = 'Completado'
      OnExecute = aCompletadoExecute
    end
    object aVerFactura: TAction
      Caption = 'Ver Factura'
      OnExecute = aVerFacturaExecute
    end
    object aVerSalida: TAction
      Caption = 'Ver Salida Alm.'
      OnExecute = aVerSalidaExecute
    end
    object aMostrar: TAction
      Caption = 'Mostrar Despachos'
      OnExecute = aMostrarExecute
    end
    object ProductoList: TAction
      Caption = 'ProductoList'
      OnExecute = ProductoListExecute
    end
    object aProductoList: TAction
      Caption = 'Lista de Productos'
      OnExecute = aProductoListExecute
    end
    object aListaDespachos: TAction
      Caption = 'Lista de Despachos'
      OnExecute = aListaDespachosExecute
    end
    object aPedidoStatus: TAction
      Caption = 'Cambiar Status al Pedido'
      OnExecute = aPedidoStatusExecute
    end
  end
  object Empleados: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select idEmpleado, Empleado from svempleado order  by empleado'
    Parameters = <>
    Left = 69
    Top = 302
    object EmpleadosidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object EmpleadosEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
  end
  object dsEmpleados: TDataSource
    DataSet = Empleados
    Left = 139
    Top = 304
  end
  object plProductoList: TppDBPipeline
    DataSource = ds2
    UserName = 'plProductoList'
    Left = 497
    Top = 298
    object plProductoListppField1: TppField
      FieldAlias = 'idOrdCompDet'
      FieldName = 'idOrdCompDet'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plProductoListppField2: TppField
      FieldAlias = 'idOrdComp'
      FieldName = 'idOrdComp'
      FieldLength = 38
      DisplayWidth = 38
      Position = 1
    end
    object plProductoListppField3: TppField
      FieldAlias = 'idProducto'
      FieldName = 'idProducto'
      FieldLength = 25
      DisplayWidth = 25
      Position = 2
      SelectOrder = 0
    end
    object plProductoListppField4: TppField
      FieldAlias = 'Producto'
      FieldName = 'Producto'
      FieldLength = 120
      DisplayWidth = 120
      Position = 3
      SelectOrder = 1
    end
    object plProductoListppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plProductoListppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Precio'
      FieldName = 'Precio'
      FieldLength = 5
      DataType = dtDouble
      DisplayWidth = 20
      Position = 5
    end
    object plProductoListppField7: TppField
      FieldAlias = 'idUnidad'
      FieldName = 'idUnidad'
      FieldLength = 16
      DisplayWidth = 16
      Position = 6
    end
    object plProductoListppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object plProductoListppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Itbis'
      FieldName = 'Itbis'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object plProductoListppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LineTotal'
      FieldName = 'LineTotal'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object plProductoListppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Linea'
      FieldName = 'Linea'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object plProductoListppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Entregado'
      FieldName = 'Entregado'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object plProductoListppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pendiente'
      FieldName = 'Pendiente'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
      SelectOrder = 2
    end
    object plProductoListppField14: TppField
      FieldAlias = 'ubicacion'
      FieldName = 'ubicacion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
      SelectOrder = 3
    end
  end
  object RptProductoList: TppReport
    AutoStop = False
    DataPipeline = plProductoList
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 589
    Top = 296
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plProductoList'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Listado de Productos Pendientes '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 115888
        BandType = 1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 150548
        mmTop = 9525
        mmWidth = 52388
        BandType = 1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'OrdComp'
        DataPipeline = plOrdCompEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOrdCompEnt'
        mmHeight = 7673
        mmLeft = 161396
        mmTop = 1058
        mmWidth = 41010
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 136790
        mmTop = 1058
        mmWidth = 24077
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5292
        mmWidth = 200555
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4572
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4572
        mmLeft = 26723
        mmTop = 1323
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 125148
        mmTop = 1323
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Ubicacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4572
        mmLeft = 146579
        mmTop = 1323
        mmWidth = 55563
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'idProducto'
        DataPipeline = plProductoList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plProductoList'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 529
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Pendiente'
        DataPipeline = plProductoList
        DisplayFormat = '#,0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plProductoList'
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 529
        mmWidth = 18785
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Producto'
        DataPipeline = plProductoList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plProductoList'
        mmHeight = 4233
        mmLeft = 27252
        mmTop = 529
        mmWidth = 96044
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'ubicacion'
        DataPipeline = plProductoList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plProductoList'
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 529
        mmWidth = 54504
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 166688
        mmTop = 1323
        mmWidth = 35190
        BandType = 8
      end
    end
  end
  object plOrdCompEnt: TppDBPipeline
    DataSource = ds
    UserName = 'plOrdCompEnt'
    Left = 499
    Top = 344
    object plOrdCompEntppField1: TppField
      FieldAlias = 'idOrdComp'
      FieldName = 'idOrdComp'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plOrdCompEntppField2: TppField
      FieldAlias = 'OrdComp'
      FieldName = 'OrdComp'
      FieldLength = 16
      DisplayWidth = 16
      Position = 1
    end
    object plOrdCompEntppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plOrdCompEntppField4: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object plOrdCompEntppField5: TppField
      FieldAlias = 'Sector'
      FieldName = 'Sector'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plOrdCompEntppField6: TppField
      FieldAlias = 'Ciudad'
      FieldName = 'Ciudad'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object plOrdCompEntppField7: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plOrdCompEntppField8: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object plOrdCompEntppField9: TppField
      FieldAlias = 'Observacion'
      FieldName = 'Observacion'
      FieldLength = 200
      DisplayWidth = 200
      Position = 8
    end
    object plOrdCompEntppField10: TppField
      FieldAlias = 'idCondicion'
      FieldName = 'idCondicion'
      FieldLength = 16
      DisplayWidth = 16
      Position = 9
    end
    object plOrdCompEntppField11: TppField
      FieldAlias = 'OrdCompStatus'
      FieldName = 'OrdCompStatus'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object plOrdCompEntppField12: TppField
      FieldAlias = 'Facturable'
      FieldName = 'Facturable'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 11
    end
  end
  object plEntregas: TppDBPipeline
    DataSource = dsEntregas
    UserName = 'plEntregas'
    Left = 253
    Top = 346
  end
  object EntregasList: TppReport
    AutoStop = False
    DataPipeline = plEntregas
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 249
    Top = 402
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plEntregas'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 9790
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 166952
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5292
        mmWidth = 264055
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Despacho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 1323
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 244475
        mmTop = 1323
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 87842
        mmTop = 1323
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 108744
        mmTop = 1323
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Salida Alm.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 129117
        mmTop = 1323
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 148432
        mmTop = 1323
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 211667
        mmTop = 1323
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 39423
        mmTop = 1323
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'Fecha Env.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 1323
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'Fecha Recib'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 191030
        mmTop = 1323
        mmWidth = 20108
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'OrdCompEnt'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3344
        mmLeft = 1323
        mmTop = 529
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Fecha'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3344
        mmLeft = 20108
        mmTop = 529
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Usuario'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3440
        mmLeft = 244475
        mmTop = 529
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'OrdComp'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3440
        mmLeft = 87842
        mmTop = 529
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'factura'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3440
        mmLeft = 108744
        mmTop = 529
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'promov'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 529
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Status'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3440
        mmLeft = 148432
        mmTop = 529
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Empleado'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3344
        mmLeft = 211667
        mmTop = 529
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Cliente'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 529
        mmWidth = 47096
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'FechaEnviado'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3440
        mmLeft = 170392
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'FechaCompletado'
        DataPipeline = plEntregas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntregas'
        mmHeight = 3440
        mmLeft = 191030
        mmTop = 794
        mmWidth = 20108
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 264055
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 79640
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 177007
        mmTop = 1323
        mmWidth = 88371
        BandType = 8
      end
    end
  end
  object SetStatusPedido: TADOCommand
    CommandText = 'svPedidoSetStatus;1'
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
        Name = '@idOrdComp'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idOrdCompStatus'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 327
    Top = 278
  end
end

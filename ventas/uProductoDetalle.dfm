inherited ProductoDetalle: TProductoDetalle
  Left = 719
  Top = 121
  Caption = 'Detalles de Producto'
  ClientHeight = 553
  ClientWidth = 780
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 195
    Top = 17
    Width = 15
    Height = 13
    Caption = 'Al :'
  end
  object Label2: TLabel [1]
    Left = 19
    Top = 17
    Width = 39
    Height = 13
    Caption = 'Codigo :'
  end
  object fecha: TcxDateEdit [2]
    Left = 213
    Top = 13
    Width = 101
    Height = 21
    Properties.OnChange = idProductoPropertiesChange
    Style.StyleController = dm.cxEstilo
    TabOrder = 0
  end
  object idProducto: TcxButtonEdit [3]
    Left = 62
    Top = 13
    Width = 121
    Height = 21
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = idProductoPropertiesButtonClick
    Properties.OnChange = idProductoPropertiesChange
    Style.StyleController = dm.cxEstilo
    TabOrder = 1
  end
  object cxButton1: TcxButton [4]
    Left = 342
    Top = 7
    Width = 99
    Height = 31
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [5]
    Left = 674
    Top = 7
    Width = 99
    Height = 31
    Cancel = True
    Caption = 'Salir'
    Default = True
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxPageControl1: TcxPageControl [6]
    Left = 0
    Top = 39
    Width = 782
    Height = 516
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookAndFeel.NativeStyle = True
    TabOrder = 4
    ClientRectBottom = 512
    ClientRectLeft = 2
    ClientRectRight = 778
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Detalle'
      ImageIndex = 0
      DesignSize = (
        776
        490)
      object Label3: TLabel
        Left = 4
        Top = 8
        Width = 100
        Height = 13
        Caption = 'Nombre del Producto'
        Transparent = True
      end
      object Label4: TLabel
        Left = 4
        Top = 77
        Width = 34
        Height = 13
        Caption = 'Unidad'
        Transparent = True
      end
      object Label5: TLabel
        Left = 4
        Top = 117
        Width = 33
        Height = 13
        Caption = 'Minimo'
        Transparent = True
      end
      object Label6: TLabel
        Left = 112
        Top = 117
        Width = 43
        Height = 13
        Caption = 'ReOrden'
        Transparent = True
      end
      object Label7: TLabel
        Left = 221
        Top = 117
        Width = 36
        Height = 13
        Caption = 'Maximo'
        Transparent = True
      end
      object Label8: TLabel
        Left = 112
        Top = 77
        Width = 73
        Height = 13
        Caption = 'Precio Contado'
        Transparent = True
      end
      object Label9: TLabel
        Left = 219
        Top = 77
        Width = 66
        Height = 13
        Caption = 'Precio Credito'
        Transparent = True
      end
      object Label10: TLabel
        Left = 328
        Top = 77
        Width = 54
        Height = 13
        Caption = '% Impuesto'
        Transparent = True
      end
      object Label11: TLabel
        Left = 328
        Top = 117
        Width = 75
        Height = 13
        Caption = 'Descuento Max'
        Transparent = True
      end
      object Label12: TLabel
        Left = 10
        Top = 167
        Width = 47
        Height = 13
        Caption = 'Inventario'
        Transparent = True
      end
      object Label13: TLabel
        Left = 29
        Top = 194
        Width = 26
        Height = 13
        Caption = 'Linea'
        Transparent = True
      end
      object Label14: TLabel
        Left = 26
        Top = 221
        Width = 29
        Height = 13
        Caption = 'Grupo'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 4
        Top = 91
        Width = 88
        Height = 21
        DataBinding.DataField = 'idUnidad'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 0
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 4
        Top = 131
        Width = 88
        Height = 21
        DataBinding.DataField = 'Minimo'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 1
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 112
        Top = 131
        Width = 88
        Height = 21
        DataBinding.DataField = 'Reorden'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 2
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 222
        Top = 131
        Width = 88
        Height = 21
        DataBinding.DataField = 'Maximo'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 3
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 441
        Top = 91
        Width = 81
        Height = 21
        Caption = 'Inactivo'
        DataBinding.DataField = 'Inactivo'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object edPrecioCO: TcxDBTextEdit
        Left = 112
        Top = 91
        Width = 88
        Height = 21
        DataBinding.DataField = 'PrecioContado'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 5
      end
      object edPrecioCR: TcxDBTextEdit
        Left = 220
        Top = 91
        Width = 88
        Height = 21
        DataBinding.DataField = 'PrecioCredito'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 6
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 328
        Top = 91
        Width = 88
        Height = 21
        DataBinding.DataField = 'porciento'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 7
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 328
        Top = 131
        Width = 88
        Height = 21
        DataBinding.DataField = 'Descuento'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 8
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 441
        Top = 129
        Width = 79
        Height = 21
        Caption = 'Fact Neg'
        DataBinding.DataField = 'ExistenciaNeg'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 9
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 64
        Top = 164
        Width = 440
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'Inventario'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 10
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 64
        Top = 191
        Width = 440
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'Linea'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 11
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 62
        Top = 218
        Width = 442
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'grupo'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.StyleController = dm.cxEstilo
        TabOrder = 12
      end
      object cxDBMemo1: TcxDBMemo
        Left = 4
        Top = 22
        Width = 499
        Height = 44
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'Producto'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 13
      end
      object cxDBImage2: TcxDBImage
        Left = 517
        Top = 22
        Width = 253
        Height = 218
        Anchors = [akTop, akRight]
        DataBinding.DataField = 'Foto'
        DataBinding.DataSource = DS
        Properties.GraphicClassName = 'TJPEGImage'
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 14
      end
      object PageControl1: TPageControl
        Left = 8
        Top = 254
        Width = 766
        Height = 231
        ActivePage = TabSheet1
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 15
        object TabSheet1: TTabSheet
          Caption = 'Existencia por Almacen'
          DesignSize = (
            758
            203)
          object cxGrid1: TcxGrid
            Left = 2
            Top = 1
            Width = 752
            Height = 200
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              DataController.DataSource = DS
              DataController.KeyFieldNames = 'id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,#.##'
                  Kind = skSum
                  Column = cxGrid1DBTableView1Existencia
                end>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.ConfirmDelete = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ScrollBars = ssVertical
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'Almacen'
                Width = 604
              end
              object cxGrid1DBTableView1Existencia: TcxGridDBColumn
                DataBinding.FieldName = 'Existencia'
                Width = 139
              end
              object cxGrid1DBTableView1CostoPromedio: TcxGridDBColumn
                Caption = 'Costo'
                DataBinding.FieldName = 'CostoPromedio'
                Visible = False
                Width = 74
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Ultimas entradas de almacen'
          ImageIndex = 1
          DesignSize = (
            758
            203)
          object cxGrid2: TcxGrid
            Left = 2
            Top = 2
            Width = 752
            Height = 199
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
              DataController.DataSource = dsUltEntradas
              DataController.KeyFieldNames = 'KeyField'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.ConfirmDelete = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ScrollBars = ssVertical
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1KeyField: TcxGridDBColumn
                DataBinding.FieldName = 'KeyField'
                Visible = False
              end
              object cxGridDBTableView1idProducto: TcxGridDBColumn
                DataBinding.FieldName = 'idProducto'
                Visible = False
              end
              object cxGridDBTableView1Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                Width = 106
              end
              object cxGridDBTableView1Suplidor: TcxGridDBColumn
                DataBinding.FieldName = 'Suplidor'
                Width = 314
              end
              object cxGridDBTableView1Costo: TcxGridDBColumn
                Caption = 'Costo Total'
                DataBinding.FieldName = 'Costo'
                Width = 104
              end
              object cxGridDBTableView1Cantidad: TcxGridDBColumn
                DataBinding.FieldName = 'Cantidad'
                Width = 99
              end
              object cxGridDBTableView1COLUMN1: TcxGridDBColumn
                DataBinding.FieldName = 'Unitario'
                Width = 127
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Compras en Proceso'
          ImageIndex = 2
          DesignSize = (
            758
            203)
          object cxGrid3: TcxGrid
            Left = 3
            Top = 1
            Width = 752
            Height = 200
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView2: TcxGridDBTableView
              DataController.DataSource = dscompras
              DataController.KeyFieldNames = 'idSolicitudDet'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,0.#'
                  Kind = skSum
                  Column = cxGridDBTableView2DBColumn1
                end
                item
                  Format = '#,0.#'
                  Kind = skSum
                  Column = cxGridDBTableView2DBColumn2
                end>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.ConfirmDelete = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ScrollBars = ssVertical
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView2idProducto: TcxGridDBColumn
                DataBinding.FieldName = 'idProducto'
                Visible = False
              end
              object cxGridDBTableView2idSolicitudDet: TcxGridDBColumn
                DataBinding.FieldName = 'idSolicitudDet'
                Visible = False
              end
              object cxGridDBTableView2Solicitud: TcxGridDBColumn
                DataBinding.FieldName = 'Solicitud'
                Options.Filtering = False
                Width = 86
              end
              object cxGridDBTableView2Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                Options.Filtering = False
                Width = 81
              end
              object cxGridDBTableView2Unidad: TcxGridDBColumn
                DataBinding.FieldName = 'Unidad'
                Options.Filtering = False
                Width = 89
              end
              object cxGridDBTableView2Cantidad: TcxGridDBColumn
                Caption = 'Requerido'
                DataBinding.FieldName = 'Cantidad Solicitada'
                Options.Filtering = False
                Width = 72
              end
              object cxGridDBTableView2Orden: TcxGridDBColumn
                Caption = 'Ordenado'
                DataBinding.FieldName = 'Orden'
                Options.Filtering = False
                Width = 72
              end
              object cxGridDBTableView2Recibido: TcxGridDBColumn
                DataBinding.FieldName = 'Recibido'
                Options.Filtering = False
                Width = 97
              end
              object cxGridDBTableView2DBColumn1: TcxGridDBColumn
                Caption = 'Solicit Pend'
                DataBinding.FieldName = 'enSolicitado'
                Options.Filtering = False
                Width = 84
              end
              object cxGridDBTableView2DBColumn2: TcxGridDBColumn
                Caption = 'Back Order'
                DataBinding.FieldName = 'BackOrder'
                Options.Filtering = False
                Width = 86
              end
              object cxGridDBTableView2Reservado: TcxGridDBColumn
                DataBinding.FieldName = 'Reservado'
                Options.Filtering = False
                Width = 83
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Foto'
      ImageIndex = 1
      object cxDBImage1: TcxDBImage
        Left = 0
        Top = 0
        Width = 776
        Height = 490
        Align = alClient
        DataBinding.DataField = 'Foto'
        DataBinding.DataSource = DS
        Properties.GraphicClassName = 'TJPEGImage'
        TabOrder = 0
      end
    end
  end
  inherited DS: TwwDataSource
    DataSet = RS
    Left = 307
    Top = 93
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svProductoenAlmacen;1'
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
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 226
    Top = 80
    object RSid: TGuidField
      FieldName = 'id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object RSAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
    object RSidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object RSProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object RSExistencia: TFloatField
      FieldName = 'Existencia'
      ReadOnly = True
      DisplayFormat = '#,##0.#'
    end
    object RSCostoPromedio: TFloatField
      FieldName = 'CostoPromedio'
      ReadOnly = True
    end
    object RSInactivo: TBooleanField
      FieldName = 'Inactivo'
    end
    object RSidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object RSMinimo: TFloatField
      FieldName = 'Minimo'
      DisplayFormat = '#,0.##'
    end
    object RSReorden: TFloatField
      FieldName = 'Reorden'
      DisplayFormat = '#,0.##'
    end
    object RSMaximo: TFloatField
      FieldName = 'Maximo'
      DisplayFormat = '#,0.##'
    end
    object RSPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      DisplayFormat = '#,0.00#'
      currency = True
      Precision = 19
      Size = 2
    end
    object RSPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
      DisplayFormat = '#,0.00#'
      currency = True
      Precision = 19
      Size = 2
    end
    object RSporciento: TFloatField
      FieldName = 'porciento'
    end
    object RSDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object RSExistenciaNeg: TBooleanField
      FieldName = 'ExistenciaNeg'
    end
    object RSgrupo: TStringField
      FieldName = 'grupo'
      Size = 50
    end
    object RSLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object RSInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object RSFoto: TBlobField
      FieldName = 'Foto'
    end
  end
  object UltEntradas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'svProductoUltEntradas;1'
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
        Size = 30
        Value = Null
      end>
    Left = 394
    Top = 85
    object UltEntradasKeyField: TGuidField
      FieldName = 'KeyField'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object UltEntradasidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object UltEntradasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object UltEntradasSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
    object UltEntradasCosto: TBCDField
      FieldName = 'Costo'
      DisplayFormat = '#,0.00#'
      Precision = 19
      Size = 2
    end
    object UltEntradasCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object UltEntradasUnitario: TBCDField
      FieldName = 'Unitario'
      ReadOnly = True
      DisplayFormat = '#,0.00#'
      Precision = 32
      Size = 17
    end
  end
  object dsUltEntradas: TDataSource
    DataSet = UltEntradas
    Left = 468
    Top = 93
  end
  object Compras: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'ocCompraPendiente;1'
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
        Name = '@idproducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 602
    Top = 175
    object ComprasidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object ComprasidSolicitudDet: TGuidField
      FieldName = 'idSolicitudDet'
      FixedChar = True
      Size = 38
    end
    object ComprasSolicitud: TStringField
      FieldName = 'Solicitud'
      Size = 16
    end
    object ComprasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ComprasCantidad: TFloatField
      FieldName = 'Cantidad'
      DisplayFormat = '#,0.#'
    end
    object ComprasUnidad: TStringField
      FieldName = 'Unidad'
      Size = 16
    end
    object ComprasOrden: TFloatField
      FieldName = 'Orden'
    end
    object ComprasRecibido: TFloatField
      FieldName = 'Recibido'
      DisplayFormat = '#,0.#'
    end
    object ComprasReservado: TFloatField
      FieldName = 'Reservado'
      ReadOnly = True
      DisplayFormat = '#,0.#'
    end
    object ComprasenSolicitado: TFloatField
      FieldName = 'enSolicitado'
      ReadOnly = True
    end
    object ComprasBackOrder: TFloatField
      FieldName = 'BackOrder'
      ReadOnly = True
    end
  end
  object dscompras: TwwDataSource
    AutoEdit = False
    DataSet = Compras
    OnUpdateData = DSUpdateData
    Left = 575
    Top = 129
  end
end

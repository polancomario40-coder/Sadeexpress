inherited Facturapdv: TFacturapdv
  Left = 311
  Top = 185
  Caption = 'Punto de Venta'
  ClientHeight = 572
  ClientWidth = 753
  Color = 15788249
  DesignSize = (
    753
    572)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 571
    Width = 753
    Align = alBottom
  end
  object Label26: TLabel [1]
    Left = 193
    Top = 125
    Width = 24
    Height = 13
    Caption = 'NCF:'
  end
  object DBText1: TDBText [2]
    Left = 800
    Top = 498
    Width = 79
    Height = 15
    Alignment = taRightJustify
    DataField = 'Usuario'
    DataSource = DS
  end
  object Shape1: TShape [3]
    Left = 8
    Top = 7
    Width = 70
    Height = 18
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
  end
  object Label18: TLabel [4]
    Left = 13
    Top = 9
    Width = 58
    Height = 13
    Caption = 'Facturar a'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape [5]
    Left = 84
    Top = 15
    Width = 315
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Shape3: TShape [6]
    Left = 411
    Top = 15
    Width = 70
    Height = 18
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
  end
  object Label23: TLabel [7]
    Left = 427
    Top = 17
    Width = 42
    Height = 13
    Caption = 'Totales'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape4: TShape [8]
    Left = 483
    Top = 23
    Width = 265
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Shape6: TShape [9]
    Left = 14
    Top = 179
    Width = 734
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Shape8: TShape [10]
    Left = 405
    Top = 15
    Width = 3
    Height = 159
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Label31: TLabel [11]
    Left = 421
    Top = 34
    Width = 40
    Height = 13
    Caption = 'Cajero:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label32: TLabel [12]
    Left = 421
    Top = 69
    Width = 56
    Height = 13
    Caption = 'Sub Total:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label33: TLabel [13]
    Left = 421
    Top = 47
    Width = 69
    Height = 13
    Caption = 'Fecha/Hora:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label34: TLabel [14]
    Left = 559
    Top = 49
    Width = 10
    Height = 13
    Caption = '@'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape10: TShape [15]
    Left = 415
    Top = 65
    Width = 333
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Label35: TLabel [16]
    Left = 421
    Top = 90
    Width = 30
    Height = 13
    Caption = 'Desc:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label36: TLabel [17]
    Left = 421
    Top = 112
    Width = 34
    Height = 13
    Caption = 'ITBIS:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape11: TShape [18]
    Left = 415
    Top = 130
    Width = 333
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object FindCliente: TSpeedButton [19]
    Left = 90
    Top = 26
    Width = 23
    Height = 21
    Flat = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555555555555555555550000555555555555550055555555555555558855
      00005555555555555C44055555555555555878850000555555555555C4C40555
      5555555555878885000055555555555C4C405555555555555878885500005555
      55555584C4055555555555558788855500005555588888F74055555555588888
      F78855550000555500000078055555555588888878855555000055507EFEE600
      555555555877F7788855555500005587EFEFEF6055555555877F7F7F88555555
      0000558EFEFEFEE08555555587F7F7F7788555550000558FEFEFEFE085555555
      8F7F7F7F788555550000558FFFEFEFE0855555558FFF7F7F788555550000558E
      FFFEFEF08555555587FFF7F7F885555500005558EFFFEF6055555555587FFF7F
      88555555000055558EFEF605555555555587F7F8855555550000555558888855
      5555555555588888555555550000555555555555555555555555555555555555
      0000}
    NumGlyphs = 2
    OnClick = FindClienteClick
  end
  object Label37: TLabel [20]
    Left = 14
    Top = 101
    Width = 42
    Height = 13
    Caption = 'Dias CR:'
  end
  object Label38: TLabel [21]
    Left = 216
    Top = 77
    Width = 80
    Height = 13
    Caption = 'Limite de credito:'
  end
  object Shape5: TShape [22]
    Left = 15
    Top = 94
    Width = 386
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Label39: TLabel [23]
    Left = 172
    Top = 103
    Width = 46
    Height = 13
    Caption = 'Contacto:'
  end
  object DBText4: TDBText [24]
    Left = 493
    Top = 48
    Width = 63
    Height = 17
    DataField = 'Fecha'
    DataSource = DS
  end
  object DBText2: TDBText [25]
    Left = 493
    Top = 34
    Width = 215
    Height = 15
    DataField = 'Usuario'
    DataSource = DS
  end
  object DBText5: TDBText [26]
    Left = 574
    Top = 48
    Width = 64
    Height = 17
    DataField = 'Hora'
    DataSource = DS
  end
  object DBText6: TDBText [27]
    Left = 499
    Top = 69
    Width = 75
    Height = 17
    Alignment = taRightJustify
    DataField = 'SubTotal'
    DataSource = DS
  end
  object DBText7: TDBText [28]
    Left = 499
    Top = 88
    Width = 75
    Height = 17
    Alignment = taRightJustify
    DataField = 'Descuento'
    DataSource = DS
  end
  object DBText9: TDBText [29]
    Left = 499
    Top = 110
    Width = 75
    Height = 17
    Alignment = taRightJustify
    DataField = 'Itbis'
    DataSource = DS
  end
  object DBText10: TDBText [30]
    Left = 510
    Top = 134
    Width = 237
    Height = 39
    Alignment = taRightJustify
    DataField = 'Total'
    DataSource = DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11764252
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label40: TLabel [31]
    Left = 16
    Top = 125
    Width = 42
    Height = 13
    Caption = 'Orden #:'
  end
  object Label42: TLabel [32]
    Left = 599
    Top = 95
    Width = 93
    Height = 13
    Caption = 'Factura Numero:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object DBText3: TDBText [33]
    Left = 600
    Top = 111
    Width = 111
    Height = 17
    DataField = 'Factura'
    DataSource = DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText8: TDBText [34]
    Left = 560
    Top = 5
    Width = 95
    Height = 15
    DataField = 'FechaCancelado'
    DataSource = DS
  end
  object Shape7: TShape [35]
    Left = 2
    Top = 524
    Width = 750
    Height = 3
    Anchors = [akLeft, akRight, akBottom]
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Shape9: TShape [36]
    Left = 2
    Top = 393
    Width = 750
    Height = 3
    Anchors = [akLeft, akTop, akRight]
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object SpeedButton1: TSpeedButton [37]
    Left = 632
    Top = 4
    Width = 79
    Height = 18
    Caption = 'No Gen Salida'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel [38]
    Left = 236
    Top = 55
    Width = 56
    Height = 13
    Caption = 'RNC / Ced:'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Top = 529
    Width = 753
    Align = alBottom
    Transparent = True
    inherited nuevo: TwwNavButton
      Width = 63
    end
    inherited editar: TwwNavButton
      Left = 63
      Width = 63
    end
    inherited guardar: TwwNavButton
      Left = 126
      Width = 63
    end
    inherited cancelar: TwwNavButton
      Left = 189
      Width = 63
    end
    inherited borrar: TwwNavButton
      Left = 252
      Width = 63
      Visible = False
    end
    inherited BLocalizarx: TwwNavButton
      Left = 315
      Width = 63
    end
    object bAnular: TwwNavButton [6]
      Left = 378
      Top = 0
      Width = 63
      Height = 42
      Action = AAnular
      ImageIndex = 3
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsCustom
      Visible = False
    end
    object BdeCotizacion: TwwNavButton [7]
      Left = 441
      Top = 0
      Width = 63
      Height = 42
      Action = ACotizacion
      ImageIndex = 5
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsCustom
      Visible = False
    end
    object BdeOrdComp: TwwNavButton [8]
      Left = 504
      Top = 0
      Width = 63
      Height = 42
      Action = AOrdComp2Factura
      ImageIndex = 5
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsCustom
      Visible = False
    end
    object bPrint: TwwNavButton [9]
      Left = 567
      Top = 0
      Width = 62
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsCustom
    end
    object bMail: TwwNavButton [10]
      Left = 629
      Top = 0
      Width = 62
      Height = 42
      Action = SendMail
      ImageIndex = 12
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 10
      Style = nbsCustom
      Visible = False
    end
    inherited salir: TwwNavButton
      Left = 691
      Width = 62
      Index = 11
    end
  end
  object dxDBEdit6: TdxDBEdit [40]
    Left = 22
    Top = 26
    Width = 67
    TabOrder = 0
    OnDblClick = dxDBEdit6DblClick
    DataField = 'idCliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBCheckEdit2: TdxDBCheckEdit [41]
    Left = 491
    Top = 1
    Width = 65
    TabOrder = 6
    TabStop = False
    Caption = 'Anulado'
    DataField = 'Cancelado'
    DataSource = DS
    ReadOnly = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 64
  end
  object dxDBEdit11: TdxDBEdit [42]
    Left = 114
    Top = 26
    Width = 286
    TabOrder = 1
    DataField = 'Cliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  inherited Grid: TwwDBGrid
    Left = 13
    Top = 404
    Width = 31
    Height = 6
    Hint = 'Ctrl-F1 Muestra Datos del Producto'
    ControlType.Strings = (
      'Oferta;CheckBox;true;false'
      'luAlmacen;CustomEdit;lcAlmacenDet;F')
    Selected.Strings = (
      'idProducto'#9'19'#9'Producto'#9#9
      'Producto'#9'47'#9'Descripcion'#9#9
      'Cantidad'#9'8'#9'Cantidad'#9#9
      'dias'#9'6'#9'Dias'#9'F'#9
      'PrecioDia'#9'15'#9'Precio'#9#9
      'idUnidad'#9'10'#9'Unidad'#9#9
      'Descuento'#9'11'#9'Desc'#9#9
      'Itbis'#9'10'#9'Itbis'#9#9
      'LineTotal'#9'17'#9'Importe'#9#9)
    DataSource = nil
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgWordWrap]
    ParentColor = True
    ParentFont = False
    ParentShowHint = False
    PopupMenu = PopupMenu1
    ShowHint = True
    TabOrder = 5
    Visible = False
  end
  object dxDBEdit5: TdxDBEdit [44]
    Left = 222
    Top = 99
    Width = 177
    TabOrder = 2
    DataField = 'Contacto'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object desc: TdxDBEdit [45]
    Left = 456
    Top = 86
    Width = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Style.HotTrack = False
    Style.Shadow = False
    TabOrder = 8
    DataField = 'PorcDesc'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object PagaItbis: TdxDBCheckEdit [46]
    Left = 461
    Top = 108
    Width = 22
    TabOrder = 9
    OnClick = PagaItbisClick
    Alignment = taLeftJustify
    DataField = 'PagaItbis'
    DataSource = DS
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    OnChange = PagaItbisClick
    StoredValues = 1
  end
  object PrnFormat: TcxComboBox [47]
    Left = 413
    Top = 156
    Width = 92
    Height = 21
    TabStop = False
    Properties.Items.Strings = (
      'Formato A'
      'Formato B')
    TabOrder = 10
    Text = 'Formato A'
  end
  object dxDBEdit21: TdxDBEdit [48]
    Left = 222
    Top = 121
    Width = 177
    TabOrder = 4
    DataField = 'CompFiscal'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit22: TdxDBEdit [49]
    Left = 298
    Top = 49
    Width = 102
    TabOrder = 3
    DataField = 'ClienteRNC'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object cxGrid1: TcxGrid [50]
    Left = 4
    Top = 398
    Width = 746
    Height = 125
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 11
    OnEnter = cxGrid1Enter
    OnExit = cxGrid1Exit
    LookAndFeel.NativeStyle = True
    object cxGrid: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      DataController.DataSource = DS2
      DataController.KeyFieldNames = 'idFacturaDet'
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
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsView.ScrollBars = ssVertical
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Styles.Content = cxStyle3
      Bands = <
        item
        end>
      object cxGrididProducto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idProducto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrididProductoPropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        MinWidth = 94
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridProducto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Producto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 318
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridCantidad: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cantidad'
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridPrecio: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Precio'
        HeaderAlignmentHorz = taCenter
        MinWidth = 75
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrididUnidad: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idUnidad'
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 62
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDescuento: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Descuento'
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridItbis: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Itbis'
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 69
        Options.Filtering = False
        Options.Focusing = False
        Options.HorzSizing = False
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridLineTotal: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LineTotal'
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Filtering = False
        Options.Focusing = False
        Options.HorzSizing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrididAlmacen: TcxGridDBBandedColumn
        Caption = 'Almacen'
        DataBinding.FieldName = 'idAlmacen'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idAlmacen'
        Properties.ListColumns = <
          item
            FieldName = 'Almacen'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsAlmacen
        Options.Filtering = False
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid
    end
  end
  object dxDBEdit20: TdxDBEdit [51]
    Left = 22
    Top = 50
    Width = 202
    TabOrder = 12
    AutoSize = False
    DataField = 'Direccion'
    DataSource = DS
    StyleController = dm.dxEstilo
    Height = 21
  end
  object dxDBEdit23: TdxDBEdit [52]
    Left = 22
    Top = 72
    Width = 113
    TabOrder = 13
    DataField = 'Telefono'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit26: TdxDBEdit [53]
    Left = 298
    Top = 72
    Width = 102
    TabOrder = 14
    DataField = 'LimiteCredito'
    DataSource = dsClienteAct
    StyleController = dm.dxEstilo
  end
  object dxDBEdit27: TdxDBEdit [54]
    Left = 64
    Top = 98
    Width = 99
    TabOrder = 15
    DataField = 'idCondicion'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBMemo6: TdxDBMemo [55]
    Left = 16
    Top = 144
    Width = 383
    TabOrder = 16
    DataField = 'Nota'
    DataSource = DS
    StyleController = dm.dxEstilo
    Height = 34
  end
  object dxDBEdit2: TdxDBEdit [56]
    Left = 64
    Top = 120
    Width = 99
    TabOrder = 17
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBLookupEdit3: TdxDBLookupEdit [57]
    Left = 413
    Top = 134
    Width = 91
    TabOrder = 18
    DataField = 'idAlmacen'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'Almacen'
    KeyFieldName = 'idAlmacen'
    ListSource = dsAlmacen
    LookupKeyValue = Null
  end
  inline frBuscadorProds1: TfrBuscadorProds [58]
    Left = 4
    Top = 185
    Width = 745
    Height = 206
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 19
    inherited Label1: TLabel
      Left = 5
      Top = 12
    end
    inherited edBuscar: TdxEdit
      Left = 41
      Top = 8
    end
    inherited cbLookInside: TdxCheckEdit
      Left = 544
      Top = 8
    end
    inherited grListaProds: TdxDBGrid
      Width = 745
      Height = 174
      Filter.Criteria = {00000000}
      inherited dxDBGrid1Descripcion: TdxDBGridMaskColumn
        Width = 347
      end
      inherited dxDBGrid1Referencia: TdxDBGridMaskColumn
        Width = 108
      end
    end
  end
  object NoPromov: TcxCheckBox [59]
    Left = 708
    Top = 1
    Width = 22
    Height = 21
    Properties.ReadOnly = True
    TabOrder = 20
  end
  inherited DS: TwwDataSource [60]
    Left = 1294
    Top = 187
  end
  inherited ImageList: TImageList [61]
    Left = 1107
    Top = 136
    Bitmap = {
      494C01010D000E00040012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000480000004800000001002000000000000051
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D7008E8E
      8E00B4B4B400DADADA00EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D600766F6600E97A0C00FF94
      0D008F6D52005A5A5A00B2795B0062626200D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F5D5900F8F1E600F8F1E600FE95
      1700FFAB3600FFC68400FF960500A97F7A00CACACA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F6E6200FFFFFE00CCCCCC00CCCC
      CC00F2962300FFA82E00FF960500A97F7A00CACACA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AA786800FFFFFE00FFFFFE00FFFF
      FE00ED653600ED653600ED653600A97F7A00CACACA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BE8C7500ED653600DA5F4000C28C
      8000FEFEFD00FEFEFD006B81CA00A97F7A00CACACA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3A28100FF8F1200FFA93100BF6E
      3300FDFCF900FEFEFD00FEFEFD00A97F7A00D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F1200EED5BC00FFDA
      A800B5613000B35B40009A614400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EF
      ED00F4A45E00B1704E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00000000007F7F7F00FFFFFF00000000007B7B7B007B0000007B00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000007B7B7B007B0000007B000000FFFFFF000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00000000007F7F7F00FFFFFF00000000007B7B7B007B0000007B00
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF007B0000007B0000007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B0000007B0000007B000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000007B7B7B007B0000007B000000FFFFFF000000
      0000000000000000000000000000BFBFBF00BFBFBF007F7F7F00000000000000
      0000000000007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F00000000007B7B7B007B0000007B00
      0000FFFFFF0000000000000000000000000000000000FFFFFF007B0000007B00
      00007B0000007B0000007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B0000007B000000FFFFFF00FFFF
      FF00FFFFFF0000000000000000007B7B7B007B0000007B000000FFFFFF000000
      00000000000000000000BFBFBF00BFBFBF0000000000FFFFFF000000FF00FFFF
      FF000000FF00FFFFFF00000000007F7F7F007F7F7F0000000000000000000000
      0000000000007F7F7F0000000000FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00000000007F7F7F00FFFFFF00000000007B7B7B007B0000007B00
      0000FFFFFF000000000000000000FFFFFF007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      0000FFFFFF00FFFFFF00FFFFFF007B7B7B007B0000007B000000FFFFFF000000
      00000000000000000000BFBFBF0000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00000000007F7F7F0000000000000000000000
      0000000000007F7F7F0000000000BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF000000
      FF00FFFFFF00000000007F7F7F00FFFFFF00000000007B7B7B007B0000007B00
      0000FFFFFF00000000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B000000FFFFFF007B7B7B007B0000007B000000FFFFFF000000
      000000000000BFBFBF007F7F7F00FFFFFF0000000000000000000000FF000000
      8000000080000000000000000000FFFFFF007F7F7F007F7F7F00000000000000
      00007F7F7F00FFFFFF0000000000FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00000000007F7F7F00FFFFFF00000000007B7B7B007B0000007B00
      0000FFFFFF007B7B7B007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B000000000000007B7B7B007B0000007B000000FFFFFF000000
      000000000000BFBFBF00000000000000FF00000000000000FF00000080000000
      FF000000800000008000000000000000FF00000000007F7F7F00000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F00000000007B7B7B007B0000007B00
      0000FFFFFF007B7B7B007B7B7B007B7B7B007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B7B7B0000000000000000007B7B7B007B0000007B000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF00000000000000FF000000FF000000
      FF000000FF000000800000000000FFFFFF00000000007F7F7F00000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000007B7B7B007B0000007B00
      0000FFFFFF0000000000000000007B7B7B007B7B7B007B7B7B007B0000007B00
      00007B0000007B0000007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B0000007B0000007B7B7B000000
      00000000000000000000000000007B7B7B007B0000007B000000FFFFFF000000
      000000000000FFFFFF00000000000000FF0000000000FFFFFF000000FF000000
      FF00000080000000FF00000000000000FF0000000000BFBFBF00000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000007B7B7B007B0000007B00
      0000FFFFFF00000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B0000007B0000007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B0000007B0000007B0000007B7B7B0000000000000000000000
      00000000000000000000000000007B7B7B007B0000007B000000FFFFFF000000
      000000000000FFFFFF007F7F7F00FFFFFF000000000000000000FFFFFF00FFFF
      FF000000FF000000000000000000FFFFFF007F7F7F00BFBFBF00000000000000
      00007F7F7F000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000007B7B7B007B0000007B00
      0000FFFFFF000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B0000007B000000FFFFFF0000000000000000007B7B
      7B007B0000007B0000007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B0000007B000000FFFFFF000000
      00000000000000000000BFBFBF0000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF0000000000BFBFBF0000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B00000000000000
      00000000000000000000FFFFFF00BFBFBF0000000000FFFFFF000000FF00FFFF
      FF000000FF00FFFFFF0000000000BFBFBF00BFBFBF0000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00BFBFBF007F7F7F00000000000000
      0000000000007F7F7F00BFBFBF00BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00BFBFBF00BFBFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000084000000FF00000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000084000000FF0000008400000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF007B0000007B0000007B0000007B0000007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF007B0000007B0000007B0000007B0000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084000000FF000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF007B00
      00007B0000007B0000007B0000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF007B0000007B0000007B0000007B0000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400FFFFFF00C6C6C60084000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B0000007B00
      00007B0000007B0000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF007B0000007B0000007B0000007B0000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B0000007B0000007B00
      00007B0000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF007B0000007B0000007B0000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000007B7B
      7B00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000FFFFFF00000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFF0000FFFFFF00FFFF0000FFFF00008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007B0000007B0000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007B0000007B0000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000007B7B
      7B00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000FFFFFF00000000000000000000000000000000000000
      000084848400C6C6C600FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00848400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007B0000007B0000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007B0000007B0000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000084848400FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFF00000000000084848400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B0000007B0000007B00
      00007B0000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF007B0000007B0000007B0000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF00000000000084848400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B0000007B00
      00007B0000007B0000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF007B0000007B0000007B0000007B0000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF00000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF007B00
      00007B0000007B0000007B0000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF007B0000007B0000007B0000007B0000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF000000000084848400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF007B0000007B0000007B0000007B0000007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF007B0000007B0000007B0000007B0000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      FF00848400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFF0000FFFFFF00FFFF0000FFFFFF008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000007B00000000000000BDBDBD007B00
      00007B000000BDBDBD00BDBDBD00BDBDBD00000000007B0000007B0000000000
      000000000000000000000000000000000000000000000000FF0000007B000000
      00007B7B7B0000000000000000000000000000000000000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00007B0000007B0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000007B00000000000000BDBDBD007B00
      00007B000000BDBDBD00BDBDBD00BDBDBD00000000007B0000007B0000000000
      000000000000000000000000000000000000000000000000FF0000007B000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00007B0000007B0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84000000000000000000000000007B0000007B00000000000000BDBDBD007B00
      00007B000000BDBDBD00BDBDBD00BDBDBD00000000007B0000007B0000000000
      000000000000000000000000000000000000000000000000FF0000007B000000
      7B00000000007B7B7B007B7B7B00000000000000FF0000007B0000007B000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00007B0000007B0000FFFFFF000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF0000000000C6C6C6008484
      84000000000000000000000000007B0000007B0000007B000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B0000007B0000007B0000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B0000007B00000000007B7B7B000000FF0000007B0000007B0000007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000007B0000007B0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000084848400FFFF
      FF00C6C6C60084000000840000008400000084000000FFFFFF00840000008400
      00008400000084000000C6C6C600FFFFFF0000000000FFFFFF00FFFFFF008484
      84000000000000000000000000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B0000007B0000007B000000FF0000007B0000007B0000007B00000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000FFFFFF0000000000000000000000000084848400FFFF
      FF008400000084000000FFFFFF008400000084000000FFFFFF00840000008400
      0000FFFFFF008400000084000000FFFFFF0000000000FFFFFF00FFFFFF008484
      84000000000000000000000000007B0000007B00000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000007B0000007B0000007B0000007B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000FFFFFF0000000000000000000000000084848400FFFF
      FF00C6C6C60084000000840000008400000084000000FFFFFF00840000008400
      0000FFFFFF008400000084000000FFFFFF0000000000FFFFFF00FFFFFF008484
      84000000000000000000000000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000007B0000007B0000007B00000000007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00007B0000007B0000000000007B7B
      7B007B7B7B007B7B7B000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008400000084000000FFFFFF00840000008400
      0000FFFFFF008400000084000000FFFFFF0000000000FFFFFF00FFFFFF008484
      84000000000000000000000000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000007B0000007B0000007B0000007B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00007B0000007B0000FFFFFF000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00840000008400000084000000C6C6C600FFFFFF00840000008400
      00008400000084000000C6C6C600FFFFFF0000000000FFFFFF00FFFFFF008484
      84000000000000000000000000007B00000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF00000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000007B000000000000007B0000007B00000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00007B0000007B0000FFFFFF000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008484
      84000000000000000000000000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000000000000000000000FF0000007B0000007B00000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00007B0000007B0000FFFFFF000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      0000FFFFFF00FFFFFF00C6C6C60000000000FFFFFF0000000000C6C6C6008484
      8400000000000000000000000000BDBDBD0000000000FFFFFF007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B00000000000000000000000000000000000000FF0000007B0000007B000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B00000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      84000000000000000000000000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B0000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B0000000000000000000000000000000000000000000000FF0000007B000000
      7B00000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000048000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFFFC0000000000000000000FFFFC000
      0000000000000000FFFFC0000000000000000000FFFFC0000000000000000000
      FFFFC0000000000000000000FFFFC0000000000000000000FFFFC00000000000
      00000000FFFFC0000000000000000000FFFFC0000000000000000000C1FFC000
      0000000000000000007FC0000000000000000000007FC0000000000000000000
      007FC0000000000000000000007FC0000000000000000000007FC00000000000
      00000000007FC000000000000000000081FFC0000000000000000000E3FFC000
      0000000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFE0006000000C7FE71FF1F83FC000000000087F8607E1E00FC00
      0000000087E0601E1C007C000000000087806006180038000000000086006000
      1800380000000000840060001000100000000000800060021000100000000000
      80006006100013801F0000008600601E100013801F0000008780607E10001780
      1F00000087E061FE18003B801F0000008FF8E7FE38003B803F000000FFFFFFFF
      FC007F807F000000FFFFFFFFFE00FF80FF000000FFFFFFFFFF83FF81FF000000
      FFFFFFFFFFFFFFFFFF000000FFFFFFFF3FFFFFFFFF000000FFFFFFFE1FFFFFFF
      FF000000FFFFFFFC1FF87FF0FF000000FFFFFFF83FE07FE07F000000FFFFFFF0
      7FC0FFF03F000000FFFFFE00FF81FFF81F000000F001FC01FF03FFFC0F000000
      E001F803FE07FFFE07000000E001F003FE07FFFE07000000E003F001FF03FFFC
      0F000000FFFFF001FF81FFF81F000000FFFFF001FFC0FFF03F000000FFFFF001
      FFE07FE07F000000FFFFF803FFF0FFE1FF000000FFFFFC07FFFFFFFFFF000000
      FFFFFE0FFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
      FF000000FFFFFFFFFFFFFFEFFF000000FFFFFFFFFE000FC7FF000000FF1FFFFF
      FC000F87CF000000FE1FFFFFFC000F8387000000FE1FC0000C000F8107000000
      FE1FC0000C000FC00F000000F101C0000C000FC01F000000E001C0000C000FE0
      3F000000E001C0000C000FF01F000000E023C0000C000FF01F000000FE1FC000
      0C000FE00F000000FE1FC0000C000FE207000000FE1FC0000C000FC703000000
      FE3FC0000C000FC783000000FFFFC0000C000FEFC7000000FFFFFFFFFFFFFFFF
      EF000000FFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  inherited Acciones: TActionList [62]
    Left = 1157
    Top = 186
    inherited Aprint: TAction [2]
      ShortCut = 0
    end
    inherited AEditar: TAction [3]
      ShortCut = 0
    end
    inherited AGuardar: TAction [4]
      ShortCut = 114
    end
    inherited ACancelar: TAction [5]
    end
    inherited ABorrar: TAction [6]
      ShortCut = 0
    end
    inherited ALocalizar: TAction [7]
    end
    inherited Asalir: TAction [8]
      ShortCut = 16507
    end
    inherited AAnular: TAction
      Caption = 'Anular'
      ImageIndex = 3
    end
    object Clientes: TAction
      Caption = 'Clientes'
      Hint = 'F11 Lista Clientes'
      ShortCut = 122
      OnExecute = ClientesExecute
    end
    object ACotizacion: TAction
      Caption = 'Fact Cotiz'
      ImageIndex = 5
      OnExecute = ACotizacionExecute
    end
    object Conduce2Factura: TAction
      Caption = 'Facturar Conduces'
      ImageIndex = 5
    end
    object AGetProduct: TAction
      Caption = 'AGetProduct'
      ShortCut = 123
      OnExecute = AGetProductExecute
    end
    object AOrdComp2Factura: TAction
      Caption = 'Fact Pedido'
      OnExecute = AOrdComp2FacturaExecute
    end
    object SendMail: TAction
      Caption = 'eMail'
      OnExecute = SendMailExecute
    end
    object AProductoDet: TAction
      Caption = 'Detalles del Producto'
      ShortCut = 16496
      OnExecute = AProductoDetExecute
    end
    object AFacturaDetEspec: TAction
      Caption = 'Especificaciones Tecnicas de Producto'
    end
    object AObservacion: TAction
      Caption = 'Observaciones'
    end
  end
  inherited RS: TADODataSet [63]
    BeforePost = RSBeforePost
    OnNewRecord = RSNewRecord
    CommandText = 'rsFactura;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 1238
    Top = 139
    object RSidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
      OnValidate = RSidClienteValidate
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object RSDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object RSTelefono: TStringField
      FieldName = 'Telefono'
    end
    object RSidEmpleado: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'idEmpleado'
      Required = True
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
      OnValidate = RSFechaValidate
    end
    object RSHora: TDateTimeField
      FieldName = 'Hora'
      DisplayFormat = 'HH:MM'
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
    end
    object RSCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object RSCredito: TBooleanField
      FieldName = 'Credito'
    end
    object RSidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object RSSubTotal: TBCDField
      FieldName = 'SubTotal'
      Required = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSItbis: TBCDField
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDescuento: TBCDField
      FieldName = 'Descuento'
      OnValidate = RSDescuentoValidate
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object RSTotal: TBCDField
      FieldName = 'Total'
      Required = True
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object RSNota: TStringField
      DisplayWidth = 600
      FieldName = 'Nota'
      Size = 600
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object RSSector: TStringField
      FieldName = 'Sector'
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object RSCotizacion: TStringField
      FieldName = 'Cotizacion'
      OnValidate = RSCotizacionValidate
      Size = 16
    end
    object RSidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object RSidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object RSPagaItbis: TBooleanField
      FieldName = 'PagaItbis'
      OnChange = RSPagaItbisChange
    end
    object RSidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object RSOrdComp: TStringField
      FieldName = 'OrdComp'
      OnValidate = RSOrdCompValidate
      Size = 16
    end
    object RSFax: TStringField
      FieldName = 'Fax'
    end
    object RSeMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object RSPorcDesc: TFloatField
      FieldName = 'PorcDesc'
      OnValidate = RSPorcDescValidate
    end
    object RSCondicion: TIntegerField
      FieldName = 'Condicion'
      OnValidate = RSCondicionValidate
    end
    object RSFechaCancelado: TDateTimeField
      FieldName = 'FechaCancelado'
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = RSidMonedaValidate
    end
    object RSidCobrador: TIntegerField
      FieldName = 'idCobrador'
    end
    object RSidAlmacen: TStringField
      FieldName = 'idAlmacen'
      OnValidate = RSidAlmacenValidate
      Size = 16
    end
    object RSCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RSNota2: TStringField
      FieldName = 'Nota2'
      Size = 600
    end
    object RSClienteRNC: TStringField
      FieldName = 'ClienteRNC'
      Required = True
    end
    object RSidCondicion: TStringField
      FieldName = 'idCondicion'
      Required = True
      OnValidate = RSidCondicionValidate
      Size = 16
    end
    object RSTasa: TBCDField
      FieldName = 'Tasa'
      Required = True
      Precision = 18
      Size = 2
    end
    object RSObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object RSTipoAnulacion: TStringField
      FieldName = 'TipoAnulacion'
      Size = 2
    end
    object RSidReferencia: TGuidField
      FieldName = 'idReferencia'
      FixedChar = True
      Size = 38
    end
    object RSCobrada: TBooleanField
      FieldName = 'Cobrada'
    end
  end
  inherited DS2: TwwDataSource [64]
    Left = 1352
    Top = 189
  end
  inherited RSDet: TADODataSet
    BeforePost = RSDetBeforePost
    AfterPost = RSDetAfterPost
    AfterDelete = RSDetAfterPost
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsFacturaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 1295
    Top = 140
    object RSDetidProducto: TStringField
      DisplayLabel = 'Producto'
      DisplayWidth = 19
      FieldName = 'idProducto'
      OnValidate = RSDetidProductoValidate
      Size = 25
    end
    object RSDetProducto: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 47
      FieldName = 'Producto'
      Size = 120
    end
    object RSDetCantidad: TFloatField
      DisplayWidth = 8
      FieldName = 'Cantidad'
      OnValidate = RSDetCantidadValidate
    end
    object RSDetidUnidad: TStringField
      DisplayLabel = 'Unidad'
      DisplayWidth = 10
      FieldName = 'idUnidad'
      Size = 16
    end
    object RSDetDescuento: TBCDField
      DisplayLabel = 'Desc'
      DisplayWidth = 11
      FieldName = 'Descuento'
      OnValidate = RSDetDescuentoValidate
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetItbis: TBCDField
      DisplayWidth = 10
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetLineTotal: TBCDField
      DisplayLabel = 'Importe'
      DisplayWidth = 17
      FieldName = 'LineTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetPrecio: TBCDField
      FieldName = 'Precio'
      Visible = False
      OnValidate = RSDetPrecioValidate
      DisplayFormat = '#,0.00###'
      Precision = 19
      Size = 5
    end
    object RSDetidFacturaDet: TGuidField
      DisplayWidth = 38
      FieldName = 'idFacturaDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidFactura: TGuidField
      DisplayWidth = 38
      FieldName = 'idFactura'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetLinea: TIntegerField
      FieldName = 'Linea'
      Visible = False
    end
    object RSDetidCargo: TGuidField
      FieldName = 'idCargo'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Visible = False
      Size = 16
    end
  end
  object ClienteAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'ClienteAct;1'
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
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1173
    Top = 136
    object ClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object ClienteActContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object ClienteActLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object ClienteActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object ClienteActidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object ClienteActDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object ClienteActSector: TStringField
      FieldName = 'Sector'
    end
    object ClienteActCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object ClienteActTelefono: TStringField
      FieldName = 'Telefono'
    end
    object ClienteActNoPagaItbis: TBooleanField
      FieldName = 'NoPagaItbis'
    end
    object ClienteActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object ClienteActFax: TStringField
      FieldName = 'Fax'
    end
    object ClienteActeMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object ClienteActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object ClienteActCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object ClienteActRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object ClienteActidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object ClienteActNotas: TStringField
      FieldName = 'Notas'
      Size = 2000
    end
  end
  object dsEstacionAct: TDataSource
    DataSet = ClienteAct
    Left = 1225
    Top = 194
  end
  object ProductoAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
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
    Left = 1041
    Top = 136
    object ProductoActidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object ProductoActProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object ProductoActAutoDescuento: TBooleanField
      FieldName = 'AutoDescuento'
    end
    object ProductoActExistencia: TBCDField
      FieldName = 'Existencia'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object ProductoActCostoPromedio: TBCDField
      FieldName = 'CostoPromedio'
      ReadOnly = True
      Precision = 2
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
    object ProductoActMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object ProductoActReorden: TFloatField
      FieldName = 'Reorden'
    end
    object ProductoActCambiarPrecio: TBooleanField
      FieldName = 'CambiarPrecio'
    end
    object ProductoActidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object ProductoActidMoneda: TIntegerField
      FieldName = 'idMoneda'
      ReadOnly = True
    end
    object ProductoActCalcExistencia: TBooleanField
      FieldName = 'CalcExistencia'
    end
    object ProductoActMonedaProducto: TIntegerField
      FieldName = 'MonedaProducto'
    end
    object ProductoActPrecioContProd: TBCDField
      FieldName = 'PrecioContProd'
      Precision = 19
    end
    object ProductoActPrecioCredProd: TBCDField
      FieldName = 'PrecioCredProd'
      Precision = 19
    end
    object ProductoActDescNivel1: TFloatField
      FieldName = 'DescNivel1'
    end
    object ProductoActDescNivel2: TFloatField
      FieldName = 'DescNivel2'
    end
    object ProductoActDescNivel3: TFloatField
      FieldName = 'DescNivel3'
    end
    object ProductoActDescuentoPermitido: TFloatField
      FieldName = 'DescuentoPermitido'
    end
    object ProductoActDescuentoVence: TDateTimeField
      FieldName = 'DescuentoVence'
    end
    object ProductoActPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      ReadOnly = True
      Precision = 21
    end
    object ProductoActPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
      ReadOnly = True
      Precision = 21
    end
    object ProductoActParaVender: TBooleanField
      FieldName = 'ParaVender'
    end
  end
  object dsProductoAct: TDataSource
    DataSet = ProductoAct
    Left = 1128
    Top = 256
  end
  object SPTieneCredito: TADOCommand
    CommandText = 'SPTieneCredito;1'
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
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MasMonto'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TieneCredito'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 1189
    Top = 92
  end
  object SPCreditoAutorizacion: TADOCommand
    CommandText = 'SPCreditoAutorizacion;1'
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
        Name = '@Autorizacion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Descripcion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Referencia'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Clase'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CreditoAutorizacion'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 1309
    Top = 90
  end
  object AnularFact: TADOCommand
    CommandText = 'SPFacturaAnular;1'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Anulado'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end
      item
        Name = '@TipoAnulacion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 1065
    Top = 92
  end
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'spVendedores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 929
    Top = 136
  end
  object dsEmpleado: TDataSource
    DataSet = Empleado
    Left = 1042
    Top = 258
  end
  object Cotizacion2Fact: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Cotizacion2Fact;1'
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
        Name = '@idCotizacion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 1571
    Top = 98
    object Cotizacion2FactidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object Cotizacion2FactidCotizacionStatus: TStringField
      FieldName = 'idCotizacionStatus'
      Size = 16
    end
    object Cotizacion2FactidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object Cotizacion2FactCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object Cotizacion2FactContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object Cotizacion2FactDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object Cotizacion2FactSector: TStringField
      FieldName = 'Sector'
    end
    object Cotizacion2FactCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object Cotizacion2FactTelefono: TStringField
      FieldName = 'Telefono'
    end
    object Cotizacion2FactidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object Cotizacion2FactFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object Cotizacion2FactHora: TDateTimeField
      FieldName = 'Hora'
    end
    object Cotizacion2FactCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object Cotizacion2FactCredito: TBooleanField
      FieldName = 'Credito'
    end
    object Cotizacion2FactidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object Cotizacion2FactSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object Cotizacion2FactNota: TStringField
      FieldName = 'Nota'
      Size = 50
    end
    object Cotizacion2FactUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object Cotizacion2FactTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object Cotizacion2FactidCotizacionDet: TGuidField
      FieldName = 'idCotizacionDet'
      FixedChar = True
      Size = 38
    end
    object Cotizacion2FactidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object Cotizacion2FactProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object Cotizacion2FactCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object Cotizacion2FactPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object Cotizacion2FactDescDet: TBCDField
      FieldName = 'DescDet'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactItbisDet: TBCDField
      FieldName = 'ItbisDet'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactLineTotal: TBCDField
      FieldName = 'LineTotal'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object Cotizacion2FactidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object Cotizacion2FactPorcDesc: TFloatField
      FieldName = 'PorcDesc'
    end
    object Cotizacion2FactCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object Cotizacion2FactidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object Cotizacion2FactCotizacionstatus: TStringField
      FieldName = 'Cotizacionstatus'
      Size = 50
    end
    object Cotizacion2Factfacturable: TBooleanField
      FieldName = 'facturable'
    end
    object Cotizacion2FactidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object Cotizacion2Factpagaitbis: TBooleanField
      FieldName = 'pagaitbis'
    end
    object Cotizacion2Factreferencia: TStringField
      FieldName = 'referencia'
    end
  end
  object ClienteObra: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'ClienteObraList;1'
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
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1389
    Top = 138
    object ClienteObraidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object ClienteObraidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteObraDireccionObra: TStringField
      FieldName = 'DireccionObra'
      Size = 120
    end
    object ClienteObraSectorObra: TStringField
      FieldName = 'SectorObra'
      Size = 50
    end
    object ClienteObraCiudadObra: TStringField
      FieldName = 'CiudadObra'
    end
    object ClienteObraTelefonoObra: TStringField
      FieldName = 'TelefonoObra'
    end
    object ClienteObraFaxObra: TStringField
      FieldName = 'FaxObra'
    end
    object ClienteObraCelularObra: TStringField
      FieldName = 'CelularObra'
    end
    object ClienteObraContactoObra: TStringField
      FieldName = 'ContactoObra'
      Size = 40
    end
  end
  object dsClienteObra: TDataSource
    DataSet = ClienteObra
    Left = 1449
    Top = 174
  end
  object Factura2Cxc: TADOCommand
    CommandText = 'Factura2CxC;1'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 1629
    Top = 134
  end
  object rptFactura: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'RPTFactura;1'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 1262
    Top = 366
    object rptFacturaidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rptFacturaFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object rptFacturaCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rptFacturaContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object rptFacturaDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rptFacturaSector: TStringField
      FieldName = 'Sector'
    end
    object rptFacturaCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rptFacturaTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rptFacturaEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object rptFacturaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rptFacturaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rptFacturaCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object rptFacturaCondicion: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object rptFacturaCredito: TBooleanField
      FieldName = 'Credito'
    end
    object rptFacturaSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object rptFacturaItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object rptFacturaDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object rptFacturaTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rptFacturaNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object rptFacturaidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object rptFacturaidFacturaDet: TGuidField
      FieldName = 'idFacturaDet'
      FixedChar = True
      Size = 38
    end
    object rptFacturaDetidProducto: TStringField
      FieldName = 'DetidProducto'
      Size = 25
    end
    object rptFacturaDetProducto: TStringField
      FieldName = 'DetProducto'
      Size = 120
    end
    object rptFacturaDetCantidad: TFloatField
      FieldName = 'DetCantidad'
    end
    object rptFacturaDetPrecio: TBCDField
      FieldName = 'DetPrecio'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetDescuento: TBCDField
      FieldName = 'DetDescuento'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetITBIS: TBCDField
      FieldName = 'DetITBIS'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetLineTotal: TBCDField
      FieldName = 'DetLineTotal'
      Precision = 18
      Size = 2
    end
    object rptFacturacoCompania: TStringField
      FieldName = 'coCompania'
      Size = 50
    end
    object rptFacturacoDireccion: TStringField
      FieldName = 'coDireccion'
      Size = 120
    end
    object rptFacturacoTelefono: TStringField
      FieldName = 'coTelefono'
      Size = 15
    end
    object rptFacturacoFax: TStringField
      FieldName = 'coFax'
      Size = 15
    end
    object rptFacturacoRNC: TStringField
      FieldName = 'coRNC'
    end
    object rptFacturaOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object rptFacturaidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rptFacturaidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object rptFacturaVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
      ReadOnly = True
    end
    object rptFacturaNota2: TStringField
      FieldName = 'Nota2'
      Size = 600
    end
    object rptFacturaCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rptFacturaClienteRNC: TStringField
      FieldName = 'ClienteRNC'
    end
    object rptFacturaTipoNCF: TStringField
      FieldName = 'TipoNCF'
      Size = 50
    end
    object rptFacturaEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object rptFacturaidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rptFacturaMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rptFacturaFax: TStringField
      FieldName = 'Fax'
    end
    object rptFacturaLinea: TIntegerField
      FieldName = 'Linea'
    end
    object rptFacturaNumeroSuplidor: TStringField
      FieldName = 'NumeroSuplidor'
      Size = 16
    end
    object rptFacturaPrecioDia: TBCDField
      FieldName = 'PrecioDia'
      Precision = 19
      Size = 2
    end
    object rptFacturaDias: TBCDField
      FieldName = 'Dias'
      Precision = 19
      Size = 2
    end
    object rptFacturaCelular: TStringField
      FieldName = 'Celular'
    end
    object rptFacturahora: TDateTimeField
      FieldName = 'hora'
    end
    object rptFacturaObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object rptFacturaemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object rptFacturaUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
  end
  object dsRptFactura: TDataSource
    DataSet = rptFactura
    Left = 1338
    Top = 364
  end
  object FacturaRPT: TppReport
    AutoStop = False
    DataPipeline = plrptFactura
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Factura'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 256
    Template.FileName = '\\dynamics\Sistemas\Sistemas\Facturaprocem01.rtm'
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 1502
    Top = 364
    Version = '7.04'
    mmColumnWidth = 190500
    DataPipelineName = 'plrptFactura'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53711
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'coCompania'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 8932
        mmLeft = 0
        mmTop = 0
        mmWidth = 145786
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'coRNC'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 7938
        mmTop = 11906
        mmWidth = 57944
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CoDireccion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7938
        mmWidth = 131763
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'coTelefono'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 15875
        mmWidth = 33338
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'coFax'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 15875
        mmWidth = 31221
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 12171
        mmLeft = 87842
        mmTop = 11906
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Fact. #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 152665
        mmTop = 13229
        mmWidth = 15346
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Factura'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 13229
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Cond/Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 89694
        mmTop = 13229
        mmWidth = 18256
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'Condicion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4498
        mmLeft = 109009
        mmTop = 13229
        mmWidth = 43127
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 23548
        mmLeft = 0
        mmTop = 29898
        mmWidth = 190236
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 47625
        mmWidth = 15452
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 25929
        mmTop = 47625
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 107156
        mmTop = 47625
        mmWidth = 15071
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 134144
        mmTop = 47625
        mmWidth = 10710
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 172562
        mmTop = 47625
        mmWidth = 16087
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'Cliente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 31221
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'Cliente'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 31221
        mmWidth = 91017
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = 'FACTURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 160602
        mmTop = 0
        mmWidth = 28575
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 1.000000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 46038
        mmWidth = 188913
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 89694
        mmTop = 18521
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Fecha'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 109009
        mmTop = 18521
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Ref / OP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 18521
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Referencia'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4763
        mmLeft = 168805
        mmTop = 18256
        mmWidth = 20638
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Direccion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3683
        mmLeft = 21960
        mmTop = 36777
        mmWidth = 109009
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'Direccion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 36248
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Telefono'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4784
        mmLeft = 153723
        mmTop = 30956
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Telefono :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 132821
        mmTop = 31221
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'Sector'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3683
        mmLeft = 153723
        mmTop = 36777
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = 'Sector :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 132821
        mmTop = 36777
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'idCliente'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4763
        mmLeft = 22490
        mmTop = 31221
        mmWidth = 16933
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plrptFactura
        DataField = 'Credito'
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 184944
        mmTop = 7408
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'RNC :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 41275
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'ClienteRNC'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 153723
        mmTop = 41275
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Itbis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4128
        mmLeft = 154792
        mmTop = 47625
        mmWidth = 7260
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'NCF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 116681
        mmTop = 24871
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'CompFiscal'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 137319
        mmTop = 24871
        mmWidth = 51858
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label22'
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 40746
        mmTop = 15875
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 15875
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'RNC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 11906
        mmWidth = 7673
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'TipoNCF'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3260
        mmLeft = 265
        mmTop = 25400
        mmWidth = 99748
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'DetCantidad'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 105569
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DetidProducto'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'DetPrecio'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 123296
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'DetLineTotal'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 163777
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'DetProducto'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 0
        mmWidth = 78581
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'DetITBIS'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Descuento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 5027
        mmWidth = 26458
        BandType = 8
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        BlankWhenZero = True
        DataField = 'Descuento'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 5027
        mmWidth = 27252
        BandType = 8
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'ITBIS :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 9525
        mmWidth = 26458
        BandType = 8
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        BlankWhenZero = True
        DataField = 'Itbis'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 9525
        mmWidth = 27252
        BandType = 8
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Sub Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 529
        mmWidth = 26458
        BandType = 8
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'SubTotal'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 529
        mmWidth = 27252
        BandType = 8
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 14023
        mmWidth = 26458
        BandType = 8
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'Total'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 14023
        mmWidth = 27252
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 13229
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Recibido Conforme'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 14023
        mmWidth = 59796
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 65881
        mmTop = 13229
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Despachado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 14023
        mmWidth = 59267
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 2381
        mmTop = 0
        mmWidth = 187855
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 0
        mmWidth = 19727
        BandType = 8
      end
      object ppLabel25: TppLabel
        UserName = 'Label23'
        Caption = '(Nombre y C'#233'dula)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 65617
        mmTop = 17727
        mmWidth = 59796
        BandType = 8
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 529
        mmWidth = 7673
        BandType = 8
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 5027
        mmWidth = 7673
        BandType = 8
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 9525
        mmWidth = 7673
        BandType = 8
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 14023
        mmWidth = 7673
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Nota'
        DataPipeline = plrptFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4498
        mmLeft = 794
        mmTop = 0
        mmWidth = 190236
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'Nota2'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 8202
        mmLeft = 794
        mmTop = 5292
        mmWidth = 189971
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object OrdComp2Fact: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'OrdComp2Fact;1'
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
    Left = 1549
    Top = 144
    object OrdComp2FactidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object OrdComp2FactOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object OrdComp2FactidOrdCompStatus: TStringField
      FieldName = 'idOrdCompStatus'
      Size = 16
    end
    object OrdComp2FactidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object OrdComp2FactCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object OrdComp2FactContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object OrdComp2FactDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object OrdComp2FactSector: TStringField
      FieldName = 'Sector'
    end
    object OrdComp2FactCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object OrdComp2FactTelefono: TStringField
      FieldName = 'Telefono'
    end
    object OrdComp2FactidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object OrdComp2FactFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object OrdComp2FactHora: TDateTimeField
      FieldName = 'Hora'
    end
    object OrdComp2FactCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object OrdComp2FactCredito: TBooleanField
      FieldName = 'Credito'
    end
    object OrdComp2FactidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object OrdComp2FactSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object OrdComp2FactNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object OrdComp2FactUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object OrdComp2FactTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object OrdComp2FactidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object OrdComp2FactidOrdCompDet: TGuidField
      FieldName = 'idOrdCompDet'
      FixedChar = True
      Size = 38
    end
    object OrdComp2FactidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object OrdComp2FactProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object OrdComp2FactCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object OrdComp2FactPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object OrdComp2FactDescDet: TBCDField
      FieldName = 'DescDet'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactItbisDet: TBCDField
      FieldName = 'ItbisDet'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactLineTotal: TBCDField
      FieldName = 'LineTotal'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object OrdComp2FactCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object OrdComp2FactPorcDesc: TFloatField
      FieldName = 'PorcDesc'
    end
    object OrdComp2Factcondicion: TIntegerField
      FieldName = 'condicion'
    end
    object OrdComp2FactidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object OrdComp2FactOrdCompStatus: TStringField
      FieldName = 'OrdCompStatus'
      Size = 50
    end
    object OrdComp2FactFacturable: TBooleanField
      FieldName = 'Facturable'
    end
    object OrdComp2FactidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object OrdComp2Factreferencia: TStringField
      FieldName = 'referencia'
    end
    object OrdComp2Factpagaitbis: TBooleanField
      FieldName = 'pagaitbis'
    end
  end
  object Almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Almacenes;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 985
    Top = 134
    object AlmacenAlmacen: TStringField
      DisplayWidth = 50
      FieldName = 'Almacen'
      Size = 50
    end
    object AlmacenidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Visible = False
      Size = 16
    end
  end
  object dsAlmacen: TDataSource
    DataSet = Almacen
    Left = 1035
    Top = 180
  end
  object Factura2ProMov: TADOCommand
    CommandText = 'svFactura2ProMov;1'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 1474
    Top = 268
  end
  object PopupMenu1: TPopupMenu
    Left = 1708
    Top = 156
    object ProductoDet1: TMenuItem
      Action = AProductoDet
    end
    object EspecificacionesTecnicasdeProducto1: TMenuItem
      Action = AFacturaDetEspec
    end
  end
  object qryCondicion: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  svCondicion'
      'ORDER BY'
      '  IdCondicion')
    Left = 1471
    Top = 139
    object qryCondicionidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object qryCondicionCondicion: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object qryCondicionCredito: TBooleanField
      FieldName = 'Credito'
    end
    object qryCondicionDias: TIntegerField
      FieldName = 'Dias'
    end
    object qryCondicionPrecioContado: TBooleanField
      FieldName = 'PrecioContado'
    end
    object qryCondicionNoCreditoCheck: TBooleanField
      FieldName = 'NoCreditoCheck'
    end
  end
  object dsCondicion: TDataSource
    DataSet = qryCondicion
    Left = 1531
    Top = 187
  end
  object plrptFactura: TppDBPipeline
    DataSource = dsRptFactura
    UserName = 'plRptFactura'
    Left = 1418
    Top = 364
  end
  object rsEspec: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'rsFacturaDetEspec;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 1489
    Top = 96
    object rsEspecidFacturaDet: TGuidField
      FieldName = 'idFacturaDet'
      FixedChar = True
      Size = 38
    end
    object rsEspecidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rsEspecEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object rsEspecFechaEspec: TDateTimeField
      FieldName = 'FechaEspec'
    end
  end
  object GetProductoEspec: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'GetProductoEspec;1'
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
      end>
    Left = 1413
    Top = 96
    object GetProductoEspecEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object GetProductoEspecFechaEspec: TDateTimeField
      FieldName = 'FechaEspec'
    end
  end
  object dsClienteAct: TDataSource
    DataSet = ClienteAct
    Left = 1392
    Top = 258
  end
  object cBuscarNCFFact: TADOCommand
    CommandText = 'svBuscarCompFiscal;1'
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
        Name = '@NCF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 19
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 911
    Top = 184
  end
  object OrdCompEnt2Fact: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'OrdCompEnt2Fact;1'
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
    Left = 1302
    Top = 262
    object OrdCompEnt2FactidOrdCompEnt: TGuidField
      FieldName = 'idOrdCompEnt'
      FixedChar = True
      Size = 38
    end
    object OrdCompEnt2FactOrdCompEnt: TStringField
      FieldName = 'OrdCompEnt'
      Size = 16
    end
    object OrdCompEnt2FactidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object OrdCompEnt2FactOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object OrdCompEnt2FactidOrdCompStatus: TStringField
      FieldName = 'idOrdCompStatus'
      Size = 16
    end
    object OrdCompEnt2FactidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object OrdCompEnt2FactCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object OrdCompEnt2FactContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object OrdCompEnt2FactDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object OrdCompEnt2FactSector: TStringField
      FieldName = 'Sector'
    end
    object OrdCompEnt2FactCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object OrdCompEnt2FactTelefono: TStringField
      FieldName = 'Telefono'
    end
    object OrdCompEnt2FactidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object OrdCompEnt2FactFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object OrdCompEnt2FactHora: TDateTimeField
      FieldName = 'Hora'
    end
    object OrdCompEnt2FactCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object OrdCompEnt2FactCredito: TBooleanField
      FieldName = 'Credito'
    end
    object OrdCompEnt2FactidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object OrdCompEnt2FactSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object OrdCompEnt2FactItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object OrdCompEnt2FactidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object OrdCompEnt2FactDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object OrdCompEnt2FactNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object OrdCompEnt2FactUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object OrdCompEnt2FactTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object OrdCompEnt2FactidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object OrdCompEnt2FactidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object OrdCompEnt2FactCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object OrdCompEnt2FactPorcDesc: TFloatField
      FieldName = 'PorcDesc'
    end
    object OrdCompEnt2Factcondicion: TIntegerField
      FieldName = 'condicion'
    end
    object OrdCompEnt2FactidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object OrdCompEnt2Factreferencia: TStringField
      FieldName = 'referencia'
    end
    object OrdCompEnt2Factpagaitbis: TBooleanField
      FieldName = 'pagaitbis'
    end
    object OrdCompEnt2FactidOrdCompDet: TGuidField
      FieldName = 'idOrdCompDet'
      FixedChar = True
      Size = 38
    end
    object OrdCompEnt2FactidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object OrdCompEnt2FactProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object OrdCompEnt2FactCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object OrdCompEnt2FactPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
      Size = 5
    end
    object OrdCompEnt2FactidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object OrdCompEnt2FactDescDet: TFloatField
      FieldName = 'DescDet'
      ReadOnly = True
    end
    object OrdCompEnt2FactItbisDet: TFloatField
      FieldName = 'ItbisDet'
      ReadOnly = True
    end
    object OrdCompEnt2FactLineTotal: TFloatField
      FieldName = 'LineTotal'
      ReadOnly = True
    end
    object OrdCompEnt2FactOrdCompStatus: TStringField
      FieldName = 'OrdCompStatus'
      Size = 50
    end
    object OrdCompEnt2FactFacturable: TBooleanField
      FieldName = 'Facturable'
    end
  end
  object GenCodif: TADOCommand
    CommandText = 'svGenCodifFactura;1'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 1199
    Top = 260
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 806
    Top = 126
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15922418
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      TextColor = clWindowText
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 806
    Top = 26
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15922418
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      TextColor = clWindowText
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 804
    Top = 74
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15922418
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      TextColor = clWindowText
    end
  end
  object luCondicion: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  svCondicion'
      'ORDER BY'
      '  IdCondicion')
    Left = 1626
    Top = 267
    object StringField1: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object StringField2: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object BooleanField1: TBooleanField
      FieldName = 'Credito'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Dias'
    end
    object BooleanField2: TBooleanField
      FieldName = 'PrecioContado'
    end
    object BooleanField3: TBooleanField
      FieldName = 'NoCreditoCheck'
    end
  end
  object dslucondicion: TDataSource
    DataSet = luCondicion
    Left = 1556
    Top = 261
  end
end

inherited ProMov: TProMov
  Left = 391
  Top = 74
  ActiveControl = dxDBEdit4
  Caption = 'Movimientos de Almacen'
  ClientHeight = 535
  ClientWidth = 859
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 9
    Top = 54
    Width = 54
    Height = 13
    Caption = 'Movimiento'
  end
  object Label2: TLabel [1]
    Left = 17
    Top = 78
    Width = 46
    Height = 13
    Caption = 'Concepto'
  end
  object Label3: TLabel [2]
    Left = 259
    Top = 53
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label4: TLabel [3]
    Left = 584
    Top = 54
    Width = 52
    Height = 13
    Caption = 'Referencia'
  end
  inherited Bevel1: TBevel
    Width = 859
  end
  object Label5: TLabel [5]
    Left = 18
    Top = 102
    Width = 45
    Height = 13
    Caption = 'Tipo Mov'
  end
  object Label6: TLabel [6]
    Left = 341
    Top = 148
    Width = 67
    Height = 13
    Caption = 'Entregado por'
  end
  object Label7: TLabel [7]
    Left = 7
    Top = 148
    Width = 60
    Height = 13
    Caption = 'Recibido por'
  end
  object Label8: TLabel [8]
    Left = 368
    Top = 101
    Width = 41
    Height = 13
    Caption = 'Almacen'
  end
  object Label9: TLabel [9]
    Left = 8
    Top = 461
    Width = 28
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Notas'
  end
  object Label12: TLabel [10]
    Left = 132
    Top = 457
    Width = 45
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Posteado'
  end
  object Label13: TLabel [11]
    Left = 367
    Top = 125
    Width = 42
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Mover a '
  end
  object Label14: TLabel [12]
    Left = 444
    Top = 451
    Width = 45
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Mensajes'
  end
  object Label15: TLabel [13]
    Left = 285
    Top = 457
    Width = 59
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Ultimo Cierre'
  end
  object Label16: TLabel [14]
    Left = 25
    Top = 124
    Width = 38
    Height = 13
    Caption = 'Suplidor'
  end
  object Label10: TLabel [15]
    Left = 407
    Top = 52
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 859
    inherited nuevo: TwwNavButton
      Width = 96
    end
    inherited editar: TwwNavButton
      Left = 96
      Width = 96
    end
    inherited guardar: TwwNavButton
      Left = 192
      Width = 96
    end
    inherited cancelar: TwwNavButton
      Left = 288
      Width = 96
    end
    inherited borrar: TwwNavButton
      Left = 384
      Width = 95
    end
    inherited BLocalizarx: TwwNavButton
      Left = 479
      Width = 95
    end
    object bPrint: TwwNavButton [6]
      Left = 574
      Top = 0
      Width = 95
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsCustom
    end
    object bRequisicion: TwwNavButton [7]
      Left = 669
      Top = 0
      Width = 95
      Height = 42
      Action = ARequisicion
      ImageIndex = 5
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 764
      Width = 95
      Index = 8
    end
  end
  object dxDBEdit1: TdxDBEdit [17]
    Left = 71
    Top = 48
    Width = 104
    TabOrder = 0
    TabStop = False
    DataField = 'ProMov'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [18]
    Left = 71
    Top = 72
    Width = 775
    TabOrder = 4
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Concepto'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit3: TdxDBEdit [19]
    Left = 299
    Top = 48
    Width = 92
    TabOrder = 1
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit4: TdxDBEdit [20]
    Left = 641
    Top = 48
    Width = 111
    TabOrder = 2
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit5: TdxDBEdit [21]
    Left = 695
    Top = 503
    Width = 148
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    Style.BorderStyle = xbsNone
    Style.ButtonTransparence = ebtAlways
    TabOrder = 15
    TabStop = False
    Anchors = [akLeft, akRight, akBottom]
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'Usuario'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    Height = 14
    StoredValues = 65
  end
  inherited Grid: TwwDBGrid
    Left = 638
    Top = 376
    Width = 215
    Height = 67
    ControlType.Strings = (
      'TipoDescripcion;CustomEdit;wwDBLookupComboDlg1;F')
    DataSource = nil
    TabOrder = 12
    UseTFields = False
    Visible = False
  end
  object dxDBLookupEdit1: TdxDBLookupEdit [23]
    Left = 71
    Top = 96
    Width = 267
    TabOrder = 5
    DataField = 'idProMovTipo'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'ProMovTipo'
    KeyFieldName = 'idProMovTipo'
    ListSource = dsProMovTipo
    LookupKeyValue = Null
  end
  object dxDBEdit6: TdxDBEdit [24]
    Left = 416
    Top = 144
    Width = 430
    TabOrder = 11
    Anchors = [akLeft, akTop, akRight]
    DataField = 'EntregadoPor'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit7: TdxDBEdit [25]
    Left = 72
    Top = 144
    Width = 265
    TabOrder = 10
    DataField = 'RecibidoPor'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object salida: TdxDBCheckEdit [26]
    Left = 180
    Top = 49
    Width = 57
    Style.Edges = []
    TabOrder = 3
    Caption = 'Salida'
    DataField = 'Salida'
    DataSource = DS
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object dxDBLookupEdit2: TdxDBLookupEdit [27]
    Left = 414
    Top = 96
    Width = 432
    TabOrder = 6
    Anchors = [akLeft, akTop, akRight]
    DataField = 'idAlmacen'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'Almacen'
    KeyFieldName = 'idAlmacen'
    ListSource = dsAlmacen
    LookupKeyValue = Null
  end
  object dxDBCheckEdit1: TdxDBCheckEdit [28]
    Left = 180
    Top = 453
    Width = 22
    TabOrder = 14
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Posteado'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 64
  end
  object luDestino: TdxDBLookupEdit [29]
    Left = 416
    Top = 119
    Width = 431
    Enabled = False
    Style.BorderStyle = xbsFlat
    Style.Edges = [edgLeft, edgRight, edgBottom]
    TabOrder = 9
    Anchors = [akLeft, akTop, akRight]
    DataField = 'idAlmacenDestino'
    DataSource = DS
    ReadOnly = False
    ListFieldName = 'Almacen'
    KeyFieldName = 'idAlmacen'
    ListSource = dsAlmacen
    LookupKeyValue = Null
    StoredValues = 64
  end
  object Memo1: TMemo [30]
    Left = 444
    Top = 466
    Width = 410
    Height = 61
    Anchors = [akRight, akBottom]
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 13
  end
  object dxDBEdit12: TdxDBEdit [31]
    Left = 349
    Top = 454
    Width = 81
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    TabStop = False
    Anchors = [akRight, akBottom]
    AutoSize = False
    DataField = 'DiaCierre'
    DataSource = dsUltimoCierre
    ReadOnly = True
    StyleController = dm.dxEstilo
    Height = 18
    StoredValues = 64
  end
  object dxDBEdit11: TdxDBEdit [32]
    Left = 200
    Top = 454
    Width = 80
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    TabStop = False
    Anchors = [akRight, akBottom]
    AutoSize = False
    DataField = 'PosteadoFecha'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    Height = 18
    StoredValues = 64
  end
  object dxDBEdit14: TdxDBEdit [33]
    Left = 140
    Top = 120
    Width = 198
    TabOrder = 8
    TabStop = False
    DataField = 'Suplidor'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object cxDBButtonEdit1: TdxDBButtonEdit [34]
    Left = 71
    Top = 120
    Width = 71
    TabOrder = 7
    DataField = 'idSuplidor'
    DataSource = DS
    StyleController = dm.dxEstilo
    Buttons = <
      item
        Default = True
      end>
    OnButtonClick = cxDBButtonEdit1ButtonClick
    ExistButtons = True
  end
  object dxDBMemo1: TdxDBMemo [35]
    Left = 8
    Top = 477
    Width = 422
    TabOrder = 19
    Anchors = [akLeft, akRight, akBottom]
    DataField = 'Nota'
    DataSource = DS
    StyleController = dm.dxEstilo
    Height = 51
  end
  object dxDBCheckEdit2: TdxDBCheckEdit [36]
    Left = 764
    Top = 47
    Width = 82
    Style.Edges = []
    TabOrder = 20
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Devolucion'
    DataField = 'Devolucion'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 64
  end
  object cxPageControl1: TcxPageControl [37]
    Left = 2
    Top = 172
    Width = 852
    Height = 280
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookAndFeel.NativeStyle = True
    TabOrder = 21
    ClientRectBottom = 276
    ClientRectLeft = 2
    ClientRectRight = 848
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Items'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 846
        Height = 254
        Align = alClient
        TabOrder = 0
        OnEnter = cxGrid1Enter
        OnExit = cxGrid1Exit
        LookAndFeel.NativeStyle = True
        object cxGrid: TcxGridDBBandedTableView
          PopupMenu = PopupMenu1
          OnDblClick = cxGridDblClick
          DataController.DataSource = DS2
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
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = False
          NavigatorButtons.Refresh.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnSorting = False
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsSelection.HideSelection = True
          OptionsView.Navigator = True
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
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
            Properties.OnButtonClick = cxGrid1DBBandedTableView1idProductoPropertiesButtonClick
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 111
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridProducto: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Producto'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 246
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridCantidad: TcxGridDBBandedColumn
            Caption = 'Cant'
            DataBinding.FieldName = 'Cantidad'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrididUnidad: TcxGridDBBandedColumn
            Caption = 'Unidad'
            DataBinding.FieldName = 'idUnidad'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'idUnidad'
            Properties.ListColumns = <
              item
                FieldName = 'idUnidad'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsUnidades
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridAutorizado: TcxGridDBBandedColumn
            Caption = 'Autorizado'
            DataBinding.FieldName = 'autorizado'
            Options.Editing = False
            Width = 30
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridReferencia: TcxGridDBBandedColumn
            Caption = 'Centro costo'
            DataBinding.FieldName = 'Referencia'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGrid1DBBandedTableView1ReferenciaPropertiesButtonClick
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 34
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridCosto: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Costo'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridPartida: TcxGridDBBandedColumn
            Caption = 'Partida'
            DataBinding.FieldName = 'idPartida'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'idPartida'
            Properties.ListColumns = <
              item
                FieldName = 'Partida'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.GridLines = glHorizontal
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsPar
            Options.Filtering = False
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridProMovDet: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProMovDet'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 209
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Cuentas por Pagar'
      ImageIndex = 1
      object Label21: TLabel
        Left = 4
        Top = 94
        Width = 73
        Height = 13
        Caption = 'Clase de gasto:'
        Transparent = True
      end
      object Label22: TLabel
        Left = 4
        Top = 118
        Width = 24
        Height = 13
        Caption = 'NCF:'
        Transparent = True
      end
      object Label23: TLabel
        Left = 4
        Top = 46
        Width = 49
        Height = 13
        Caption = 'Factura #:'
        Transparent = True
      end
      object Label24: TLabel
        Left = 4
        Top = 70
        Width = 30
        Height = 13
        Caption = 'ITBIS:'
        Transparent = True
      end
      object Label17: TLabel
        Left = 4
        Top = 14
        Width = 633
        Height = 16
        Caption = 
          'Los datos de abajo son utilizados para porder importar este docu' +
          'mento desde el modulo de cuentas por pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object luClase: TcxDBLookupComboBox
        Left = 81
        Top = 90
        Width = 342
        Height = 21
        DataBinding.DataField = 'idClaseGasto'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idClasegasto'
        Properties.ListColumns = <
          item
            FieldName = 'ClaseGasto'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsClase
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 81
        Top = 114
        Width = 342
        Height = 21
        DataBinding.DataField = 'CompFiscal'
        DataBinding.DataSource = DS
        Style.Color = 16317176
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object edRef: TcxDBTextEdit
        Left = 81
        Top = 42
        Width = 149
        Height = 21
        DataBinding.DataField = 'Factura'
        DataBinding.DataSource = DS
        Style.Color = 16317176
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object edValor: TcxDBCurrencyEdit
        Left = 81
        Top = 66
        Width = 149
        Height = 21
        DataBinding.DataField = 'TotalITBIS'
        DataBinding.DataSource = DS
        Properties.ValidateOnEnter = True
        Style.Color = 16317176
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
    end
  end
  object dxDBEdit8: TdxDBEdit [38]
    Left = 437
    Top = 48
    Width = 128
    TabOrder = 22
    TabStop = False
    DataField = 'Hora'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object BC: TcxTextEdit [39]
    Left = 154
    Top = 170
    Width = 121
    Height = 21
    Properties.OnEditValueChanged = BCPropertiesEditValueChanged
    Properties.OnValidate = cxTextEdit1PropertiesValidate
    TabOrder = 23
  end
  object Button1: TButton [40]
    Left = 649
    Top = 167
    Width = 197
    Height = 21
    Caption = 'Buscar requisiciones del suplidor'
    TabOrder = 24
    OnClick = Button1Click
  end
  inherited DS: TwwDataSource
    Left = 353
    Top = 303
  end
  inherited ImageList: TImageList
    Left = 310
    Top = 296
  end
  inherited Acciones: TActionList
    Left = 312
    Top = 352
    object AGetProduct: TAction
      Caption = 'AGetProduct'
      OnExecute = AGetProductExecute
    end
    object AGetCentroCosto: TAction
      Caption = 'AGetCentroCosto'
      OnExecute = AGetCentroCostoExecute
    end
    object ARequisicion: TAction
      Caption = 'Requisicion'
      OnExecute = ARequisicionExecute
    end
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsProMov;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idProMov'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 382
    Top = 362
    object RSidProMov: TGuidField
      FieldName = 'idProMov'
      FixedChar = True
      Size = 38
    end
    object RSidProMovTipo: TIntegerField
      FieldName = 'idProMovTipo'
      OnValidate = RSidProMovTipoValidate
    end
    object RSProMov: TStringField
      FieldName = 'ProMov'
      Size = 16
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
      OnValidate = RSFechaValidate
    end
    object RSSalida: TBooleanField
      FieldName = 'Salida'
      OnValidate = RSSalidaValidate
    end
    object RSidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object RSNota: TStringField
      DisplayWidth = 500
      FieldName = 'Nota'
      Size = 500
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSEntregadoPor: TStringField
      FieldName = 'EntregadoPor'
      Size = 50
    end
    object RSRecibidoPor: TStringField
      FieldName = 'RecibidoPor'
      Size = 50
    end
    object RSidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Required = True
      OnValidate = RSidAlmacenValidate
      Size = 16
    end
    object RSConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object RSidConduce: TGuidField
      FieldName = 'idConduce'
      FixedChar = True
      Size = 38
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
    end
    object RSPosteado: TBooleanField
      FieldName = 'Posteado'
    end
    object RSPosteadoFecha: TDateTimeField
      FieldName = 'PosteadoFecha'
    end
    object RSidAlmacenDestino: TStringField
      FieldName = 'idAlmacenDestino'
      OnValidate = RSidAlmacenDestinoValidate
      Size = 16
    end
    object RSidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      OnValidate = RSidSuplidorValidate
    end
    object RSSuplidor: TStringField
      FieldName = 'Suplidor'
      OnChange = RSSuplidorChange
      Size = 100
    end
    object RSidOrdenTrab: TGuidField
      FieldName = 'idOrdenTrab'
      FixedChar = True
      Size = 38
    end
    object RSOrdenTrab: TStringField
      FieldName = 'OrdenTrab'
      Size = 16
    end
    object RSidReferencia: TGuidField
      FieldName = 'idReferencia'
      FixedChar = True
      Size = 38
    end
    object RSDevolucion: TBooleanField
      FieldName = 'Devolucion'
    end
    object RSContabilizar: TBooleanField
      FieldName = 'Contabilizar'
    end
    object RSCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RSidClaseGasto: TStringField
      FieldName = 'idClaseGasto'
      Size = 2
    end
    object RSidOrdenCompra: TGuidField
      FieldName = 'idOrdenCompra'
      FixedChar = True
      Size = 38
    end
    object RSOCNumero: TStringField
      FieldName = 'OCNumero'
      Size = 16
    end
    object RSFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object RSTotalITBIS: TBCDField
      FieldName = 'TotalITBIS'
      Precision = 19
      Size = 2
    end
    object RSHora: TDateTimeField
      FieldName = 'Hora'
    end
  end
  inherited DS2: TwwDataSource
    Left = 445
    Top = 345
  end
  inherited RSDet: TADODataSet
    BeforePost = RSDetBeforePost
    AfterScroll = RSDetAfterScroll
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsProMovDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idProMov'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 466
    Top = 290
    object RSDetidProducto: TStringField
      DisplayLabel = 'Producto'
      DisplayWidth = 18
      FieldName = 'idProducto'
      OnValidate = RSDetidProductoValidate
      Size = 25
    end
    object RSDetProducto: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 30
      FieldName = 'Producto'
      Size = 120
    end
    object RSDetCantidad: TBCDField
      DisplayWidth = 7
      FieldName = 'Cantidad'
      OnValidate = RSDetCantidadValidate
      Precision = 16
      Size = 2
    end
    object RSDetCosto: TBCDField
      DisplayLabel = 'Costo Total'
      DisplayWidth = 9
      FieldName = 'Costo'
      Precision = 18
      Size = 2
    end
    object RSDetProMovDet: TStringField
      DisplayLabel = 'Notas'
      DisplayWidth = 24
      FieldName = 'ProMovDet'
      Size = 60
    end
    object RSDetidProMovDet: TGuidField
      DisplayWidth = 38
      FieldName = 'idProMovDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidProMov: TGuidField
      DisplayWidth = 38
      FieldName = 'idProMov'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidUnidad: TStringField
      DisplayWidth = 16
      FieldName = 'idUnidad'
      Visible = False
      Size = 16
    end
    object RSDetPosteado: TBooleanField
      FieldName = 'Posteado'
      Visible = False
    end
    object RSDetLinea: TIntegerField
      FieldName = 'Linea'
      Visible = False
    end
    object RSDetReferencia: TStringField
      DisplayLabel = 'Ficha'
      DisplayWidth = 7
      FieldName = 'Referencia'
      OnValidate = RSDetReferenciaValidate
    end
    object RSDetidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      OnValidate = RSDetidCentroCostoValidate
      FixedChar = True
      Size = 38
    end
    object RSDetidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object RSDetidInvReq: TGuidField
      FieldName = 'idInvReq'
      FixedChar = True
      Size = 38
    end
    object RSDetautorizado: TBooleanField
      FieldName = 'autorizado'
    end
  end
  object ProMovTipo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select *   from ProMovTipo order by ProMovTipo '
    Parameters = <>
    Left = 584
    Top = 396
    object ProMovTipoidProMovTipo: TIntegerField
      FieldName = 'idProMovTipo'
    end
    object ProMovTipoProMovTipo: TStringField
      FieldName = 'ProMovTipo'
      Size = 50
    end
    object ProMovTipoSalida: TBooleanField
      FieldName = 'Salida'
    end
    object ProMovTipoUProMovTipoID: TGuidField
      FieldName = 'UProMovTipoID'
      FixedChar = True
      Size = 38
    end
    object ProMovTipoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object ProMovTipoContador: TStringField
      FieldName = 'Contador'
      Size = 16
    end
  end
  object dsProMovTipo: TDataSource
    DataSet = ProMovTipo
    Left = 232
    Top = 336
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
    Left = 590
    Top = 336
    object ProductoActidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object ProductoActProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object ProductoActExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object ProductoActCostoPromedio: TBCDField
      FieldName = 'CostoPromedio'
      Precision = 19
      Size = 2
    end
    object ProductoActPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      Precision = 19
      Size = 2
    end
    object ProductoActPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
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
    object ProductoActAutoDescuento: TBooleanField
      FieldName = 'AutoDescuento'
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
    object ProductoActMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object ProductoActReorden: TFloatField
      FieldName = 'Reorden'
    end
    object ProductoActCalcExistencia: TBooleanField
      FieldName = 'CalcExistencia'
    end
  end
  object dsProductoAct: TDataSource
    DataSet = ProductoAct
    Left = 726
    Top = 352
  end
  object Almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Almacenes;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 352
    Top = 230
  end
  object dsAlmacen: TDataSource
    DataSet = Almacen
    Left = 408
    Top = 280
  end
  object rptProMov: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'RPTProMov;1'
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
        Name = '@idProMov'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 220
    Top = 248
    object rptProMovidProMov: TGuidField
      FieldName = 'idProMov'
      FixedChar = True
      Size = 38
    end
    object rptProMovProMovTipo: TStringField
      FieldName = 'ProMovTipo'
      Size = 50
    end
    object rptProMovProMov: TStringField
      FieldName = 'ProMov'
      Size = 16
    end
    object rptProMovFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rptProMovSalida: TBooleanField
      FieldName = 'Salida'
    end
    object rptProMovMovimiento: TStringField
      FieldName = 'Movimiento'
      ReadOnly = True
      Size = 15
    end
    object rptProMovReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rptProMovOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object rptProMovEntregadoPor: TStringField
      FieldName = 'EntregadoPor'
      Size = 50
    end
    object rptProMovRecibidoPor: TStringField
      FieldName = 'RecibidoPor'
      Size = 50
    end
    object rptProMovidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object rptProMovAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
    object rptProMovConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object rptProMovNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
    object rptProMovConduce: TStringField
      FieldName = 'Conduce'
      Size = 16
    end
    object rptProMovidProMovDet: TGuidField
      FieldName = 'idProMovDet'
      FixedChar = True
      Size = 38
    end
    object rptProMovDetProMovDet: TStringField
      FieldName = 'DetProMovDet'
      Size = 60
    end
    object rptProMovDetidProducto: TStringField
      FieldName = 'DetidProducto'
      Size = 25
    end
    object rptProMovDetProducto: TStringField
      FieldName = 'DetProducto'
      Size = 120
    end
    object rptProMovDetCantidad: TBCDField
      FieldName = 'DetCantidad'
      Precision = 8
    end
    object rptProMovDetCosto: TBCDField
      FieldName = 'DetCosto'
      Precision = 18
      Size = 2
    end
    object rptProMovcoCompania: TStringField
      FieldName = 'coCompania'
      Size = 50
    end
    object rptProMovcoDireccion: TStringField
      FieldName = 'coDireccion'
      Size = 120
    end
    object rptProMovcoTelefono: TStringField
      FieldName = 'coTelefono'
      Size = 15
    end
    object rptProMovcoFax: TStringField
      FieldName = 'coFax'
      Size = 15
    end
    object rptProMovcoRNC: TStringField
      FieldName = 'coRNC'
    end
    object rptProMovProdReferencia: TStringField
      FieldName = 'ProdReferencia'
      Size = 25
    end
    object rptProMovDetReferencia: TStringField
      FieldName = 'DetReferencia'
    end
    object rptProMovOrigenDestino: TStringField
      FieldName = 'OrigenDestino'
      ReadOnly = True
      Size = 64
    end
    object rptProMovDetidUnidad: TStringField
      FieldName = 'DetidUnidad'
      Size = 16
    end
    object rptProMovMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object rptProMovSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
  end
  object dsRptProMov: TDataSource
    DataSet = rptProMov
    Left = 630
    Top = 236
  end
  object plrptProMov: TppDBPipeline
    DataSource = dsRptProMov
    UserName = 'plrptProMov'
    Left = 56
    Top = 296
    object plrptProMovppField1: TppField
      FieldAlias = 'idProMov'
      FieldName = 'idProMov'
      FieldLength = 38
      DisplayWidth = 38
      Position = 0
    end
    object plrptProMovppField2: TppField
      FieldAlias = 'ProMovTipo'
      FieldName = 'ProMovTipo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object plrptProMovppField3: TppField
      FieldAlias = 'ProMov'
      FieldName = 'ProMov'
      FieldLength = 16
      DisplayWidth = 16
      Position = 2
    end
    object plrptProMovppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plrptProMovppField5: TppField
      FieldAlias = 'Salida'
      FieldName = 'Salida'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 4
    end
    object plrptProMovppField6: TppField
      FieldAlias = 'Movimiento'
      FieldName = 'Movimiento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object plrptProMovppField7: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plrptProMovppField8: TppField
      FieldAlias = 'OrdComp'
      FieldName = 'OrdComp'
      FieldLength = 16
      DisplayWidth = 16
      Position = 7
    end
    object plrptProMovppField9: TppField
      FieldAlias = 'EntregadoPor'
      FieldName = 'EntregadoPor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object plrptProMovppField10: TppField
      FieldAlias = 'RecibidoPor'
      FieldName = 'RecibidoPor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object plrptProMovppField11: TppField
      FieldAlias = 'idAlmacen'
      FieldName = 'idAlmacen'
      FieldLength = 16
      DisplayWidth = 16
      Position = 10
    end
    object plrptProMovppField12: TppField
      FieldAlias = 'Almacen'
      FieldName = 'Almacen'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object plrptProMovppField13: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 12
    end
    object plrptProMovppField14: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 500
      DisplayWidth = 500
      Position = 13
    end
    object plrptProMovppField15: TppField
      FieldAlias = 'Conduce'
      FieldName = 'Conduce'
      FieldLength = 16
      DisplayWidth = 16
      Position = 14
    end
    object plrptProMovppField16: TppField
      FieldAlias = 'idProMovDet'
      FieldName = 'idProMovDet'
      FieldLength = 38
      DisplayWidth = 38
      Position = 15
    end
    object plrptProMovppField17: TppField
      FieldAlias = 'DetProMovDet'
      FieldName = 'DetProMovDet'
      FieldLength = 60
      DisplayWidth = 60
      Position = 16
    end
    object plrptProMovppField18: TppField
      FieldAlias = 'DetidProducto'
      FieldName = 'DetidProducto'
      FieldLength = 25
      DisplayWidth = 25
      Position = 17
    end
    object plrptProMovppField19: TppField
      FieldAlias = 'DetProducto'
      FieldName = 'DetProducto'
      FieldLength = 120
      DisplayWidth = 120
      Position = 18
    end
    object plrptProMovppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetCantidad'
      FieldName = 'DetCantidad'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 9
      Position = 19
    end
    object plrptProMovppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetCosto'
      FieldName = 'DetCosto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object plrptProMovppField22: TppField
      FieldAlias = 'coCompania'
      FieldName = 'coCompania'
      FieldLength = 50
      DisplayWidth = 50
      Position = 21
    end
    object plrptProMovppField23: TppField
      FieldAlias = 'coDireccion'
      FieldName = 'coDireccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 22
    end
    object plrptProMovppField24: TppField
      FieldAlias = 'coTelefono'
      FieldName = 'coTelefono'
      FieldLength = 15
      DisplayWidth = 15
      Position = 23
    end
    object plrptProMovppField25: TppField
      FieldAlias = 'coFax'
      FieldName = 'coFax'
      FieldLength = 15
      DisplayWidth = 15
      Position = 24
    end
    object plrptProMovppField26: TppField
      FieldAlias = 'coRNC'
      FieldName = 'coRNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 25
    end
    object plrptProMovppField27: TppField
      FieldAlias = 'ProdReferencia'
      FieldName = 'ProdReferencia'
      FieldLength = 25
      DisplayWidth = 25
      Position = 26
    end
    object plrptProMovppField28: TppField
      FieldAlias = 'DetReferencia'
      FieldName = 'DetReferencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object plrptProMovppField29: TppField
      FieldAlias = 'OrigenDestino'
      FieldName = 'OrigenDestino'
      FieldLength = 64
      DisplayWidth = 64
      Position = 28
    end
    object plrptProMovppField30: TppField
      FieldAlias = 'DetidUnidad'
      FieldName = 'DetidUnidad'
      FieldLength = 16
      DisplayWidth = 16
      Position = 29
    end
    object plrptProMovppField31: TppField
      FieldAlias = 'Marca'
      FieldName = 'Marca'
      FieldLength = 50
      DisplayWidth = 50
      Position = 30
    end
    object plrptProMovppField32: TppField
      FieldAlias = 'Suplidor'
      FieldName = 'Suplidor'
      FieldLength = 100
      DisplayWidth = 100
      Position = 31
    end
  end
  object ProMovRPT: TppReport
    AutoStop = False
    DataPipeline = plrptProMov
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 125
    Template.FileName = '\\cbsdg02\f$\FTP\Release\GM_ProMov.rtm'
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Printer'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 72
    Top = 242
    Version = '15.02'
    mmColumnWidth = 203200
    DataPipelineName = 'plrptProMov'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 53181
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 11113
        mmLeft = 102659
        mmTop = 15875
        mmWidth = 94986
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6085
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 194205
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 12171
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 7938
        mmWidth = 88900
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 16404
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 31750
        mmTop = 16404
        mmWidth = 31750
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Style = bsClear
        mmHeight = 24077
        mmLeft = 265
        mmTop = 28840
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Producto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3503
        mmLeft = 2646
        mmTop = 48154
        mmWidth = 12763
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Descripcion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3503
        mmLeft = 83344
        mmTop = 48154
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CONCEPTO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 30427
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Concepto'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 10848
        mmLeft = 24871
        mmTop = 30427
        mmWidth = 108744
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 1.000000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 47361
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 105304
        mmTop = 16933
        mmWidth = 38894
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'ProMov'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 5292
        mmLeft = 157957
        mmTop = 9790
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Almacen'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 8759
        mmLeft = 135467
        mmTop = 31221
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 3704
        mmLeft = 145786
        mmTop = 21696
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 145786
        mmTop = 16933
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'O/C Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 171186
        mmTop = 16933
        mmWidth = 23813
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'OrdComp'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 3704
        mmLeft = 171186
        mmTop = 21696
        mmWidth = 23813
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'Movimiento'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 6604
        mmLeft = 91017
        mmTop = 8731
        mmWidth = 65881
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 3704
        mmLeft = 105304
        mmTop = 21696
        mmWidth = 38894
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 1.000000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 41540
        mmWidth = 197115
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'Cantidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 182827
        mmTop = 48154
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Casa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3503
        mmLeft = 45508
        mmTop = 48154
        mmWidth = 7007
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'Suplidor'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 4233
        mmLeft = 25135
        mmTop = 42598
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Suplidor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 42863
        mmWidth = 22490
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'DetCantidad'
        DataPipeline = plrptProMov
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 3754
        mmLeft = 177536
        mmTop = 529
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'DetidProducto'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 529
        mmWidth = 41275
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'DetProducto'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 3704
        mmLeft = 83344
        mmTop = 529
        mmWidth = 91811
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        DataField = 'Marca'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 529
        mmWidth = 36777
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 41010
        mmTop = 11377
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'Recibido conforme'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 56092
        mmTop = 12435
        mmWidth = 32279
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 107950
        mmTop = 11377
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Despachado por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 124884
        mmTop = 12171
        mmWidth = 27781
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 265
        mmWidth = 196057
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 119063
        mmTop = 794
        mmWidth = 77258
        BandType = 8
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'RecibidoPor'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 3704
        mmLeft = 36777
        mmTop = 7673
        mmWidth = 66940
        BandType = 8
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'EntregadoPor'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 3704
        mmLeft = 103717
        mmTop = 7673
        mmWidth = 66940
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Nota'
        DataPipeline = plrptProMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plrptProMov'
        mmHeight = 4763
        mmLeft = 2646
        mmTop = 1588
        mmWidth = 133879
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object cGenEntrada: TADOCommand
    CommandText = 'GenEntradaTransfer;1'
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
        Name = '@idProMov'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idAlmacen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 542
    Top = 294
  end
  object UltimoCierre: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'invUltimoCierreFull;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 518
    Top = 348
    object UltimoCierreDiaCierre: TDateTimeField
      FieldName = 'DiaCierre'
    end
    object UltimoCierreCerradoEn: TDateTimeField
      FieldName = 'CerradoEn'
    end
  end
  object dsUltimoCierre: TDataSource
    DataSet = UltimoCierre
    Left = 652
    Top = 346
  end
  object SuplidorAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'svSuplidorAct;1'
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
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 502
    Top = 240
    object SuplidorActidSuplidor: TAutoIncField
      FieldName = 'idSuplidor'
      ReadOnly = True
    end
    object SuplidorActNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object SuplidorActEstatus: TBooleanField
      FieldName = 'Estatus'
    end
  end
  object invGetReqDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'invGetReqDet;1'
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
        Name = '@idInvReq'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 740
    Top = 290
    object invGetReqDetidInvReq: TGuidField
      FieldName = 'idInvReq'
      FixedChar = True
      Size = 38
    end
    object invGetReqDetInvReq: TStringField
      FieldName = 'InvReq'
      Size = 16
    end
    object invGetReqDetFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object invGetReqDetDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 16
    end
    object invGetReqDetSolicitante: TStringField
      FieldName = 'Solicitante'
      Size = 50
    end
    object invGetReqDetReferencia: TStringField
      FieldName = 'Referencia'
      Size = 16
    end
    object invGetReqDetInvReqStatus: TStringField
      FieldName = 'InvReqStatus'
      Size = 16
    end
    object invGetReqDetAutorizado: TBooleanField
      FieldName = 'Autorizado'
    end
    object invGetReqDetAutorizadoPor: TStringField
      FieldName = 'AutorizadoPor'
      Size = 30
    end
    object invGetReqDetNota: TStringField
      FieldName = 'Nota'
      Size = 200
    end
    object invGetReqDetUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object invGetReqDetDetidInvReq: TGuidField
      FieldName = 'DetidInvReq'
      FixedChar = True
      Size = 38
    end
    object invGetReqDetDetidProducto: TStringField
      FieldName = 'DetidProducto'
      Size = 25
    end
    object invGetReqDetDetProducto: TStringField
      FieldName = 'DetProducto'
      Size = 80
    end
    object invGetReqDetDetCantidad: TBCDField
      FieldName = 'DetCantidad'
      Precision = 18
    end
    object invGetReqDetDetidUnidad: TStringField
      FieldName = 'DetidUnidad'
      Size = 16
    end
    object invGetReqDetConduce: TStringField
      FieldName = 'Conduce'
      Size = 30
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 636
    Top = 292
    object VerProductoDetalle1: TMenuItem
      Caption = 'Ver Producto Detalle'
      OnClick = VerProductoDetalle1Click
    end
  end
  object GenCodif: TADOCommand
    CommandText = 'svGenCodifInv;1'
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
        Name = '@idPromov'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 703
    Top = 234
  end
  object spUnidadesSegunBase: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'InvUnidadesSegunBase;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IdProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end>
    Left = 452
    Top = 450
  end
  object dsUnidadesSegunBase: TDataSource
    DataSet = spUnidadesSegunBase
    Left = 646
    Top = 451
  end
  object qryUnidades: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  Unidad')
    Left = 42
    Top = 454
  end
  object dsUnidades: TDataSource
    DataSet = qryUnidades
    Left = 114
    Top = 454
  end
  object rsClaseGasto: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cxpRSClaseGasto;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 418
    Top = 222
    object rsClaseGastoidClasegasto: TStringField
      FieldName = 'idClasegasto'
      Size = 2
    end
    object rsClaseGastoClaseGasto: TStringField
      FieldName = 'ClaseGasto'
      Size = 100
    end
  end
  object dsClase: TDataSource
    DataSet = rsClaseGasto
    Left = 38
    Top = 379
  end
  object rsMovsXRef: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select distinct idPromov from promov where idReferencia = :idRef' +
      'erencia'
    Parameters = <
      item
        Name = 'idReferencia'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 128
    Top = 269
    object rsMovsXRefidPromov: TGuidField
      FieldName = 'idPromov'
      FixedChar = True
      Size = 38
    end
  end
  object rsPartidas: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select * from proyPartida order by Partida'
    Parameters = <>
    Left = 274
    Top = 230
    object rsPartidasidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object rsPartidasPartida: TStringField
      FieldName = 'Partida'
      Size = 100
    end
  end
  object dsPar: TDataSource
    DataSet = rsPartidas
    Left = 134
    Top = 328
  end
  object CmdleerBC: TADOCommand
    CommandText = 'svLeerBc'
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
        Size = 16
        Value = Null
      end
      item
        Name = '@idpromov'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Exist'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 767
    Top = 232
  end
  object GenReqSup2Promov: TADOCommand
    CommandText = 'Invreqsup2promov'
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
        Name = '@idInvReq'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 731
    Top = 114
  end
end

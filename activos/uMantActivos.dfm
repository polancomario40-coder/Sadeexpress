inherited MantActivos: TMantActivos
  Left = 545
  Top = 199
  Caption = ''
  ClientHeight = 491
  ClientWidth = 597
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 597
  end
  inherited Gradient2: TGradient
    Width = 597
  end
  object cxPageControl1: TcxPageControl [2]
    Left = 6
    Top = 38
    Width = 587
    Height = 387
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight]
    LookAndFeel.NativeStyle = True
    TabOrder = 8
    ClientRectBottom = 383
    ClientRectLeft = 2
    ClientRectRight = 583
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Datos generales'
      ImageIndex = 0
      DesignSize = (
        581
        361)
      object Label1: TLabel
        Left = 8
        Top = 15
        Width = 34
        Height = 13
        Caption = 'Activo:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 34
        Width = 58
        Height = 13
        Caption = 'Descripcion:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 11
        Top = 87
        Width = 53
        Height = 13
        Caption = 'Activacion:'
        Transparent = True
      end
      object Label5: TLabel
        Left = 466
        Top = 87
        Width = 41
        Height = 13
        Caption = 'Vida util:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 8
        Top = 111
        Width = 51
        Height = 13
        Caption = 'Categoria:'
        Transparent = True
      end
      object Label7: TLabel
        Left = 8
        Top = 135
        Width = 76
        Height = 13
        Caption = 'Cuenta activos:'
        Transparent = True
      end
      object Label10: TLabel
        Left = 322
        Top = 135
        Width = 39
        Height = 13
        Caption = '# Serie:'
        Transparent = True
      end
      object Label11: TLabel
        Left = 8
        Top = 183
        Width = 49
        Height = 13
        Caption = 'Ubicacion:'
        Transparent = True
      end
      object Label13: TLabel
        Left = 314
        Top = 160
        Width = 47
        Height = 13
        Caption = 'Cantidad:'
        Transparent = True
      end
      object Label12: TLabel
        Left = 334
        Top = 185
        Width = 57
        Height = 13
        Caption = 'Asignado a:'
        Transparent = True
      end
      object Label9: TLabel
        Left = 8
        Top = 160
        Width = 56
        Height = 13
        Caption = 'Referencia:'
        Transparent = True
      end
      object Label15: TLabel
        Left = 331
        Top = 111
        Width = 30
        Height = 13
        Caption = 'Clase:'
        Transparent = True
      end
      object Label20: TLabel
        Left = 382
        Top = 15
        Width = 16
        Height = 13
        Caption = 'ST:'
        Transparent = True
      end
      object edIdActivo: TcxDBTextEdit
        Left = 97
        Top = 11
        Width = 121
        Height = 21
        DataBinding.DataField = 'idActivo'
        DataBinding.DataSource = DS
        Enabled = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object mmDescr: TcxDBMemo
        Left = 97
        Top = 36
        Width = 474
        Height = 43
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DS
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object deAct: TcxDBDateEdit
        Left = 97
        Top = 83
        Width = 128
        Height = 21
        DataBinding.DataField = 'FechaActivacion'
        DataBinding.DataSource = DS
        Properties.SaveTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object spVida: TcxDBSpinEdit
        Left = 512
        Top = 83
        Width = 59
        Height = 21
        DataBinding.DataField = 'VidaUtil'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object luCat: TcxDBLookupComboBox
        Left = 97
        Top = 107
        Width = 204
        Height = 21
        DataBinding.DataField = 'idCategoria'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idCategoria'
        Properties.ListColumns = <
          item
            FieldName = 'Categoria'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsCat
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object edCta: TcxDBButtonEdit
        Left = 97
        Top = 131
        Width = 121
        Height = 21
        DataBinding.DataField = 'idCuentaActivo'
        DataBinding.DataSource = DS
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edCtaPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object edSerie: TcxDBTextEdit
        Left = 366
        Top = 131
        Width = 121
        Height = 21
        DataBinding.DataField = 'NumeroSerie'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
      object luUbic: TcxDBLookupComboBox
        Left = 97
        Top = 180
        Width = 234
        Height = 21
        DataBinding.DataField = 'idUbicacion'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idUbicacion'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsUbics
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 7
      end
      object spCant: TcxDBSpinEdit
        Left = 366
        Top = 156
        Width = 59
        Height = 21
        DataBinding.DataField = 'Cantidad'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 8
      end
      object cxGrid1: TcxGrid
        Left = 8
        Top = 210
        Width = 497
        Height = 151
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 9
        OnEnter = cxGrid1Enter
        OnExit = cxGrid1Exit
        LookAndFeel.NativeStyle = True
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsDistrib
          DataController.KeyFieldNames = 'LineNum'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1idCuenta: TcxGridDBColumn
            Caption = 'Cuenta'
            DataBinding.FieldName = 'idCuenta'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGrid1DBTableView1idCuentaPropertiesButtonClick
            Options.Filtering = False
          end
          object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 358
          end
          object cxGrid1DBTableView1Porc: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'PorcDepr'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.MaxValue = 100.000000000000000000
            Properties.ValueType = vtFloat
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
        end
        object cxGrid1DBTableView2: TcxGridDBTableView
          DataController.DataSource = dsAdd
          DataController.KeyFieldNames = 'idAdicion'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OnCellClick = cxGrid1DBTableView2CellClick
          OnCellDblClick = cxGrid1DBTableView2CellDblClick
          OptionsBehavior.ImmediateEditor = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView2idAdicion: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Options.Filtering = False
          end
          object cxGrid1DBTableView2Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Options.Filtering = False
            Width = 150
          end
          object cxGrid1DBTableView2FechaActivacion: TcxGridDBColumn
            Caption = 'Activacion'
            DataBinding.FieldName = 'FechaActivacion'
            Options.Filtering = False
            Width = 70
          end
          object cxGrid1DBTableView2Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Options.Filtering = False
          end
          object cxGrid1DBTableView2VidaUtil: TcxGridDBColumn
            DataBinding.FieldName = 'VidaUtil'
            Options.Filtering = False
            Width = 50
          end
        end
        object cxGrid1Level1: TcxGridLevel
          Caption = 'Distribucion'
          GridView = cxGrid1DBTableView1
        end
        object cxGrid1Level2: TcxGridLevel
          Caption = 'Adiciones'
          GridView = cxGrid1DBTableView2
        end
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 393
        Top = 181
        Width = 178
        Height = 21
        DataBinding.DataField = 'AsignadoA'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 10
      end
      object edRef: TcxDBTextEdit
        Left = 97
        Top = 156
        Width = 121
        Height = 21
        DataBinding.DataField = 'Referencia'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 11
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 366
        Top = 107
        Width = 204
        Height = 21
        DataBinding.DataField = 'idActivoClase'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idActivoClase'
        Properties.ListColumns = <
          item
            FieldName = 'ActivoClase'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsClases
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 12
      end
      object edST: TcxDBTextEdit
        Left = 402
        Top = 11
        Width = 37
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Status'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 13
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 443
        Top = 11
        Width = 128
        Height = 21
        TabStop = False
        DataBinding.DataField = 'FechaStatus'
        DataBinding.DataSource = DS
        Properties.SaveTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 14
      end
      object cxButton9: TcxButton
        Left = 510
        Top = 327
        Width = 64
        Height = 28
        Action = aEtiqueta
        TabOrder = 15
        LookAndFeel.NativeStyle = True
      end
      object cxButton7: TcxButton
        Left = 510
        Top = 279
        Width = 63
        Height = 41
        Caption = 'Nueva &adicion'
        TabOrder = 16
        WordWrap = True
        OnClick = cxButton7Click
        Layout = blGlyphTop
        LookAndFeel.NativeStyle = True
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Adquisicion'
      ImageIndex = 1
      object Label3: TLabel
        Left = 6
        Top = 18
        Width = 59
        Height = 13
        Caption = 'Fecha Adq.:'
        Transparent = True
      end
      object Label14: TLabel
        Left = 5
        Top = 46
        Width = 49
        Height = 13
        Caption = 'Valor adq:'
        Transparent = True
      end
      object Label8: TLabel
        Left = 250
        Top = 19
        Width = 21
        Height = 13
        Caption = 'Ref:'
        Transparent = True
      end
      object Label16: TLabel
        Left = 233
        Top = 42
        Width = 38
        Height = 13
        Caption = 'Adq de:'
        Transparent = True
      end
      object Label17: TLabel
        Left = 6
        Top = 65
        Width = 86
        Height = 13
        Caption = 'Garantia (meses):'
        Transparent = True
      end
      object Label18: TLabel
        Left = 197
        Top = 65
        Width = 74
        Height = 13
        Caption = 'Prov. Garantia:'
        Transparent = True
      end
      object Label19: TLabel
        Left = 4
        Top = 87
        Width = 130
        Height = 13
        Caption = 'Condiciones de la garantia:'
        Transparent = True
      end
      object deAdq: TcxDBDateEdit
        Left = 96
        Top = 14
        Width = 128
        Height = 21
        DataBinding.DataField = 'FechaAdq'
        DataBinding.DataSource = DS
        Properties.SaveTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 96
        Top = 38
        Width = 127
        Height = 21
        DataBinding.DataField = 'ValorAdq'
        DataBinding.DataSource = DS
        Properties.ValidateOnEnter = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 275
        Top = 15
        Width = 119
        Height = 21
        DataBinding.DataField = 'DocumentoAdq'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 275
        Top = 38
        Width = 301
        Height = 21
        DataBinding.DataField = 'Proveedor'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 96
        Top = 61
        Width = 81
        Height = 21
        DataBinding.DataField = 'TiempoGarantia'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 275
        Top = 61
        Width = 301
        Height = 21
        DataBinding.DataField = 'ProveedorGarantia'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxDBMemo2: TcxDBMemo
        Left = 3
        Top = 103
        Width = 572
        Height = 71
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DS
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Notas generales'
      ImageIndex = 2
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 0
        Width = 581
        Height = 361
        Align = alClient
        DataBinding.DataField = 'Observaciones'
        DataBinding.DataSource = DS
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Transacciones generadas'
      ImageIndex = 3
      OnShow = cxTabSheet4Show
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 581
        Height = 361
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid2DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsTrans
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1Mejora: TcxGridDBColumn
            DataBinding.FieldName = 'Mejora'
            Width = 327
          end
          object cxGrid2DBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
          end
          object cxGrid2DBTableView1Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  object cxLabel1: TcxLabel [3]
    Left = 434
    Top = 4
    Width = 157
    Height = 20
    AutoSize = False
    Caption = 'Activos Fijos'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.Transparent = True
    Properties.WordWrap = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -13
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  inherited btImprimir: TcxButton
    Top = 438
    Width = 54
    Height = 49
    Action = Aprint
  end
  inherited btLocalizar: TcxButton
    Top = 438
    Width = 54
    Height = 49
  end
  inherited btNuevo: TcxButton
    Top = 438
    Width = 54
    Height = 49
  end
  inherited btCancelar: TcxButton
    Left = 320
    Top = 438
    Width = 54
    Height = 49
  end
  inherited btGuardar: TcxButton
    Left = 255
    Top = 438
    Width = 54
    Height = 49
  end
  inherited btBorrar: TcxButton
    Top = 438
    Width = 54
    Height = 49
  end
  inherited btSalir: TcxButton
    Left = 534
    Top = 438
    Width = 54
    Height = 49
  end
  inherited btEditar: TcxButton
    Top = 440
    Width = 59
    Height = 49
  end
  inherited DS: TwwDataSource
    DataSet = rsActivos
    Left = 295
    Top = 86
  end
  inherited Acciones: TActionList
    Left = 192
    Top = 78
    object aEtiqueta: TAction
      Caption = 'Etiquetas'
      OnExecute = aEtiquetaExecute
    end
  end
  inherited ImageList: TImageList
    Left = 382
    Top = 85
  end
  object rsActivos: TADODataSet
    Connection = dm.Coneccion
    AfterScroll = rsActivosAfterScroll
    OnNewRecord = rsActivosNewRecord
    CommandText = 'afBuscarActivos;1'
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
        Name = '@idActivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 203
    Top = 372
    object rsActivosidActivo: TAutoIncField
      FieldName = 'idActivo'
    end
    object rsActivosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object rsActivosFechaAdq: TDateTimeField
      FieldName = 'FechaAdq'
    end
    object rsActivosDocumentoAdq: TStringField
      FieldName = 'DocumentoAdq'
    end
    object rsActivosFechaActivacion: TDateTimeField
      FieldName = 'FechaActivacion'
    end
    object rsActivosVidaUtil: TBCDField
      FieldName = 'VidaUtil'
      Precision = 10
      Size = 2
    end
    object rsActivosidCategoria: TIntegerField
      FieldName = 'idCategoria'
      OnValidate = rsActivosidCategoriaValidate
    end
    object rsActivosidCuentaActivo: TStringField
      FieldName = 'idCuentaActivo'
      OnValidate = rsActivosidCuentaActivoValidate
      Size = 16
    end
    object rsActivosFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsActivosReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsActivosNumeroSerie: TStringField
      FieldName = 'NumeroSerie'
    end
    object rsActivosCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 0
    end
    object rsActivosidUbicacion: TIntegerField
      FieldName = 'idUbicacion'
    end
    object rsActivosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsActivosAsignadoA: TStringField
      FieldName = 'AsignadoA'
      Size = 100
    end
    object rsActivosObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 2000
    end
    object rsActivosValorAdq: TBCDField
      FieldName = 'ValorAdq'
      Precision = 19
      Size = 2
    end
    object rsActivosValorResidual: TBCDField
      FieldName = 'ValorResidual'
      Precision = 19
      Size = 2
    end
    object rsActivosidActivoClase: TStringField
      FieldName = 'idActivoClase'
      Size = 16
    end
    object rsActivosTiempoGarantia: TIntegerField
      FieldName = 'TiempoGarantia'
    end
    object rsActivosProveedor: TStringField
      FieldName = 'Proveedor'
      Size = 200
    end
    object rsActivosProveedorGarantia: TStringField
      FieldName = 'ProveedorGarantia'
      Size = 200
    end
    object rsActivosCondicionGarantia: TStringField
      FieldName = 'CondicionGarantia'
      Size = 200
    end
    object rsActivosuidActivo: TGuidField
      FieldName = 'uidActivo'
      FixedChar = True
      Size = 38
    end
  end
  object rsCats: TADODataSet
    Connection = dm.Coneccion
    AfterScroll = rsCatsAfterScroll
    CommandText = 'select * from afCategorias'#13#10'order by Categoria'
    Parameters = <>
    Left = 417
    Top = 88
    object rsCatsidCategoria: TAutoIncField
      FieldName = 'idCategoria'
      ReadOnly = True
    end
    object rsCatsCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
  end
  object dsCat: TwwDataSource
    AutoEdit = False
    DataSet = rsCats
    OnUpdateData = DSUpdateData
    Left = 145
    Top = 78
  end
  object rsUbics: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'select * from afUbicaciones descripcion'
    Parameters = <>
    Left = 331
    Top = 80
    object rsUbicsidUbicacion: TAutoIncField
      FieldName = 'idUbicacion'
      ReadOnly = True
    end
    object rsUbicsidUbicMadre: TIntegerField
      FieldName = 'idUbicMadre'
    end
    object rsUbicsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object dsDistrib: TwwDataSource
    DataSet = mDistrib
    OnUpdateData = DSUpdateData
    Left = 29
    Top = 350
  end
  object cBorrarDistrib: TADOCommand
    CommandText = 'afDelDistribucion;1'
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
        Name = '@idActivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 476
    Top = 82
  end
  object cInsDistrib: TADOCommand
    CommandText = 'afInsDistribucion;1'
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
        Name = '@idCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idActivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@porc'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 524
    Top = 264
  end
  object rsDistrib: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'afBuscarDistribucion;1'
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
        Name = '@idActivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 256
    Top = 342
    object rsDistribidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsDistribDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsDistribPorcDepr: TBCDField
      FieldName = 'PorcDepr'
      Precision = 18
    end
  end
  object rsAdiciones: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'afBuscarAdiciones;1'
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
        Name = '@idActivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 180
    Top = 318
    object rsAdicionesidAdicion: TIntegerField
      FieldName = 'idAdicion'
      ReadOnly = True
    end
    object rsAdicionesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object rsAdicionesValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsAdicionesVidaUtil: TBCDField
      FieldName = 'VidaUtil'
      Precision = 10
      Size = 2
    end
    object rsAdicionesReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsAdicionesFechaActivacion: TDateTimeField
      FieldName = 'FechaActivacion'
    end
  end
  object dsAdd: TDataSource
    DataSet = rsAdiciones
    Left = 110
    Top = 326
  end
  object cGenAdd: TADOCommand
    CommandText = 'afGenerarAdicion;1'
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
        Name = '@idActivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 310
    Top = 346
  end
  object dsUbics: TwwDataSource
    AutoEdit = False
    DataSet = rsUbics
    OnUpdateData = DSUpdateData
    Left = 79
    Top = 80
  end
  object mDistrib: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PorcDepr'
        DataType = ftFloat
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 234
    Top = 310
    object mDistribidCuenta: TStringField
      FieldName = 'idCuenta'
      OnValidate = mDistribidCuentaValidate
      Size = 16
    end
    object mDistribDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object mDistribPorcDepr: TFloatField
      FieldName = 'PorcDepr'
    end
    object mDistribLineNum: TAutoIncField
      FieldName = 'LineNum'
    end
  end
  object rsClases: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'afRSActivoClase;1'
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
        Name = '@idCategoria'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 290
    Top = 120
    object rsClasesidCategoria: TIntegerField
      FieldName = 'idCategoria'
    end
    object rsClasesidActivoClase: TStringField
      FieldName = 'idActivoClase'
      Size = 16
    end
    object rsClasesActivoClase: TStringField
      FieldName = 'ActivoClase'
      Size = 100
    end
  end
  object dsClases: TDataSource
    DataSet = rsClases
    Left = 378
    Top = 128
  end
  object rsTransxActivo: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'afListaDepreciacionActivo;1'
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
        Name = '@idActivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 104
    Top = 134
    object rsTransxActivoMejora: TStringField
      FieldName = 'Mejora'
      Size = 200
    end
    object rsTransxActivoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsTransxActivoValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
  end
  object dsTrans: TDataSource
    DataSet = rsTransxActivo
    Left = 156
    Top = 180
  end
end

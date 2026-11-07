inherited Setup: TSetup
  Left = 442
  Top = 216
  Caption = 'Configuracion'
  ClientHeight = 480
  ClientWidth = 704
  Color = clBtnFace
  PixelsPerInch = 96
  TextHeight = 13
  object Paginas: TPageControl [0]
    Left = 3
    Top = 4
    Width = 689
    Height = 445
    ActivePage = CompFisc
    MultiLine = True
    Style = tsButtons
    TabOrder = 0
    object TabSheet6: TTabSheet
      Caption = 'Datos de Compa'#241'ia'
      ImageIndex = 5
      object Label4: TLabel
        Left = 12
        Top = 300
        Width = 109
        Height = 13
        Caption = 'Imagen de Logo (BMP)'
      end
      object Label5: TLabel
        Left = 316
        Top = 300
        Width = 135
        Height = 13
        Caption = 'Imagen de Introduccion (jpg)'
      end
      object wwRecordViewPanel1: TwwRecordViewPanel
        Left = 10
        Top = 1
        Width = 577
        Height = 125
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 573
        VertScrollBar.Increment = 21
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 176
        AutoScroll = False
        TabOrder = 0
        DataSource = DSConfiguracion
        ControlOptions = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Selected.Strings = (
          'TituloApp'#9'50'#9'Titulo Aplicacion'#9'F'
          '<New Line>'
          'Compania'#9'50'#9'Compania'#9'F'
          'CompaniaCorto'#9'16'#9'CompaniaCorto'#9'F'
          'Direccion'#9'120'#9'Direccion'#9'F'
          'Telefono'#9'15'#9'Telefono'#9'F'
          'Fax'#9'15'#9'Fax'#9'F'
          'RNC'#9'20'#9'RNC'#9'F'
          'Email'#9'100'#9'Email'#9'F')
      end
      object Button2: TButton
        Left = 596
        Top = 36
        Width = 75
        Height = 25
        Caption = 'Guardar'
        TabOrder = 1
        OnClick = Button2Click
      end
      object cxDBImage1: TcxDBImage
        Left = 10
        Top = 315
        Width = 271
        Height = 100
        DataBinding.DataField = 'Logo'
        DataBinding.DataSource = dm.dsConfig
        Properties.Stretch = True
        TabOrder = 2
      end
      object cxDBImage2: TcxDBImage
        Left = 314
        Top = 315
        Width = 271
        Height = 100
        DataBinding.DataField = 'Introduccion'
        DataBinding.DataSource = dm.dsConfig
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.Stretch = True
        TabOrder = 3
      end
      object Button3: TButton
        Left = 596
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 4
        OnClick = Button3Click
      end
      object pnlEcfEmisor: TwwRecordViewPanel
        Left = 10
        Top = 135
        Width = 577
        Height = 115
        DataSource = dsecf_emisor
        TabOrder = 5
      end
      object chkUsarECF: TCheckBox
        Left = 10
        Top = 265
        Width = 180
        Height = 17
        Caption = 'Usar comprobante electr'#243'nico'
        TabOrder = 6
      end
      object rgAmbiente: TRadioGroup
        Left = 314
        Top = 253
        Width = 200
        Height = 40
        Caption = ' Ambiente '
        Columns = 2
        Items.Strings = (
          'Test'
          'Producci'#243'n')
        TabOrder = 7
      end
    end
    object Defaults: TTabSheet
      Caption = 'Defaults (Parametros de Configuracion)'
      ImageIndex = 5
      DesignSize = (
        681
        414)
      object cxGrid1: TcxGrid
        Left = 4
        Top = 6
        Width = 681
        Height = 347
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = DSDefaults
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'Clave'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          Filtering.MaxDropDownCount = 12
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGrid1DBTableView1Categoria: TcxGridDBColumn
            DataBinding.FieldName = 'Categoria'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 16
            Properties.ReadOnly = False
            Visible = False
            GroupIndex = 0
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 84
          end
          object cxGrid1DBTableView1Clave: TcxGridDBColumn
            DataBinding.FieldName = 'Clave'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 16
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 146
          end
          object cxGrid1DBTableView1Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 120
          end
          object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 60
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 321
          end
          object cxGrid1DBTableView1Tipo: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Width = 72
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxButton1: TcxButton
        Left = 6
        Top = 360
        Width = 111
        Height = 25
        Caption = 'Modificar Valor'
        TabOrder = 1
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Numeros de Contadores'
      ImageIndex = 2
      DesignSize = (
        681
        414)
      object dxDBGrid2: TdxDBGrid
        Left = 0
        Top = 14
        Width = 679
        Height = 399
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'Contador'
        ShowGroupPanel = True
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 0
        DataSource = dsContadores
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        Anchors = [akLeft, akTop, akRight, akBottom]
        object dxDBGrid2Categoria: TdxDBGridMaskColumn
          Sorted = csUp
          Visible = False
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Categoria'
          GroupIndex = 0
        end
        object dxDBGrid2Contador: TdxDBGridMaskColumn
          Width = 244
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Contador'
        end
        object dxDBGrid2Valor: TdxDBGridColumn
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Valor'
        end
        object dxDBGrid2Longitud: TdxDBGridMaskColumn
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Longitud'
        end
        object dxDBGrid2Caracter: TdxDBGridMaskColumn
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Caracter'
        end
        object dxDBGrid2Prefijo: TdxDBGridMaskColumn
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Prefijo'
        end
        object dxDBGrid2UContador: TdxDBGridColumn
          Visible = False
          Width = 15333
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UContador'
        end
        object dxDBGrid2Column8: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Reorden'
        end
      end
    end
    object CompFisc: TTabSheet
      Caption = 'Comprobantes Fiscales'
      ImageIndex = 3
      object dxDBGrid3: TdxDBGrid
        Left = 0
        Top = 0
        Width = 681
        Height = 161
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alTop
        TabOrder = 0
        DataSource = dsComprobantes
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        object dxDBGrid3Column8: TdxDBGridColumn
          Width = 149
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Descripcion'
        end
        object dxDBGrid3Terminal: TdxDBGridMaskColumn
          Caption = 'Computadora'
          Width = 129
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Terminal'
        end
        object dxDBGrid3TipoNCF: TdxDBGridMaskColumn
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TipoNCF'
        end
        object dxDBGrid3Serie: TdxDBGridMaskColumn
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Serie'
        end
        object dxDBGrid3Division: TdxDBGridMaskColumn
          Visible = False
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Division'
        end
        object dxDBGrid3Sucursal: TdxDBGridMaskColumn
          Visible = False
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Sucursal'
        end
        object dxDBGrid3Caja: TdxDBGridMaskColumn
          Visible = False
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Caja'
        end
        object dxDBGrid3Contador: TdxDBGridMaskColumn
          Alignment = taRightJustify
          Visible = False
          Width = 125
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Contador'
        end
        object dxDBGrid3Column9: TdxDBGridColumn
          Width = 64
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Longitud'
        end
      end
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 169
        Width = 681
        Height = 245
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alBottom
        TabOrder = 1
        DataSource = dsComprobantesDet
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        object dxDBGridMaskColumn1: TdxDBGridMaskColumn
          Width = 151
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Secuencia'
        end
        object dxDBGridMaskColumn2: TdxDBGridMaskColumn
          Caption = 'Secuencia Final'
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SecuenciaFinal'
        end
        object dxDBGrid1Column4: TdxDBGridDateColumn
          Caption = 'Valido Hasta'
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ValidoHasta'
        end
        object dxDBGrid1Column5: TdxDBGridMaskColumn
          Caption = 'Re-Orden'
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'reorden'
        end
        object dxDBGrid1Column6: TdxDBGridCheckColumn
          Caption = 'Inactivo'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'inactivo'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
  end
  object Button1: TButton [1]
    Left = 610
    Top = 452
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Salir'
    TabOrder = 1
    OnClick = Button1Click
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    Left = 190
    Top = 69
  end
  object DSConfiguracion: TwwDataSource
    AutoEdit = False
    DataSet = dm.Configuracion
    Left = 248
    Top = 69
  end
  object DefaultsValues: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from defaults'
    Parameters = <>
    Left = 132
    Top = 16
    object DefaultsValuesCategoria: TStringField
      DisplayWidth = 14
      FieldName = 'Categoria'
      Size = 16
    end
    object DefaultsValuesClave: TStringField
      DisplayWidth = 19
      FieldName = 'Clave'
      Size = 16
    end
    object DefaultsValuesValor: TVariantField
      DisplayWidth = 16
      FieldName = 'Valor'
    end
    object DefaultsValuesDescripcion: TStringField
      DisplayWidth = 56
      FieldName = 'Descripcion'
      Size = 60
    end
    object DefaultsValuesUidClave: TGuidField
      FieldName = 'UidClave'
      FixedChar = True
      Size = 38
    end
    object DefaultsValuesTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
  object DSDefaults: TDataSource
    DataSet = DefaultsValues
    Left = 74
    Top = 69
  end
  object dsContadores: TDataSource
    DataSet = Contadores
    Left = 132
    Top = 69
  end
  object Contadores: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * from Contador'
    Parameters = <>
    Left = 74
    Top = 16
    object ContadoresCategoria: TStringField
      DisplayWidth = 22
      FieldName = 'Categoria'
      Size = 16
    end
    object ContadoresContador: TStringField
      DisplayWidth = 24
      FieldName = 'Contador'
      Size = 50
    end
    object ContadoresValor: TLargeintField
      DisplayWidth = 11
      FieldName = 'Valor'
    end
    object ContadoresLongitud: TSmallintField
      DisplayWidth = 7
      FieldName = 'Longitud'
    end
    object ContadoresCaracter: TStringField
      DisplayWidth = 9
      FieldName = 'Caracter'
      FixedChar = True
      Size = 1
    end
    object ContadoresPrefijo: TStringField
      DisplayWidth = 7
      FieldName = 'Prefijo'
      Size = 5
    end
    object ContadoresUContador: TGuidField
      DisplayWidth = 38
      FieldName = 'UContador'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object ContadoresReorden: TIntegerField
      FieldName = 'Reorden'
    end
  end
  object Comprobantes: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterScroll = ComprobantesAfterScroll
    CommandText = 'rsCompFiscal;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 16
    Top = 16
    object ComprobantesTerminal: TStringField
      FieldName = 'Terminal'
      Size = 50
    end
    object ComprobantesSerie: TStringField
      FieldName = 'Serie'
      FixedChar = True
      Size = 1
    end
    object ComprobantesDivision: TStringField
      FieldName = 'Division'
      FixedChar = True
      Size = 2
    end
    object ComprobantesSucursal: TStringField
      FieldName = 'Sucursal'
      FixedChar = True
      Size = 3
    end
    object ComprobantesCaja: TStringField
      FieldName = 'Caja'
      FixedChar = True
      Size = 3
    end
    object ComprobantesTipoNCF: TStringField
      FieldName = 'TipoNCF'
      FixedChar = True
      Size = 2
    end
    object ComprobantesContador: TStringField
      FieldName = 'Contador'
      Size = 16
    end
    object ComprobantesuidCompFiscal: TGuidField
      FieldName = 'uidCompFiscal'
      FixedChar = True
      Size = 38
    end
    object ComprobantesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object ComprobantesLongitud: TIntegerField
      FieldName = 'Longitud'
    end
  end
  object dsComprobantes: TDataSource
    DataSet = Comprobantes
    Left = 16
    Top = 69
  end
  object ComprobantesDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = ComprobantesDetNewRecord
    CommandText = 'rsCompFiscalSecuencia'
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
        Name = '@uidCompFiscal'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 190
    Top = 14
    object ComprobantesDetidCompFiscalSecuencia: TGuidField
      FieldName = 'idCompFiscalSecuencia'
      FixedChar = True
      Size = 38
    end
    object ComprobantesDetuidCompFiscal: TGuidField
      FieldName = 'uidCompFiscal'
      FixedChar = True
      Size = 38
    end
    object ComprobantesDetSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object ComprobantesDetSecuenciaFinal: TIntegerField
      FieldName = 'SecuenciaFinal'
    end
    object ComprobantesDetValidoHasta: TDateTimeField
      FieldName = 'ValidoHasta'
    end
    object ComprobantesDetreorden: TIntegerField
      FieldName = 'reorden'
    end
    object ComprobantesDetinactivo: TBooleanField
      FieldName = 'inactivo'
    end
  end
  object dsComprobantesDet: TDataSource
    DataSet = ComprobantesDet
    Left = 248
    Top = 16
  end
  object dsecf_emisor: TDataSource
    AutoEdit = False
    DataSet = ecf_emisor
    Left = 300
    Top = 16
  end
  object ecf_emisor: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from EcfWorker.dbo.ecf_emisor'
    Parameters = <>
    Left = 330
    Top = 16
  end
end

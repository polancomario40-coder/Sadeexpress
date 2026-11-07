object frBuscadorProds: TfrBuscadorProds
  Left = 0
  Top = 0
  Width = 713
  Height = 225
  TabOrder = 0
  DesignSize = (
    713
    225)
  object Label1: TLabel
    Left = 2
    Top = 9
    Width = 33
    Height = 13
    Caption = 'Buscar'
  end
  object SpeedButton1: TSpeedButton
    Left = 638
    Top = 6
    Width = 71
    Height = 22
    Caption = 'Detalle'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object edBuscar: TdxEdit
    Left = 38
    Top = 5
    Width = 491
    TabOrder = 0
    OnKeyDown = edBuscarKeyDown
    StyleController = StyleController
    OnChange = edBuscarChange
  end
  object cbLookInside: TdxCheckEdit
    Left = 532
    Top = 6
    Width = 97
    Style.Edges = []
    TabOrder = 1
    Caption = '&Buscar dentro'
    StyleController = StyleController
    State = cbsChecked
  end
  object grListaProds: TdxDBGrid
    Left = 0
    Top = 32
    Width = 711
    Height = 189
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ProductoID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnDblClick = grListaProdsDblClick
    OnKeyDown = grListaProdsKeyDown
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = ds
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -9
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    LookAndFeel = lfUltraFlat
    OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    OnColumnClick = grListaProdsColumnClick
    Anchors = [akLeft, akTop, akRight, akBottom]
    object dxDBGrid1ProductoID: TdxDBGridMaskColumn
      Caption = 'Articulo'
      Width = 109
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idProducto'
    end
    object dxDBGrid1Descripcion: TdxDBGridMaskColumn
      Color = clInfoBk
      Width = 342
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Producto'
    end
    object dxDBGrid1CodigoFabricante: TdxDBGridMaskColumn
      Caption = 'Codigo fabricante'
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
    object dxDBGrid1Referencia: TdxDBGridMaskColumn
      Caption = 'Universal'
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Modelo'
    end
    object dxDBGrid1Precio: TdxDBGridCurrencyColumn
      Caption = 'Precio'
      Width = 76
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PrecioContado'
      Nullable = False
    end
  end
  object rsLista: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'pvListaProductosParcial;1'
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
        Name = '@fld'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@valr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@lookin'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 36
    Top = 102
    object rsListaidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsListaProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object rsListaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 25
    end
    object rsListaModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object rsListaPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
      Precision = 19
      Size = 2
    end
    object rsListaPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      Precision = 19
      Size = 2
    end
  end
  object StyleController: TdxEditStyleController
    BorderColor = 14065456
    BorderStyle = xbsSingle
    ButtonStyle = btsSimple
    HotTrack = True
    Left = 338
    Top = 92
  end
  object ds: TDataSource
    DataSet = rsLista
    Left = 106
    Top = 104
  end
end

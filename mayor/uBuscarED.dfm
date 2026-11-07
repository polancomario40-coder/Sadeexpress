object fLocEntrada: TfLocEntrada
  Left = 293
  Top = 220
  ActiveControl = edValor
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Buscar Entrada Diario'
  ClientHeight = 414
  ClientWidth = 628
  Color = 14870499
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 2
    Top = 2
    Width = 41
    Height = 13
    Caption = 'Columna'
  end
  object Label2: TLabel
    Left = 198
    Top = 2
    Width = 44
    Height = 13
    Caption = 'Operador'
  end
  object Label3: TLabel
    Left = 338
    Top = 2
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object peCols: TdxPickEdit
    Left = 2
    Top = 17
    Width = 189
    Color = 16382969
    Style.BorderColor = 8164481
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsHotFlat
    Style.ButtonTransparence = ebtHideInactive
    Style.HotTrack = True
    TabOrder = 0
    Text = 'peCols'
    Items.Strings = (
      'Numero'
      'Fecha'
      'Concepto'
      'Tipo')
  end
  object edValor: TdxEdit
    Left = 338
    Top = 17
    Width = 287
    Color = 16382969
    Style.BorderColor = 8164481
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsHotFlat
    Style.ButtonTransparence = ebtHideInactive
    Style.HotTrack = True
    TabOrder = 1
  end
  object peOps: TdxPickEdit
    Left = 198
    Top = 17
    Width = 131
    Color = 16382969
    Style.BorderColor = 8164481
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsHotFlat
    Style.ButtonTransparence = ebtHideInactive
    Style.HotTrack = True
    TabOrder = 2
    Text = 'dxPickEdit1'
    Items.Strings = (
      'Igual a (=)'
      'Contiene'
      'Comienza con'
      'Diferente (<>) ')
  end
  object dxDBGrid1: TdxDBGrid
    Left = 2
    Top = 74
    Width = 623
    Height = 303
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'IdEntrada'
    SummaryGroups = <>
    SummarySeparator = ', '
    Color = 16382969
    TabOrder = 3
    OnDblClick = dxDBGrid1DblClick
    OnEnter = dxDBGrid1Enter
    OnExit = dxDBGrid1Exit
    DataSource = LocSource
    Filter.Criteria = {00000000}
    HeaderColor = 12109242
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
    object dxDBGrid1NumeroEntrada: TdxDBGridMaskColumn
      Caption = 'Numero'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NumeroEntrada'
    end
    object dxDBGrid1Fecha: TdxDBGridDateColumn
      Sorted = csUp
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object dxDBGrid1TipoEntrada: TdxDBGridMaskColumn
      Caption = 'Tipo'
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TipoEntrada'
    end
    object dxDBGrid1Concepto: TdxDBGridMemoColumn
      Width = 354
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 1
      FieldName = 'Concepto'
    end
  end
  object BitBtn1: TBitBtn
    Left = 2
    Top = 45
    Width = 89
    Height = 25
    Caption = 'Buscar'
    Default = True
    TabOrder = 4
    OnClick = BitBtn1Click
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
  end
  object bbOk: TBitBtn
    Left = 2
    Top = 382
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 5
    OnClick = bbOkClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
      6666666666666666666666660000666666666666666666666666666666666666
      0000666666886666666666666666666666666666000066666CC8866666666666
      666888666666666600006666C22C88666666666666888886666666660000666A
      2222C886666666666888888866666666000066A222222C886666666668888888
      86666666000066A222A222C8866666666888688888666666000066A22C8A222C
      866666666888868888866666000066A22C86A22C886666666888866888866666
      0000666A2C666A22C8866666668866668888666600006666AA6666A22C886666
      6666666668888666000066666666666A22C88666666666666688886600006666
      66666666A22C8666666666666668888600006666666666666A2C866666666666
      66668886000066666666666666AC666666666666666668660000666666666666
      6666666666666666666666660000666666666666666666666666666666666666
      0000}
    NumGlyphs = 2
  end
  object bbCancelar: TBitBtn
    Left = 100
    Top = 382
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = bbCancelarClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
      6666666666666666666666660000666668666666666666666666666666666666
      0000666608866666666666666686666666666666000066691086666688666666
      6888666666666666000066691088666008866666688866666886666600006669
      1108869110866666688886668888666600006666911089111066666666888868
      8888666600006666911191110666666666888888888666660000666669111110
      6666666666688888886666660000666666911108866666666666888886666666
      0000666666911110866666666666888888666666000066666911011088666666
      6668888888666666000066666910691108866666666888688886666600006666
      9106669110886666668886668888666600006666910666691108666666888666
      6888866600006666696666669106666666686666668886660000666666666666
      6966666666666666666866660000666666666666666666666666666666666666
      0000}
    NumGlyphs = 2
  end
  object rsLoc: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select '#9'NumeroEntrada, '#13#10'                IdEntrada, '#13#10#9'Fecha,'#13#10#9 +
      'TipoEntrada,'#13#10#9'substring(concepto, 1, 8000) as Concepto '#13#10'from c' +
      'gEntradasDiario e'#13#10'order by Fecha, NumeroEntrada '#13#10
    Parameters = <>
    Left = 202
    Top = 195
    object rsLocNumeroEntrada: TStringField
      FieldName = 'NumeroEntrada'
      Size = 16
    end
    object rsLocFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsLocTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      FixedChar = True
      Size = 2
    end
    object rsLocConcepto: TVarBytesField
      FieldName = 'Concepto'
      ReadOnly = True
      Size = 8000
    end
    object rsLocIdEntrada: TGuidField
      FieldName = 'IdEntrada'
      FixedChar = True
      Size = 38
    end
  end
  object LocSource: TDataSource
    DataSet = rsLoc
    Left = 250
    Top = 187
  end
end

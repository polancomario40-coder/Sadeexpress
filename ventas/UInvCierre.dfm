inherited InvCierre: TInvCierre
  Left = 352
  Top = 208
  Caption = 'Cierre de Inventarios'
  ClientHeight = 222
  ClientWidth = 554
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 88
    Top = 94
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object Label3: TLabel [1]
    Left = 68
    Top = 62
    Width = 120
    Height = 16
    Caption = 'Cerrar Inventario '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [2]
    Left = 367
    Top = 3
    Width = 158
    Height = 13
    Caption = 'Cierres del almacen seleccionado'
  end
  object Desde: TdxDateEdit [3]
    Left = 136
    Top = 88
    Width = 145
    Style.BorderColor = clHighlight
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsDefault
    Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
    Style.HotTrack = False
    Style.Shadow = False
    TabOrder = 0
    Date = -700000.000000000000000000
  end
  object BitBtn1: TBitBtn [4]
    Left = 24
    Top = 184
    Width = 93
    Height = 26
    Caption = 'Cancelar'
    TabOrder = 1
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn [5]
    Left = 254
    Top = 186
    Width = 89
    Height = 25
    Caption = 'Procesar'
    ModalResult = 1
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object Cerrar: TdxCheckEdit [6]
    Left = 85
    Top = 118
    Width = 69
    TabOrder = 3
    Alignment = taRightJustify
    Caption = 'Cerrar'
    StyleController = dm.dxEstilo
    State = cbsChecked
    StoredValues = 1
  end
  object dxDBGrid1: TdxDBGrid [7]
    Left = 366
    Top = 19
    Width = 183
    Height = 199
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'CerradoEn'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 4
    DataSource = dsUltimoCierre
    Filter.FilterStatus = fsNone
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoDragScroll, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    ScrollBars = ssVertical
    ShowGrid = False
    ShowPreviewGrid = False
    object dxDBGrid1DiaCierre: TdxDBGridDateColumn
      Caption = 'Cerrado Al'
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DiaCierre'
    end
    object dxDBGrid1Column2: TdxDBGridColumn
      Caption = 'Cerrado el dia'
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CerradoEn'
    end
  end
  inherited DS: TwwDataSource
    DataSet = UltimoCierre
    Left = 313
    Top = 63
  end
  object UltimoCierre: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'invUltimoCierreFull;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 216
    Top = 6
    object UltimoCierreDiaCierre: TDateTimeField
      FieldName = 'DiaCierre'
    end
    object UltimoCierreCerradoEn: TDateTimeField
      FieldName = 'CerradoEn'
    end
  end
  object InvCerrarAbrir: TADOCommand
    CommandText = 'InvCerrarAbrirFull;1'
    CommandTimeout = 120
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
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Cerrar'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 290
    Top = 130
  end
  object dsUltimoCierre: TDataSource
    AutoEdit = False
    DataSet = UltimoCierre
    Left = 308
    Top = 8
  end
end

object fGLInterface: TfGLInterface
  Left = 422
  Top = 165
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Interface con los auxiliares'
  ClientHeight = 381
  ClientWidth = 608
  Color = clWhite
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
    Left = 444
    Top = 299
    Width = 34
    Height = 13
    Caption = 'Desde:'
    Transparent = True
  end
  object Label2: TLabel
    Left = 447
    Top = 321
    Width = 31
    Height = 13
    Caption = 'Hasta:'
    Transparent = True
  end
  object Label3: TLabel
    Left = 4
    Top = 4
    Width = 85
    Height = 13
    Caption = 'Entradas de diario'
  end
  object dxDBGrid1: TdxDBGrid
    Left = 4
    Top = 20
    Width = 433
    Height = 353
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'NumEntrada'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 0
    DataSource = EDSource
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFieldName = 'Concepto'
    object dxDBGrid1NumEntrada: TdxDBGridMaskColumn
      Caption = 'Entrada'
      Width = 43
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NumEntrada'
    end
    object dxDBGrid1Descripcion: TdxDBGridMaskColumn
      Width = 321
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Descripcion'
    end
    object dxDBGrid1Concepto: TdxDBGridMemoColumn
      Visible = False
      Width = 2894
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Concepto'
    end
    object dxDBGrid1TipoEntrada: TdxDBGridMaskColumn
      Caption = 'Tipo'
      Width = 49
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TipoEntrada'
    end
    object dxDBGrid1sprocNomb: TdxDBGridMaskColumn
      Visible = False
      Width = 148
      BandIndex = 0
      RowIndex = 0
      FieldName = 'sprocNomb'
    end
  end
  object dtDesde: TcxDateEdit
    Left = 480
    Top = 296
    Width = 121
    Height = 21
    EditValue = 37347d
    TabOrder = 1
  end
  object dtHasta: TcxDateEdit
    Left = 480
    Top = 318
    Width = 121
    Height = 21
    EditValue = 37376d
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 446
    Top = 348
    Width = 157
    Height = 25
    Caption = 'Generar Entrada'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object rsGenEntradas: TADODataSet
    Connection = gldm.glConn
    CommandText = 'select * from cgGenEntradas'
    Parameters = <>
    Left = 200
    Top = 24
    object rsGenEntradasNumEntrada: TStringField
      FieldName = 'NumEntrada'
      Size = 4
    end
    object rsGenEntradasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsGenEntradasConcepto: TStringField
      FieldName = 'Concepto'
      Size = 400
    end
    object rsGenEntradasTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      Size = 2
    end
    object rsGenEntradassprocNomb: TStringField
      FieldName = 'sprocNomb'
      Size = 40
    end
  end
  object EDSource: TDataSource
    DataSet = rsGenEntradas
    Left = 112
    Top = 24
  end
  object cmdSproc: TADOCommand
    CommandText = 'POSGenEDVentas;1'
    CommandType = cmdStoredProc
    Connection = gldm.glConn
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 186
    Top = 160
  end
  object cmdImportED: TADOCommand
    CommandText = 'cgImportarEntrada;1'
    CommandType = cmdStoredProc
    Connection = gldm.glConn
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ednum'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6
        Value = Null
      end
      item
        Name = '@fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 182
    Top = 216
  end
end

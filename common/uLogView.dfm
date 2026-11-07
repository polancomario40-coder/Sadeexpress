inherited LogsView: TLogsView
  Left = 266
  Top = 116
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Logs'
  ClientHeight = 530
  ClientWidth = 734
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 10
    Top = 15
    Width = 31
    Height = 13
    Caption = 'Desde'
  end
  object Label5: TLabel [1]
    Left = 202
    Top = 10
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object dxDBGrid1: TdxDBGrid [2]
    Left = 3
    Top = 40
    Width = 727
    Height = 486
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'idLoging'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 0
    DataSource = DS
    Filter.Active = True
    Filter.FilterStatus = fsAlways
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsDB = [edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
    Anchors = [akLeft, akTop, akRight, akBottom]
    object dxDBGrid1Fechahora: TdxDBGridDateColumn
      Caption = 'Fecha/Hora'
      Width = 157
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fechahora'
    end
    object dxDBGrid1Objeto: TdxDBGridMaskColumn
      Width = 148
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Objeto'
    end
    object dxDBGrid1Usuario: TdxDBGridMaskColumn
      Width = 88
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Usuario'
    end
    object dxDBGrid1Accion: TdxDBGridMaskColumn
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Accion'
    end
    object dxDBGrid1Referencia: TdxDBGridMaskColumn
      Width = 257
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
  end
  object desde: TwwDBDateTimePicker [3]
    Left = 48
    Top = 12
    Width = 133
    Height = 19
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    ButtonStyle = cbsEllipsis
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Frame.Enabled = True
    ShowButton = True
    TabOrder = 1
  end
  object hasta: TwwDBDateTimePicker [4]
    Left = 240
    Top = 9
    Width = 133
    Height = 19
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    ButtonStyle = cbsEllipsis
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Frame.Enabled = True
    ShowButton = True
    TabOrder = 2
  end
  object BitBtn1: TBitBtn [5]
    Left = 480
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    Default = True
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [6]
    Left = 648
    Top = 4
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Salir'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  inherited DS: TwwDataSource
    DataSet = rsLog
  end
  object rsLog: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'MostrarLogs;1'
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
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 144
    Top = 152
    object rsLogidLoging: TGuidField
      FieldName = 'idLoging'
      FixedChar = True
      Size = 38
    end
    object rsLogFechahora: TDateTimeField
      FieldName = 'Fechahora'
    end
    object rsLogUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsLogAccion: TStringField
      FieldName = 'Accion'
      Size = 50
    end
    object rsLogObjeto: TStringField
      FieldName = 'Objeto'
      Size = 50
    end
    object rsLogReferencia: TStringField
      FieldName = 'Referencia'
      Size = 50
    end
  end
end

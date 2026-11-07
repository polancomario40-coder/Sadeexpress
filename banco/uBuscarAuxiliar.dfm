object BuscarAuxiliar: TBuscarAuxiliar
  Left = 502
  Top = 230
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Buscar auxiliares'
  ClientHeight = 406
  ClientWidth = 490
  Color = 14870499
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TdxDBGrid
    Left = 2
    Top = 2
    Width = 488
    Height = 373
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'IdCuenta'
    SummaryGroups = <>
    SummarySeparator = ', '
    Color = 16382969
    TabOrder = 0
    OnDblClick = GridDblClick
    DataSource = CDSource
    Filter.Criteria = {00000000}
    HeaderColor = 12109242
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    object GrididAuxiliar: TdxDBGridMaskColumn
      Caption = 'Numero'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idAuxiliar'
    end
    object GridAuxiliar: TdxDBGridMaskColumn
      Width = 359
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Auxiliar'
    end
  end
  object bbOk: TBitBtn
    Left = 2
    Top = 379
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
    Kind = bkOK
  end
  object bbCan: TBitBtn
    Left = 88
    Top = 379
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object CDSource: TDataSource
    DataSet = rs
    Left = 298
    Top = 114
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cgRSAuxiliar;1'
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
        Name = '@idCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 198
    Top = 114
    object rsidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsAuxiliar: TStringField
      FieldName = 'Auxiliar'
      Size = 100
    end
    object rsActivo: TBooleanField
      FieldName = 'Activo'
    end
  end
end

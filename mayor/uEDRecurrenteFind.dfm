object EDRecurrenteFind: TEDRecurrenteFind
  Left = 432
  Top = 216
  BorderStyle = bsSingle
  Caption = 'Buscar entrada recurrente'
  ClientHeight = 444
  ClientWidth = 601
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 601
    Height = 401
    Align = alTop
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idEDRecurrente'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = cxGrid1DBTableView1CellClick
      OptionsBehavior.IncSearch = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Concepto: TcxGridDBColumn
        DataBinding.FieldName = 'Concepto'
        Options.Filtering = False
        Width = 355
      end
      object cxGrid1DBTableView1NumeroEntrada: TcxGridDBColumn
        Caption = 'ED Numero'
        DataBinding.FieldName = 'NumeroEntrada'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 2
    Top = 408
    Width = 159
    Height = 31
    Caption = 'Aceptar'
    Default = True
    ModalResult = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 440
    Top = 408
    Width = 159
    Height = 31
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
    LookAndFeel.NativeStyle = True
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cgEDRecurrenteFind;1'
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
        Name = '@orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 76
    Top = 54
    object rsidEDRecurrente: TGuidField
      FieldName = 'idEDRecurrente'
      FixedChar = True
      Size = 38
    end
    object rsGrupo: TStringField
      FieldName = 'Grupo'
    end
    object rsConcepto: TStringField
      FieldName = 'Concepto'
      Size = 4000
    end
    object rsNumeroEntrada: TStringField
      FieldName = 'NumeroEntrada'
      Size = 16
    end
  end
  object ds: TDataSource
    DataSet = rs
    Left = 290
    Top = 236
  end
end

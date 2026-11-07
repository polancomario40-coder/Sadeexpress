object MantFactoresMes: TMantFactoresMes
  Left = 352
  Top = 330
  Width = 484
  Height = 384
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Registro de factores a una fecha'
  Color = 16251643
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
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Width = 37
    Height = 17
    Caption = 'Fecha:'
    Properties.Transparent = True
  end
  object deFec: TcxDateEdit
    Left = 48
    Top = 8
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton
    Left = 8
    Top = 31
    Width = 97
    Height = 27
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid
    Left = 4
    Top = 71
    Width = 467
    Height = 235
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idFactor'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1luFactores: TcxGridDBColumn
        Caption = 'Factor'
        DataBinding.FieldName = 'idFactor'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idFactor'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsFacts
        Options.Filtering = False
        Width = 370
      end
      object cxGrid1DBTableView1Porc: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'Porc'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.Increment = 0.100000000000000000
        Properties.LargeIncrement = 1.000000000000000000
        Properties.MaxValue = 100.000000000000000000
        Properties.MinValue = 0.010000000000000000
        Properties.ValueType = vtFloat
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 74
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 334
    Top = 308
    Width = 137
    Height = 37
    Caption = 'Cerrar'
    TabOrder = 4
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton
    Left = 334
    Top = 31
    Width = 137
    Height = 37
    Caption = 'Generar entrada'
    TabOrder = 5
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object ds: TDataSource
    DataSet = rsFactoresMes
    Left = 260
    Top = 220
  end
  object rsFactoresMes: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsFactoresMesNewRecord
    CommandText = 'cgListaFactoresMes;1'
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
        Name = '@fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 68
    Top = 162
    object rsFactoresMesidFactor: TIntegerField
      FieldName = 'idFactor'
    end
    object rsFactoresMesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsFactoresMesPorc: TBCDField
      FieldName = 'Porc'
      Precision = 6
      Size = 2
    end
  end
  object rsFactores: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cgListaFactores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 206
    Top = 138
    object rsFactoresidFactor: TIntegerField
      FieldName = 'idFactor'
      ReadOnly = True
    end
    object rsFactoresDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object dsFacts: TDataSource
    DataSet = rsFactores
    Left = 304
    Top = 138
  end
  object cGenerar: TADOCommand
    CommandText = 'cgEDDistribuciones;1'
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
        Name = '@idDistr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 156
    Top = 96
  end
end

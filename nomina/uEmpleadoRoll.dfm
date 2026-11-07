inherited EmpleadoRoll: TEmpleadoRoll
  Left = 350
  Top = 121
  Caption = 'Roll / Posicion'
  ClientHeight = 375
  ClientWidth = 644
  Color = 15922418
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Left = 319
    Top = 237
    Width = 237
    Height = 77
    Selected.Strings = (
      'idEmpleadoRoll'#9'5'#9'Codigo'
      'EmpleadoRoll'#9'38'#9'Roll / Posicion'
      'SueldoHora'#9'17'#9'SueldoHora Promedio'
      'IdNivelRoll'#9'10'#9'IdNivelRoll')
    Align = alCustom
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Name = 'Tahoma'
    Visible = False
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 644
    Height = 45
    inherited banterior: TwwNavButton
      Width = 81
      Height = 45
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 81
      Width = 81
      Height = 45
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 162
      Width = 81
      Height = 45
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 243
      Width = 81
      Height = 45
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 324
      Width = 80
      Height = 45
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 404
      Width = 80
      Height = 45
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 484
      Width = 80
      Height = 45
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 564
      Width = 80
      Height = 45
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 2
    Top = 47
    Width = 640
    Height = 293
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'idEmpleadoRoll'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1idEmpleadoRoll: TcxGridDBColumn
        DataBinding.FieldName = 'idEmpleadoRoll'
        Options.Filtering = False
        Width = 55
      end
      object cxGrid1DBTableView1EmpleadoRoll: TcxGridDBColumn
        Caption = 'Roll / Posici'#243'n'
        DataBinding.FieldName = 'EmpleadoRoll'
        Options.Filtering = False
        Width = 310
      end
      object cxGrid1DBTableView1SueldoHora: TcxGridDBColumn
        DataBinding.FieldName = 'SueldoHora'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Nivel'
        DataBinding.FieldName = 'IdNivelRoll'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'IdNivelRoll'
        Properties.ListColumns = <
          item
            FieldName = 'NivelRoll'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsNivelRoll
        Options.Filtering = False
        Width = 183
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        Caption = 'COD. SIRLA'
        DataBinding.FieldName = 'idOcupacion'
        Options.Filtering = False
        Width = 106
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited DS: TwwDataSource
    DataSet = EmpleadoRoll
  end
  object EmpleadoRoll: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from EmpleadoRoll'
    Parameters = <>
    Left = 192
    Top = 144
    object EmpleadoRollidEmpleadoRoll: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 5
      FieldName = 'idEmpleadoRoll'
      Size = 16
    end
    object EmpleadoRollEmpleadoRoll: TStringField
      DisplayLabel = 'Roll / Posicion'
      DisplayWidth = 38
      FieldName = 'EmpleadoRoll'
      Size = 50
    end
    object EmpleadoRollSueldoHora: TBCDField
      DisplayLabel = 'SueldoHora Promedio'
      DisplayWidth = 17
      FieldName = 'SueldoHora'
      Precision = 18
      Size = 2
    end
    object EmpleadoRollIdNivelRoll: TIntegerField
      FieldName = 'IdNivelRoll'
    end
    object EmpleadoRollidOcupacion: TStringField
      FieldName = 'idOcupacion'
      Size = 16
    end
  end
  object qryNivelRoll: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  nomNivelRoll')
    Left = 170
    Top = 324
    object qryNivelRollIdNivelRoll: TAutoIncField
      FieldName = 'IdNivelRoll'
      ReadOnly = True
    end
    object qryNivelRollNivelRoll: TStringField
      FieldName = 'NivelRoll'
      Size = 300
    end
  end
  object dsNivelRoll: TDataSource
    DataSet = qryNivelRoll
    Left = 268
    Top = 314
  end
end

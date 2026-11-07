inherited Unidad: TUnidad
  Caption = 'Unidades de Medida'
  ClientHeight = 385
  ClientWidth = 569
  Color = 16311512
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Left = 314
    Top = 222
    Width = 238
    Height = 143
    Selected.Strings = (
      'idUnidad'#9'13'#9'idUnidad'
      'Unidad'#9'28'#9'Unidad'
      'idUnidadBase'#9'12'#9'Basado en'#9'F'
      'idFactor'#9'8'#9'Factor (x)')
    Align = alCustom
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Name = 'Tahoma'
    Visible = False
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 569
    inherited banterior: TwwNavButton
      Width = 72
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 72
      Width = 71
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 143
      Width = 71
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 214
      Width = 71
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 285
      Width = 71
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 356
      Width = 71
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 427
      Width = 71
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 498
      Width = 71
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 3
    Top = 37
    Width = 563
    Height = 345
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    object cxGrid: TcxGridDBBandedTableView
      DataController.DataSource = DS
      DataController.DetailKeyFieldNames = 'idUnidad'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Enabled = False
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Delete.Enabled = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsSelection.HideSelection = True
      OptionsView.Navigator = True
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupRowHeight = 23
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.NewItemRowInfoText = 'Haga click aqui para agregar una nueva linea'
      OptionsView.BandHeaders = False
      Styles.ContentEven = cxStyle1
      Styles.Group = cxStyle2
      Bands = <
        item
        end>
      object cxGrididUnidad: TcxGridDBBandedColumn
        Caption = 'C'#243'digo Unidad'
        DataBinding.FieldName = 'idUnidad'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridUnidad: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Unidad'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrididUnidadBase: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idUnidadBase'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'IdUnidad'
        Properties.ListColumns = <
          item
            FieldName = 'Unidad'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsUnidades
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrididFactor: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idFactor'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridUidUnidad: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UidUnidad'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid
    end
  end
  inherited DS: TwwDataSource
    DataSet = rsUnidad
  end
  object rsUnidad: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsUnidadNewRecord
    CommandText = 'Select * from Unidad order by idUnidad'
    Parameters = <>
    Left = 184
    Top = 96
    object rsUnidadidUnidad: TStringField
      DisplayWidth = 13
      FieldName = 'idUnidad'
      Size = 16
    end
    object rsUnidadUnidad: TStringField
      DisplayWidth = 28
      FieldName = 'Unidad'
      Size = 50
    end
    object rsUnidadidUnidadBase: TStringField
      DisplayLabel = 'Basado en'
      DisplayWidth = 12
      FieldName = 'idUnidadBase'
      Size = 50
    end
    object rsUnidadidFactor: TFloatField
      DisplayLabel = 'Factor (x)'
      DisplayWidth = 8
      FieldName = 'idFactor'
    end
    object rsUnidadUidUnidad: TGuidField
      DisplayWidth = 38
      FieldName = 'UidUnidad'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
  object qryUnidades: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  IdUnidad,'
      '  Unidad'
      'FROM'
      '  Unidad'
      'ORDER BY'
      '  IdUnidad')
    Left = 168
    Top = 244
  end
  object dsUnidades: TDataSource
    DataSet = qryUnidades
    Left = 170
    Top = 292
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
end

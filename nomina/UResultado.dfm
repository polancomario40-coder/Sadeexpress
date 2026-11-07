inherited Resultado: TResultado
  Left = 332
  Top = 311
  Caption = 'Resultado de Nomina'
  ClientHeight = 401
  ClientWidth = 730
  Color = clWindow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 648
    Top = 8
  end
  inherited ToolBar1: TToolBar
    Width = 730
    object SpeedButton7: TSpeedButton
      Left = 484
      Top = 0
      Width = 70
      Height = 30
      Caption = 'Ver Datos'
      OnClick = SpeedButton7Click
    end
  end
  object Grid: TwwDBGrid [2]
    Left = 0
    Top = 0
    Width = 730
    Height = 344
    DisableThemes = False
    Selected.Strings = (
      'Departamento'#9'11'#9'Departamento'
      'Seccion'#9'10'#9'Seccion'
      'EmpleadoID'#9'5'#9'Empl'
      'Empleado'#9'20'#9'Nombre'
      'HoraNormal'#9'5'#9'H Nor'
      'HoraNocturna'#9'6'#9'H Noc'
      'HoraExtra'#9'6'#9'H Extra'
      'HoraDoble'#9'6'#9'H Doble'
      'PrecioNormal'#9'7'#9'Pr Normal'
      'PrecioNocturna'#9'12'#9'PrecioNocturna'
      'PrecioExtra'#9'9'#9'PrecioExtra'
      'PrecioDoble'#9'9'#9'PrecioDoble'
      'TotalNormal'#9'9'#9'TotalNormal'
      'TotalNocturna'#9'11'#9'TotalNocturna'
      'TotalExtra'#9'8'#9'TotalExtra'
      'TotalDoble'#9'8'#9'TotalDoble'
      'ProdNormal'#9'9'#9'ProdNormal'
      'ProdNocturna'#9'11'#9'ProdNocturna'
      'ProdExtra'#9'7'#9'ProdExtra'
      'ProdDoble'#9'8'#9'ProdDoble'
      'OtrosIngresos'#9'10'#9'OtrosIngresos'
      'Bruto'#9'10'#9'Bruto'
      'SS'#9'6'#9'SS'
      'IR'#9'6'#9'IR'
      'Ley250'#9'6'#9'Ley250'
      'OtrosDescuentos'#9'13'#9'OtrosDescuentos'
      'TDescuentos'#9'10'#9'TDescuentos'
      'Neto'#9'10'#9'Neto'
      'DiasPuntoA'#9'9'#9'DiasPuntoA'
      'DiasPuntoB'#9'9'#9'DiasPuntoB'
      'DiasPuntoC'#9'9'#9'DiasPuntoC'
      'Cheque'#9'6'#9'Cheque'
      'Volante'#9'6'#9'Volante'
      'Notas'#9'30'#9'Notas'
      'Fecha'#9'10'#9'Fecha'
      'Desde'#9'10'#9'Desde'
      'Hasta'#9'10'#9'Hasta')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DS
    KeyOptions = [dgEnterToTab]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object DBNavigator1: TDBNavigator [3]
    Left = 0
    Top = 376
    Width = 730
    Height = 25
    TabOrder = 2
  end
  inherited DS: TwwDataSource
    Left = 432
    Top = 176
  end
  inherited ld: TwwLookupDialog
    Top = 160
  end
  object VerRec: TwwRecordViewDialog
    DataSource = DS
    EditSpacing.HorizontalView.BetweenLabelEdit = 5
    EditSpacing.HorizontalView.BetweenRow = 4
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsSaveBookmark, nbsRestoreBookmark]
    Style = rvsHorizontal
    ControlOptions = [rvcFlatButtons]
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Caption = 'Record View'
    NavigatorFlat = True
    Left = 344
    Top = 216
  end
  object Filtro: TwwFilterDialog
    SortBy = fdSortByFieldNo
    FilterMethod = fdByFilter
    DefaultMatchType = fdMatchStart
    DefaultFilterBy = fdSmartFilter
    FieldOperators.OrChar = 'or'
    FieldOperators.AndChar = 'and'
    FieldOperators.NullChar = 'null'
    FilterPropertyOptions.LikeWildcardChar = '%'
    FilterOptimization = fdNone
    QueryFormatDateMode = qfdMonthDayYear
    SQLTables = <>
    Top = 256
  end
end

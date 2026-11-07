inherited VentasXGrupo12Meses: TVentasXGrupo12Meses
  Left = 128
  Top = 158
  Caption = 'Ventas por Grupo'
  ClientHeight = 449
  ClientWidth = 784
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 18
    Top = 19
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 20
    Top = 47
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object deDesde: TcxDateEdit [2]
    Left = 60
    Top = 15
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [3]
    Left = 60
    Top = 43
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [4]
    Left = 536
    Top = 4
    Width = 115
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [5]
    Left = 656
    Top = 4
    Width = 115
    Height = 29
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [6]
    Left = 537
    Top = 40
    Width = 115
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Exportar a Excel'
    TabOrder = 4
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object Grid: TcxGrid [7]
    Left = 4
    Top = 74
    Width = 779
    Height = 373
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Enero'
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Styles.Footer = cxStyle1
      Styles.Group = cxStyle2
      object GridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object GridDBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 179
      end
      object GridDBTableView1TotalGral: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TotalGral'
        Options.Editing = False
        Options.Filtering = False
        Width = 109
      end
      object GridDBTableView1Enero: TcxGridDBColumn
        DataBinding.FieldName = 'Enero'
        Options.Filtering = False
        Width = 111
      end
      object GridDBTableView1Febrero: TcxGridDBColumn
        DataBinding.FieldName = 'Febrero'
        Options.Filtering = False
        Width = 135
      end
      object GridDBTableView1Marzo: TcxGridDBColumn
        DataBinding.FieldName = 'Marzo'
        Options.Filtering = False
        Width = 118
      end
      object GridDBTableView1Abril: TcxGridDBColumn
        DataBinding.FieldName = 'Abril'
        Options.Filtering = False
        Width = 105
      end
      object GridDBTableView1Mayo: TcxGridDBColumn
        DataBinding.FieldName = 'Mayo'
        Options.Filtering = False
        Width = 115
      end
      object GridDBTableView1Junio: TcxGridDBColumn
        DataBinding.FieldName = 'Junio'
        Options.Filtering = False
        Width = 105
      end
      object GridDBTableView1Julio: TcxGridDBColumn
        DataBinding.FieldName = 'Julio'
        Options.Filtering = False
        Width = 97
      end
      object GridDBTableView1Agosto: TcxGridDBColumn
        DataBinding.FieldName = 'Agosto'
        Options.Filtering = False
        Width = 107
      end
      object GridDBTableView1Septiembre: TcxGridDBColumn
        DataBinding.FieldName = 'Septiembre'
        Options.Filtering = False
        Width = 121
      end
      object GridDBTableView1Octubre: TcxGridDBColumn
        DataBinding.FieldName = 'Octubre'
        Options.Filtering = False
        Width = 114
      end
      object GridDBTableView1Noviembre: TcxGridDBColumn
        DataBinding.FieldName = 'Noviembre'
        Options.Filtering = False
        Width = 119
      end
      object GridDBTableView1Diciembre: TcxGridDBColumn
        DataBinding.FieldName = 'Diciembre'
        Options.Filtering = False
        Width = 110
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton2: TcxButton [8]
    Left = 656
    Top = 40
    Width = 57
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Expandir'
    TabOrder = 6
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton5: TcxButton [9]
    Left = 714
    Top = 40
    Width = 57
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Colapsar'
    TabOrder = 7
    OnClick = cxButton5Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = RS
    Left = 143
    Top = 237
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svVentaXGrupo12Meses;1'
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
    Top = 172
    object RSid: TGuidField
      FieldName = 'id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object RSGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object RSTotalGral: TBCDField
      FieldName = 'TotalGral'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSEnero: TBCDField
      FieldName = 'Enero'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSFebrero: TBCDField
      FieldName = 'Febrero'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSMarzo: TBCDField
      FieldName = 'Marzo'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSAbril: TBCDField
      FieldName = 'Abril'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSMayo: TBCDField
      FieldName = 'Mayo'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSJunio: TBCDField
      FieldName = 'Junio'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSJulio: TBCDField
      FieldName = 'Julio'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSAgosto: TBCDField
      FieldName = 'Agosto'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSSeptiembre: TBCDField
      FieldName = 'Septiembre'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSOctubre: TBCDField
      FieldName = 'Octubre'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSNoviembre: TBCDField
      FieldName = 'Noviembre'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object RSDiciembre: TBCDField
      FieldName = 'Diciembre'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 374
    Top = 176
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 434
    Top = 12
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 13041663
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15720410
    end
  end
end

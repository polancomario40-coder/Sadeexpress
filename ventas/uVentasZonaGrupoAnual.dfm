inherited VentaZonaGrupoAnual: TVentaZonaGrupoAnual
  Left = 223
  Top = 171
  Caption = 'Ventas por Zona y Grupos de Productos Anual'
  ClientHeight = 515
  ClientWidth = 784
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 11
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 26
    Top = 35
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object deDesde: TcxDateEdit [2]
    Left = 66
    Top = 7
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [3]
    Left = 66
    Top = 31
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [4]
    Left = 536
    Top = 3
    Width = 115
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [5]
    Left = 656
    Top = 3
    Width = 115
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [6]
    Left = 537
    Top = 32
    Width = 115
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Exportar a Excel'
    TabOrder = 4
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object Grid: TcxGrid [7]
    Left = 2
    Top = 64
    Width = 779
    Height = 453
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Enero
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Febrero
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Marzo
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Abril
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Mayo
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Junio
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Julio
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Agosto
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Septiembre
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Octubre
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Noviembre
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Diciembre
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1TotalGral
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Enero'
          Column = GridDBTableView1Enero
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Febrero
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Marzo
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Abril
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Mayo
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Junio
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Julio
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Agosto
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Septiembre
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Octubre
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Noviembre
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1Diciembre
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridDBTableView1TotalGral
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = GridDBTableView1Enero
            end>
          SummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              FieldName = 'Enero'
              Column = GridDBTableView1Enero
            end>
        end>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.GroupBySorting = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Styles.Footer = cxStyle1
      Styles.Group = cxStyle2
      object GridDBTableView1Zona: TcxGridDBColumn
        DataBinding.FieldName = 'Zona'
        Visible = False
        GroupIndex = 0
      end
      object GridDBTableView1Vendedor: TcxGridDBColumn
        DataBinding.FieldName = 'Vendedor'
        Width = 85
      end
      object GridDBTableView1linea: TcxGridDBColumn
        Caption = 'Linea'
        DataBinding.FieldName = 'linea'
        Width = 95
      end
      object GridDBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 92
      end
      object GridDBTableView1TotalGral: TcxGridDBColumn
        DataBinding.FieldName = 'TotalGral'
        Width = 88
      end
      object GridDBTableView1Enero: TcxGridDBColumn
        DataBinding.FieldName = 'Enero'
        Width = 75
      end
      object GridDBTableView1Febrero: TcxGridDBColumn
        DataBinding.FieldName = 'Febrero'
        Width = 75
      end
      object GridDBTableView1Marzo: TcxGridDBColumn
        DataBinding.FieldName = 'Marzo'
        Width = 75
      end
      object GridDBTableView1Abril: TcxGridDBColumn
        DataBinding.FieldName = 'Abril'
        Width = 75
      end
      object GridDBTableView1Mayo: TcxGridDBColumn
        DataBinding.FieldName = 'Mayo'
        Width = 75
      end
      object GridDBTableView1Junio: TcxGridDBColumn
        DataBinding.FieldName = 'Junio'
        Width = 75
      end
      object GridDBTableView1Julio: TcxGridDBColumn
        DataBinding.FieldName = 'Julio'
        Width = 75
      end
      object GridDBTableView1Agosto: TcxGridDBColumn
        DataBinding.FieldName = 'Agosto'
        Width = 75
      end
      object GridDBTableView1Septiembre: TcxGridDBColumn
        DataBinding.FieldName = 'Septiembre'
        Width = 75
      end
      object GridDBTableView1Octubre: TcxGridDBColumn
        DataBinding.FieldName = 'Octubre'
        Width = 75
      end
      object GridDBTableView1Noviembre: TcxGridDBColumn
        DataBinding.FieldName = 'Noviembre'
        Width = 75
      end
      object GridDBTableView1Diciembre: TcxGridDBColumn
        DataBinding.FieldName = 'Diciembre'
        Width = 75
      end
      object GridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Width = 54
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton2: TcxButton [8]
    Left = 656
    Top = 32
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
    Top = 32
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
    CommandText = 'svVentaZonaGrupoAnual;1'
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
    Left = 142
    Top = 172
    object RSID: TGuidField
      FieldName = 'ID'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object RSEnero: TBCDField
      FieldName = 'Enero'
      ReadOnly = True
      Precision = 32
    end
    object RSFebrero: TBCDField
      FieldName = 'Febrero'
      ReadOnly = True
      Precision = 32
    end
    object RSMarzo: TBCDField
      FieldName = 'Marzo'
      ReadOnly = True
      Precision = 32
    end
    object RSAbril: TBCDField
      FieldName = 'Abril'
      ReadOnly = True
      Precision = 32
    end
    object RSMayo: TBCDField
      FieldName = 'Mayo'
      ReadOnly = True
      Precision = 32
    end
    object RSJunio: TBCDField
      FieldName = 'Junio'
      ReadOnly = True
      Precision = 32
    end
    object RSJulio: TBCDField
      FieldName = 'Julio'
      ReadOnly = True
      Precision = 32
    end
    object RSAgosto: TBCDField
      FieldName = 'Agosto'
      ReadOnly = True
      Precision = 32
    end
    object RSSeptiembre: TBCDField
      FieldName = 'Septiembre'
      ReadOnly = True
      Precision = 32
    end
    object RSOctubre: TBCDField
      FieldName = 'Octubre'
      ReadOnly = True
      Precision = 32
    end
    object RSNoviembre: TBCDField
      FieldName = 'Noviembre'
      ReadOnly = True
      Precision = 32
    end
    object RSDiciembre: TBCDField
      FieldName = 'Diciembre'
      ReadOnly = True
      Precision = 32
    end
    object RSTotalGral: TBCDField
      FieldName = 'TotalGral'
      ReadOnly = True
      Precision = 32
    end
    object RSlinea: TStringField
      FieldName = 'linea'
      Size = 50
    end
    object RSGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object RSVendedor: TIntegerField
      FieldName = 'Vendedor'
    end
    object RSZona: TStringField
      FieldName = 'Zona'
      Size = 16
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
    Left = 432
    Top = 11
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

inherited VentasporVendedor: TVentasporVendedor
  Left = 128
  Top = 158
  Caption = 'Ventas Anuales por Vendedor'
  ClientHeight = 495
  ClientWidth = 784
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 18
    Top = 27
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 200
    Top = 27
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object deDesde: TcxDateEdit [2]
    Left = 60
    Top = 23
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [3]
    Left = 240
    Top = 23
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
    Height = 419
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'id'
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
      object GridDBTableView1TotalGral: TcxGridDBColumn
        DataBinding.FieldName = 'TotalGral'
        Width = 101
      end
      object GridDBTableView1Enero: TcxGridDBColumn
        DataBinding.FieldName = 'Enero'
        Width = 100
      end
      object GridDBTableView1Febrero: TcxGridDBColumn
        DataBinding.FieldName = 'Febrero'
        Width = 85
      end
      object GridDBTableView1Marzo: TcxGridDBColumn
        DataBinding.FieldName = 'Marzo'
        Width = 92
      end
      object GridDBTableView1Abril: TcxGridDBColumn
        DataBinding.FieldName = 'Abril'
        Width = 94
      end
      object GridDBTableView1Mayo: TcxGridDBColumn
        DataBinding.FieldName = 'Mayo'
        Width = 95
      end
      object GridDBTableView1Junio: TcxGridDBColumn
        DataBinding.FieldName = 'Junio'
        Width = 91
      end
      object GridDBTableView1Julio: TcxGridDBColumn
        DataBinding.FieldName = 'Julio'
        Width = 83
      end
      object GridDBTableView1Agosto: TcxGridDBColumn
        DataBinding.FieldName = 'Agosto'
        Width = 81
      end
      object GridDBTableView1Septiembre: TcxGridDBColumn
        DataBinding.FieldName = 'Septiembre'
        Width = 80
      end
      object GridDBTableView1Octubre: TcxGridDBColumn
        DataBinding.FieldName = 'Octubre'
        Width = 81
      end
      object GridDBTableView1Noviembre: TcxGridDBColumn
        DataBinding.FieldName = 'Noviembre'
        Width = 82
      end
      object GridDBTableView1Diciembre: TcxGridDBColumn
        DataBinding.FieldName = 'Diciembre'
        Width = 83
      end
      object GridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Width = 54
      end
      object GridDBTableView1Empleado: TcxGridDBColumn
        DataBinding.FieldName = 'Empleado'
        Visible = False
        GroupIndex = 0
        Width = 108
      end
      object GridDBTableView1Sector: TcxGridDBColumn
        DataBinding.FieldName = 'Sector'
        Width = 94
      end
      object GridDBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Ciudad'
        Width = 95
      end
      object GridDBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Categoria'
        Width = 99
      end
      object GridDBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 85
      end
      object GridDBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Zona'
        Width = 103
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
    CommandText = 'svVentaporVendedorAnual;1'
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
    object RSEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object RSEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 62
    end
    object RSSector: TStringField
      FieldName = 'Sector'
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSGrupo: TStringField
      FieldName = 'Grupo'
      Size = 10
    end
    object RSZona: TStringField
      FieldName = 'Zona'
      Size = 50
    end
    object RSCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
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

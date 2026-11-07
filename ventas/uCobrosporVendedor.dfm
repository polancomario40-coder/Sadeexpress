inherited CobrosporVendedor: TCobrosporVendedor
  Left = 141
  Top = 161
  Caption = 'Aplicacion de Cobros por Vendedor de la Factura'
  ClientHeight = 481
  ClientWidth = 844
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
    Left = 200
    Top = 19
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object Label18: TLabel [2]
    Left = 8
    Top = 46
    Width = 46
    Height = 13
    Caption = 'Vendedor'
  end
  object Grid: TcxGrid [3]
    Left = 2
    Top = 74
    Width = 841
    Height = 405
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Valor
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Aplicado
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Pagado
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Column = GridDBTableView1Valor
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = GridDBTableView1Aplicado
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = GridDBTableView1Pagado
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
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object GridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object GridDBTableView1Vendedor: TcxGridDBColumn
        DataBinding.FieldName = 'Vendedor'
        Visible = False
        GroupIndex = 0
        Width = 118
      end
      object GridDBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        Visible = False
        GroupIndex = 1
        Width = 47
      end
      object GridDBTableView1fecha: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'fecha'
        Width = 59
      end
      object GridDBTableView1Pago: TcxGridDBColumn
        Caption = 'Recibo'
        DataBinding.FieldName = 'Pago'
        Width = 68
      end
      object GridDBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Width = 78
      end
      object GridDBTableView1Tasa: TcxGridDBColumn
        DataBinding.FieldName = 'Tasa'
        Width = 48
      end
      object GridDBTableView1FechaApli: TcxGridDBColumn
        Caption = 'Fecha Aplicado'
        DataBinding.FieldName = 'FechaApli'
        Width = 91
      end
      object GridDBTableView1factura: TcxGridDBColumn
        Caption = 'Factura'
        DataBinding.FieldName = 'factura'
        Width = 75
      end
      object GridDBTableView1cliente: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'cliente'
        Width = 146
      end
      object GridDBTableView1FechaFact: TcxGridDBColumn
        Caption = 'Fecha Fact'
        DataBinding.FieldName = 'FechaFact'
        Width = 73
      end
      object GridDBTableView1Aplicado: TcxGridDBColumn
        DataBinding.FieldName = 'Aplicado'
        Width = 68
      end
      object GridDBTableView1Pagado: TcxGridDBColumn
        Caption = 'Moneda Legal'
        DataBinding.FieldName = 'Pagado'
        Width = 84
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object deDesde: TcxDateEdit [4]
    Left = 60
    Top = 15
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object deHasta: TcxDateEdit [5]
    Left = 240
    Top = 15
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton1: TcxButton [6]
    Left = 605
    Top = 6
    Width = 115
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
    TabOrder = 3
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [7]
    Left = 725
    Top = 6
    Width = 115
    Height = 29
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 4
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [8]
    Left = 606
    Top = 40
    Width = 115
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Exportar a Excel'
    TabOrder = 5
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [9]
    Left = 725
    Top = 40
    Width = 57
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Expandir'
    TabOrder = 6
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton5: TcxButton [10]
    Left = 783
    Top = 40
    Width = 57
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Colapsar'
    TabOrder = 7
    OnClick = cxButton5Click
    LookAndFeel.NativeStyle = True
  end
  object lkEmpleado: TcxLookupComboBox [11]
    Left = 60
    Top = 42
    Width = 301
    Height = 21
    Properties.KeyFieldNames = 'idEmpleado'
    Properties.ListColumns = <
      item
        FieldName = 'Empleado'
      end>
    Properties.ListSource = dsEmpleado
    TabOrder = 8
  end
  inherited DS: TwwDataSource
    DataSet = RS
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svCobrosporVendedor;1'
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
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idVend'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 142
    Top = 172
    object RSid: TGuidField
      FieldName = 'id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object RSVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 40
    end
    object RSfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object RSPago: TStringField
      FieldName = 'Pago'
      Size = 16
    end
    object RSValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object RSTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object RSMoneda: TStringField
      FieldName = 'Moneda'
    end
    object RSFechaApli: TDateTimeField
      FieldName = 'FechaApli'
    end
    object RSfactura: TStringField
      FieldName = 'factura'
      Size = 16
    end
    object RScliente: TStringField
      FieldName = 'cliente'
      Size = 50
    end
    object RSFechaFact: TDateTimeField
      FieldName = 'FechaFact'
    end
    object RSAplicado: TBCDField
      FieldName = 'Aplicado'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object RSPagado: TBCDField
      FieldName = 'Pagado'
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
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'Select idEmpleado, Empleado'#13#10'from'#13#10'  svEmpleado'#13#10'where esvendedo' +
      'r = 1'#13#10#13#10'union all'#13#10#13#10'Select Null, '#39'(Todos los Vendedores)'#39' '
    Parameters = <>
    Left = 66
    Top = 140
    object EmpleadoidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object EmpleadoEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
  end
  object dsEmpleado: TDataSource
    DataSet = Empleado
    Left = 66
    Top = 196
  end
end

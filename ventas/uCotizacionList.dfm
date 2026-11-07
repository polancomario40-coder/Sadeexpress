inherited CotizacionList: TCotizacionList
  Left = 154
  Top = 170
  Caption = 'Consulta de Cotizaciones'
  ClientHeight = 489
  ClientWidth = 782
  Color = 16444903
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 27
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel
    Left = 196
    Top = 27
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object deDesde: TcxDateEdit
    Left = 56
    Top = 23
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit
    Left = 236
    Top = 23
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton
    Left = 544
    Top = 5
    Width = 115
    Height = 29
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton
    Left = 662
    Top = 5
    Width = 115
    Height = 29
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton
    Left = 544
    Top = 37
    Width = 115
    Height = 29
    Caption = 'Exportar a Excel'
    TabOrder = 4
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object Grid: TcxGrid
    Left = 3
    Top = 72
    Width = 777
    Height = 411
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      OnDblClick = GridDBTableView1DblClick
      DataController.DataSource = dsCotizacionList
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'idCotizacion'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          FieldName = 'Pagado'
        end
        item
          Format = '0.00'
          Kind = skSum
          FieldName = 'Total'
        end
        item
          Format = '0.00'
          Kind = skSum
          FieldName = 'SubTotal'
        end
        item
          Format = '0.00'
          Kind = skSum
          FieldName = 'Itbis'
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
      object GridDBTableView1idCotizacion: TcxGridDBColumn
        DataBinding.FieldName = 'idCotizacion'
        Visible = False
      end
      object GridDBTableView1Cotizacion: TcxGridDBColumn
        DataBinding.FieldName = 'Cotizacion'
        Width = 81
      end
      object GridDBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Width = 146
      end
      object GridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 77
      end
      object GridDBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Width = 77
      end
      object GridDBTableView1Itbis: TcxGridDBColumn
        DataBinding.FieldName = 'Itbis'
        Width = 68
      end
      object GridDBTableView1Descuento: TcxGridDBColumn
        DataBinding.FieldName = 'Descuento'
        Width = 66
      end
      object GridDBTableView1Total: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Width = 72
      end
      object GridDBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        Width = 74
      end
      object GridDBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Detalle'
        Width = 200
      end
      object GridDBTableView1idCondicion: TcxGridDBColumn
        Caption = 'Condicion'
        DataBinding.FieldName = 'idCondicion'
      end
      object GridDBTableView1Usuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        Width = 90
      end
      object GridDBTableView1Condicion: TcxGridDBColumn
        Caption = 'Dias'
        DataBinding.FieldName = 'Condicion'
      end
      object GridDBTableView1Credito: TcxGridDBColumn
        DataBinding.FieldName = 'Credito'
      end
      object GridDBTableView1idEmpleado: TcxGridDBColumn
        DataBinding.FieldName = 'idEmpleado'
        Visible = False
      end
      object GridDBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        Width = 68
      end
      object GridDBTableView1Empleado: TcxGridDBColumn
        Caption = 'Vendedor'
        DataBinding.FieldName = 'Empleado'
        Width = 87
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 374
    Top = 176
  end
  object CotizacionList: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svCotizacionList;1'
    CommandTimeout = 120
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
    Left = 47
    Top = 146
    object CotizacionListidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object CotizacionListCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object CotizacionListidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object CotizacionListCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object CotizacionListFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object CotizacionListReferencia: TStringField
      FieldName = 'Referencia'
    end
    object CotizacionListItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object CotizacionListDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object CotizacionListTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object CotizacionListUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object CotizacionListCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object CotizacionListCredito: TBooleanField
      FieldName = 'Credito'
    end
    object CotizacionListidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object CotizacionListidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object CotizacionListEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object CotizacionListidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object CotizacionListMoneda: TStringField
      FieldName = 'Moneda'
    end
    object CotizacionListStatus: TStringField
      FieldName = 'Status'
      Size = 50
    end
    object CotizacionListDetalle: TMemoField
      FieldName = 'Detalle'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object dsCotizacionList: TDataSource
    DataSet = CotizacionList
    Left = 47
    Top = 194
  end
end

inherited RecalPresTasa: TRecalPresTasa
  Left = 931
  Top = 155
  Caption = 'Recalcular Cuotras futura segun variacion de Tasa'
  ClientHeight = 558
  ClientWidth = 933
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 732
    Top = 18
    Width = 57
    Height = 13
    Caption = 'Tasa Actual'
  end
  object cxGrid3: TcxGrid
    Left = 6
    Top = 46
    Width = 925
    Height = 503
    Hint = 'Haga doble clic para abrir el prestamo'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView2: TcxGridDBTableView
      OnDblClick = cxGridDBTableView2DblClick
      DataController.DataSource = dsPrestamos
      DataController.KeyFieldNames = 'idPrestamo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          Column = cxGridDBTableView2Balance
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = cxGridDBTableView2BalanceTotal
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView2idPrestamo: TcxGridDBColumn
        DataBinding.FieldName = 'idPrestamo'
        Visible = False
        Options.Filtering = False
      end
      object cxGridDBTableView2Prestamo: TcxGridDBColumn
        DataBinding.FieldName = 'Prestamo'
        Width = 77
      end
      object cxGridDBTableView2Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Width = 82
      end
      object cxGridDBTableView2Monto: TcxGridDBColumn
        Caption = 'Monto Prestado'
        DataBinding.FieldName = 'Monto'
        Options.Filtering = False
        Width = 88
      end
      object cxGridDBTableView2Balance: TcxGridDBColumn
        Caption = 'Balance Hoy'
        DataBinding.FieldName = 'Balance'
        Options.Filtering = False
        Width = 109
      end
      object cxGridDBTableView2BalanceTotal: TcxGridDBColumn
        Caption = 'Balance Total'
        DataBinding.FieldName = 'BalanceTotal'
        Options.Filtering = False
        Width = 106
      end
      object cxGridDBTableView2Pend: TcxGridDBColumn
        Caption = 'Cuotas Pend'
        DataBinding.FieldName = 'Cuota'
        Options.Filtering = False
        Width = 75
      end
      object cxGridDBTableView2idSolicitud: TcxGridDBColumn
        DataBinding.FieldName = 'idSolicitud'
        Visible = False
        Options.Filtering = False
      end
      object cxGridDBTableView2DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Frecuencia'
        Width = 89
      end
      object cxGridDBTableView2Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        Width = 113
      end
      object cxGridDBTableView2DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Tasa'
        Width = 56
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object cxButton9: TcxButton
    Left = 600
    Top = 5
    Width = 117
    Height = 36
    Caption = 'Abrir Prestamo'
    TabOrder = 1
    OnClick = cxButton9Click
    LookAndFeel.NativeStyle = True
  end
  object edtasa: TcxMaskEdit
    Left = 798
    Top = 12
    Width = 121
    Height = 21
    Properties.MaxLength = 0
    Properties.ReadOnly = True
    TabOrder = 2
    Text = 'tasa'
  end
  object porcentaje: TcxSpinEdit
    Left = 6
    Top = 14
    Width = 73
    Height = 21
    Properties.DisplayFormat = '#,0'
    Properties.MinValue = 1.000000000000000000
    TabOrder = 3
    Value = 10
  end
  object cxButton1: TcxButton
    Left = 98
    Top = 5
    Width = 117
    Height = 36
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 257
    Top = 5
    Width = 290
    Height = 36
    Caption = 'Recalcular cuotas futuras con tasa actual'
    TabOrder = 5
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object Prestamos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'presPrestamosListTasa;1'
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
        Name = '@porcentaje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 146
    Top = 384
    object PrestamosidPrestamo: TIntegerField
      FieldName = 'idPrestamo'
      ReadOnly = True
    end
    object PrestamosPrestamo: TStringField
      FieldName = 'Prestamo'
      Size = 16
    end
    object PrestamosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object PrestamosMonto: TBCDField
      FieldName = 'Monto'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object PrestamosStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
    object PrestamosBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 2
    end
    object PrestamosidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
    end
    object PrestamosBalanceTotal: TBCDField
      FieldName = 'BalanceTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 2
    end
    object PrestamosCuota: TIntegerField
      FieldName = 'Cuota'
    end
    object PrestamosFrecuencia: TStringField
      FieldName = 'Frecuencia'
      Size = 16
    end
    object PrestamosTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object PrestamosPend: TBCDField
      FieldName = 'Pend'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object dsPrestamos: TDataSource
    DataSet = Prestamos
    Left = 140
    Top = 438
  end
  object Recalcular: TADOCommand
    CommandText = 'presPresRecalTasa;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idPrestamo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 224
    Top = 212
  end
end

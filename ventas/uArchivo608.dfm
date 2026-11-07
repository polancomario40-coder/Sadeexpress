inherited Archivo608: TArchivo608
  Left = 607
  Top = 268
  Caption = 'Comprobantes Anulados'
  ClientHeight = 443
  ClientWidth = 769
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient2: TGradient [0]
    Left = 0
    Top = 0
    Width = 769
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel [1]
    Left = 529
    Top = 3
    Width = 232
    Height = 25
    Anchors = [akTop, akBottom]
    Caption = 'Archivo 608 para la DGII'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Gradient1: TGradient [2]
    Left = 0
    Top = 29
    Width = 769
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient3: TGradient [3]
    Left = 2
    Top = 375
    Width = 767
    Height = 6
    Align = alCustom
    Anchors = [akLeft, akRight, akBottom]
    ColorBegin = 16749909
    ColorEnd = clWhite
    Style = gsReflectedH
  end
  object Label4: TLabel [4]
    Left = 22
    Top = 43
    Width = 19
    Height = 13
    Caption = 'Del:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel [5]
    Left = 198
    Top = 43
    Width = 13
    Height = 13
    Caption = 'Al:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxButton2: TcxButton [6]
    Left = 135
    Top = 387
    Width = 108
    Height = 48
    Anchors = [akLeft, akBottom]
    Caption = 'Generar Archivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [7]
    Left = 8
    Top = 66
    Width = 753
    Height = 307
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = DS
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'IdFactura'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1Subtotal
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1IdFactura: TcxGridDBColumn
        DataBinding.FieldName = 'IdFactura'
        Visible = False
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Factura: TcxGridDBColumn
        DataBinding.FieldName = 'Factura'
        Options.Filtering = False
        Width = 98
      end
      object cxGrid1DBTableView1TipoIdentificacion: TcxGridDBColumn
        Caption = 'Tipo ID'
        DataBinding.FieldName = 'TipoIdentificacion'
        Options.Filtering = False
        Width = 67
      end
      object cxGrid1DBTableView1ClienteRNC: TcxGridDBColumn
        Caption = 'RNC/Cedula'
        DataBinding.FieldName = 'ClienteRNC'
        Options.Filtering = False
        Width = 75
      end
      object cxGrid1DBTableView1CompFiscal: TcxGridDBColumn
        Caption = 'NCF'
        DataBinding.FieldName = 'CompFiscal'
        Options.Filtering = False
        Width = 203
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Width = 104
      end
      object cxGrid1DBTableView1Subtotal: TcxGridDBColumn
        DataBinding.FieldName = 'total'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 119
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object bSalir: TcxButton [8]
    Left = 653
    Top = 387
    Width = 108
    Height = 48
    Anchors = [akRight, akBottom]
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = bSalirClick
    LookAndFeel.NativeStyle = True
  end
  object cxButton1: TcxButton [9]
    Left = 662
    Top = 35
    Width = 99
    Height = 26
    Anchors = [akTop, akRight]
    Caption = 'Filtrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    WordWrap = True
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object dtpDesde: TcxDateEdit [10]
    Left = 46
    Top = 39
    Width = 121
    Height = 21
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object dtpHasta: TcxDateEdit [11]
    Left = 216
    Top = 39
    Width = 121
    Height = 21
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxButton4: TcxButton [12]
    Left = 7
    Top = 385
    Width = 108
    Height = 50
    Anchors = [akLeft, akBottom]
    Caption = 'Exportar a Excel'
    TabOrder = 6
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = spFacturas
    Left = 361
    Top = 195
  end
  object spFacturas: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'svFacturas608List'
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
        Value = 0d
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end>
    Left = 510
    Top = 152
    object spFacturasIdFactura: TGuidField
      FieldName = 'IdFactura'
      FixedChar = True
      Size = 38
    end
    object spFacturasFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object spFacturasClienteRNC: TStringField
      FieldName = 'ClienteRNC'
      ReadOnly = True
      Size = 8000
    end
    object spFacturasTipoIdentificacion: TStringField
      FieldName = 'TipoIdentificacion'
      ReadOnly = True
      Size = 18
    end
    object spFacturasCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object spFacturasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spFacturasTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 38
    end
  end
  object spToDgiiVentas: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'svToDGIINCFAnulados'
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
        Value = 0d
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end>
    Left = 124
    Top = 120
    object spToDgiiVentasCadena: TStringField
      FieldName = 'Cadena'
      ReadOnly = True
      Size = 8000
    end
  end
  object Save: TSaveDialog
    Left = 454
    Top = 274
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 356
    Top = 128
  end
end

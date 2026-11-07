inherited ToDgiiNcfVentas: TToDgiiNcfVentas
  Left = 607
  Top = 268
  Caption = 'Ventas de Bienes y Servicios'
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
    Left = 471
    Top = 2
    Width = 294
    Height = 25
    Caption = 'Ventas de Bienes y Servicios'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
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
    Left = 7
    Top = 415
    Width = 108
    Height = 26
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
    Left = 3
    Top = 66
    Width = 764
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
          Column = cxGrid1DBTableView1Itbis
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1Subtotal
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
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
        Width = 90
      end
      object cxGrid1DBTableView1TipoIdentificacion: TcxGridDBColumn
        DataBinding.FieldName = 'TipoIdentificacion'
        Options.Filtering = False
        Width = 96
      end
      object cxGrid1DBTableView1ClienteRNC: TcxGridDBColumn
        DataBinding.FieldName = 'ClienteRNC'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1CompFiscal: TcxGridDBColumn
        DataBinding.FieldName = 'CompFiscal'
        Options.Filtering = False
        Width = 174
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Width = 89
      end
      object cxGrid1DBTableView1Itbis: TcxGridDBColumn
        DataBinding.FieldName = 'Itbis'
        Options.Filtering = False
        Width = 81
      end
      object cxGrid1DBTableView1Subtotal: TcxGridDBColumn
        DataBinding.FieldName = 'Subtotal'
        Options.Filtering = False
        Width = 94
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object bSalir: TcxButton [8]
    Left = 655
    Top = 386
    Width = 108
    Height = 55
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
    Left = 668
    Top = 36
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
    Height = 27
    Anchors = [akLeft, akBottom]
    Caption = 'Exportar a Excel'
    TabOrder = 6
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object fixRNCButtons: TcxButton [13]
    Left = 135
    Top = 385
    Width = 108
    Height = 56
    Anchors = [akLeft, akBottom]
    Caption = 'Corregir RNC a factura'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    WordWrap = True
    OnClick = fixRNCButtonsClick
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
    ProcedureName = 'svFacturasToDgii;1'
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
    Left = 512
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
    object spFacturasTipoIdentificacion: TStringField
      FieldName = 'TipoIdentificacion'
      ReadOnly = True
      Size = 18
    end
    object spFacturasClienteRNC: TStringField
      FieldName = 'ClienteRNC'
    end
    object spFacturasCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object spFacturasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spFacturasItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object spFacturasSubtotal: TBCDField
      FieldName = 'Subtotal'
      Precision = 18
      Size = 2
    end
  end
  object spToDgiiVentas: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'svToDGINCFVentas;1'
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
    Left = 74
    Top = 180
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
  object cFixRNC: TADOCommand
    CommandText = 
      'update factura '#13#10'set ClienteRNC = :ClienteRNC '#13#10'where idFactura ' +
      '= :idfactura'
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = 'ClienteRNC'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'idfactura'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 158
    Top = 258
  end
end

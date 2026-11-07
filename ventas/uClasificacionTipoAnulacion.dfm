inherited ClasificacionTipoAnulacion: TClasificacionTipoAnulacion
  Left = 367
  Top = 215
  Caption = 'Clasificaci'#243'n de Tipo de Anulaci'#243'n'
  ClientHeight = 441
  ClientWidth = 769
  Color = 16114392
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
    Left = 414
    Top = 4
    Width = 352
    Height = 25
    Caption = 'Clasificaci'#243'n de Tipo de Anulaci'#243'n'
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
    Top = 403
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
    Top = 39
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
  object Gradient4: TGradient [5]
    Left = 2
    Top = 58
    Width = 764
    Height = 6
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Label1: TLabel [6]
    Left = 198
    Top = 39
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
  object cxButton2: TcxButton [7]
    Left = 549
    Top = 411
    Width = 108
    Height = 26
    Anchors = [akRight, akBottom]
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
  object cxGrid1: TcxGrid [8]
    Left = 3
    Top = 66
    Width = 764
    Height = 335
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
      DataController.KeyFieldNames = 'Id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        Visible = False
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Factura: TcxGridDBColumn
        DataBinding.FieldName = 'Factura'
        Options.Filtering = False
        Options.Focusing = False
        Width = 87
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Options.Focusing = False
        Width = 72
      end
      object cxGrid1DBTableView1CompFiscal: TcxGridDBColumn
        DataBinding.FieldName = 'CompFiscal'
        Options.Filtering = False
        Options.Focusing = False
        Width = 175
      end
      object cxGrid1DBTableView1TipoAnulacion: TcxGridDBColumn
        Caption = 'C'#243'digo Anulaci'#243'n'
        DataBinding.FieldName = 'TipoAnulacion'
        Options.Filtering = False
        Width = 41
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Tipo Anulaci'#243'n'
        DataBinding.FieldName = 'TipoAnulacion'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'Tipo'
            FieldName = 'Tipo'
          end
          item
            FieldName = 'Codigo'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTipoAnulacion
        Options.Filtering = False
        Width = 251
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Options.Filtering = False
        Options.Focusing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object bSalir: TcxButton [9]
    Left = 661
    Top = 411
    Width = 108
    Height = 26
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
  object cxButton1: TcxButton [10]
    Left = 668
    Top = 32
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
  object dtpDesde: TcxDateEdit [11]
    Left = 46
    Top = 35
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
  object dtpHasta: TcxDateEdit [12]
    Left = 216
    Top = 35
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
  object cxButton4: TcxButton [13]
    Left = 429
    Top = 412
    Width = 115
    Height = 26
    Anchors = [akTop, akRight]
    Caption = 'Exportar a Excel'
    TabOrder = 6
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = spFacturasCanceladas
    Left = 361
    Top = 195
  end
  object dsTipoAnulacion: TDataSource
    DataSet = spTipoAnulacion
    Left = 262
    Top = 166
  end
  object spTipoAnulacion: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'svRsTipoAnulaciones;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 218
    Top = 300
    object spTipoAnulacionId: TGuidField
      FieldName = 'Id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object spTipoAnulacionCodigo: TStringField
      FieldName = 'Codigo'
      ReadOnly = True
      Size = 2
    end
    object spTipoAnulacionTipo: TStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 42
    end
  end
  object spFacturasCanceladas: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'svFacturasCanceladas;1'
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
    object spFacturasCanceladasId: TGuidField
      FieldName = 'Id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object spFacturasCanceladasFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object spFacturasCanceladasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spFacturasCanceladasReferencia: TStringField
      FieldName = 'Referencia'
    end
    object spFacturasCanceladasCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object spFacturasCanceladasTipoAnulacion: TStringField
      FieldName = 'TipoAnulacion'
      Size = 2
    end
  end
  object spToDgiiNCFAnulados: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'svToDGIINCFAnulados;1'
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
    object spToDgiiNCFAnuladosCadena: TStringField
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
    Left = 352
    Top = 110
  end
end

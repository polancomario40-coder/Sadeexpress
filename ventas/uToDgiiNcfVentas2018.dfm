inherited ToDgiiNcfVentas2018: TToDgiiNcfVentas2018
  Left = 385
  Top = 272
  Caption = 'Ventas de Bienes y Servicios'
  ClientHeight = 540
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
    ColorBegin = 7574529
    ColorEnd = 7574529
    Style = gsLinearH
  end
  object Label2: TLabel [1]
    Left = 477
    Top = 2
    Width = 280
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Ventas de Bienes y Servicios'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Microsoft Sans Serif'
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
    ColorBegin = 7574529
    ColorEnd = 7574529
    Style = gsReflectedV
  end
  object Gradient3: TGradient [3]
    Left = 2
    Top = 474
    Width = 767
    Height = 2
    Align = alCustom
    Anchors = [akLeft, akRight, akBottom]
    ColorBegin = 7574529
    ColorEnd = 7574529
    Style = gsReflectedH
  end
  object Label4: TLabel [4]
    Left = 11
    Top = 44
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
    Top = 44
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
    Left = 293
    Top = 480
    Width = 108
    Height = 56
    Anchors = [akLeft, akBottom]
    Caption = 'Generar Archivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [7]
    Left = 8
    Top = 70
    Width = 755
    Height = 230
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
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
        Width = 82
      end
      object cxGrid1DBTableView1TipoIdentificacion: TcxGridDBColumn
        Caption = 'Tipo Ident'
        DataBinding.FieldName = 'TipoIdentificacion'
        Visible = False
        Options.Filtering = False
        Width = 60
      end
      object cxGrid1DBTableView1ClienteRNC: TcxGridDBColumn
        Caption = 'RNC/Cedula'
        DataBinding.FieldName = 'ClienteRNC'
        Options.Filtering = False
        Width = 180
      end
      object cxGrid1DBTableView1CompFiscal: TcxGridDBColumn
        Caption = 'NCF'
        DataBinding.FieldName = 'CompFiscal'
        Options.Filtering = False
        Width = 154
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Width = 108
      end
      object cxGrid1DBTableView1Itbis: TcxGridDBColumn
        DataBinding.FieldName = 'Itbis'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '###,###,###,##0.00'
        Options.Filtering = False
        Width = 107
      end
      object cxGrid1DBTableView1Subtotal: TcxGridDBColumn
        Caption = 'Sub total'
        DataBinding.FieldName = 'MontoFacturado'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '###,###,###,##0.00'
        Options.Filtering = False
        Width = 108
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object bSalir: TcxButton [8]
    Left = 655
    Top = 480
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
    TabOrder = 7
    WordWrap = True
    OnClick = bSalirClick
    LookAndFeel.NativeStyle = True
  end
  object cxButton1: TcxButton [9]
    Left = 665
    Top = 35
    Width = 99
    Height = 31
    Anchors = [akTop, akRight]
    Caption = 'Cargar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object dtpDesde: TcxDateEdit [10]
    Left = 35
    Top = 40
    Width = 121
    Height = 21
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object dtpHasta: TcxDateEdit [11]
    Left = 216
    Top = 40
    Width = 121
    Height = 21
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton4: TcxButton [12]
    Left = 169
    Top = 480
    Width = 108
    Height = 56
    Anchors = [akLeft, akBottom]
    Caption = 'Exportar a Excel'
    TabOrder = 5
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object fixRNCButtons: TcxButton [13]
    Left = 7
    Top = 480
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
    TabOrder = 4
    WordWrap = True
    OnClick = fixRNCButtonsClick
    Colors.Hot = 4227327
    LookAndFeel.NativeStyle = True
  end
  object cxGrid2: TcxGrid [14]
    Left = 8
    Top = 303
    Width = 755
    Height = 166
    Anchors = [akLeft, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = dsRes
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      object cxGridDBTableView1Concepto: TcxGridDBColumn
        DataBinding.FieldName = 'Concepto'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
      end
      object cxGridDBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Styles.Content = cxStyle1
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = rs
    Left = 361
    Top = 195
  end
  object Save: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Archivos de texto|*.txt'
    Left = 454
    Top = 274
  end
  object cFixRNC: TADOCommand
    CommandText = 
      'update factura '#13#10'set ClienteRNC = :ClienteRNC '#13#10'where idFactura ' +
      '= :idfactura'
    CommandTimeout = 300
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
    Left = 117
    Top = 224
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svFacturasToDgii2018;1'
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
    Left = 117
    Top = 151
    object rsidFactura: TGuidField
      FieldName = 'idFactura'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object rsFactura: TStringField
      FieldName = 'Factura'
      ReadOnly = True
      Size = 16
    end
    object rsClienteRNC: TStringField
      FieldName = 'ClienteRNC'
      ReadOnly = True
      Size = 8000
    end
    object rsCompFiscal: TStringField
      FieldName = 'CompFiscal'
      ReadOnly = True
      Size = 19
    end
    object rsCompFiscalModificado: TStringField
      FieldName = 'CompFiscalModificado'
      ReadOnly = True
      Size = 19
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
      ReadOnly = True
    end
    object rsItbis: TBCDField
      FieldName = 'Itbis'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object rsMontoFacturado: TFloatField
      FieldName = 'MontoFacturado'
      ReadOnly = True
    end
    object rsidTipoIngreso: TIntegerField
      FieldName = 'idTipoIngreso'
      ReadOnly = True
    end
    object rsTipoIngreso: TStringField
      FieldName = 'TipoIngreso'
      ReadOnly = True
      Size = 50
    end
    object rsFechaRetencion: TDateTimeField
      FieldName = 'FechaRetencion'
      ReadOnly = True
    end
    object rsItbisRetenido: TBCDField
      FieldName = 'ItbisRetenido'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsISRRetenido: TBCDField
      FieldName = 'ISRRetenido'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsItbisPercibido: TBCDField
      FieldName = 'ItbisPercibido'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsISRPercibido: TBCDField
      FieldName = 'ISRPercibido'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsImpSelectivo: TBCDField
      FieldName = 'ImpSelectivo'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsOtrosImpuestos: TBCDField
      FieldName = 'OtrosImpuestos'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsEfectivo: TBCDField
      FieldName = 'Efectivo'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rsCheque: TBCDField
      FieldName = 'Cheque'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rsTarjetas: TBCDField
      FieldName = 'Tarjetas'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rsOtrasFormasPago: TBCDField
      FieldName = 'OtrasFormasPago'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rsMontoCredito: TBCDField
      FieldName = 'MontoCredito'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsPermuta: TBCDField
      FieldName = 'Permuta'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsPropina: TBCDField
      FieldName = 'Propina'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsBonos: TBCDField
      FieldName = 'Bonos'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsTipoDoc: TStringField
      FieldName = 'TipoDoc'
      ReadOnly = True
      Size = 3
    end
  end
  object SaveXls: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Archivos de Excel|*.xls'
    Left = 478
    Top = 158
  end
  object rsResumen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svFacturasToDgiiResumen2018'
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
    Left = 224
    Top = 144
    object rsResumenid: TIntegerField
      FieldName = 'id'
    end
    object rsResumenConcepto: TStringField
      FieldName = 'Concepto'
      Size = 200
    end
    object rsResumenValor: TStringField
      FieldName = 'Valor'
      Size = 100
    end
  end
  object dsRes: TwwDataSource
    DataSet = rsResumen
    OnUpdateData = DSUpdateData
    Left = 208
    Top = 212
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15724527
    end
  end
end

inherited GenerarEntradas: TGenerarEntradas
  Left = 387
  Top = 219
  Caption = 'Gen. Entradas de Diario'
  ClientHeight = 519
  ClientWidth = 699
  Color = 15922418
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = -2
    Top = 481
    Width = 699
    Height = 3
    Anchors = [akLeft, akTop, akRight]
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 699
    Height = 36
    Align = alTop
    ColorBegin = 15922418
    ColorEnd = 9516803
    Reverse = True
    Style = gsLinearV
  end
  object Label2: TLabel
    Left = 532
    Top = -1
    Width = 164
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'Generar entradas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 6
    Top = 48
    Width = 34
    Height = 13
    Caption = 'Desde:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 172
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Hasta:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 615
    Top = 312
    Width = 80
    Height = 14
    Anchors = [akTop, akRight]
    Caption = 'Log de salida'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dtpDesde: TcxDateEdit
    Left = 43
    Top = 44
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
  object dtpHasta: TcxDateEdit
    Left = 207
    Top = 44
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
  object Grid: TcxGrid
    Left = 3
    Top = 68
    Width = 693
    Height = 239
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsData
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'NumEntrada'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skAverage
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skAverage
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      Styles.Group = cxStyle1
      object GridDBTableView1NumEntrada: TcxGridDBColumn
        Caption = 'Num. Entrada'
        DataBinding.FieldName = 'NumEntrada'
        Options.Editing = False
        Options.Filtering = False
        Width = 80
      end
      object GridDBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 402
      end
      object GridDBTableView1sprocNomb: TcxGridDBColumn
        DataBinding.FieldName = 'sprocNomb'
        Visible = False
      end
      object GridDBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'M'#243'dulo'
        DataBinding.FieldName = 'Modulo'
        Options.Filtering = False
        Width = 142
      end
      object GridDBTableView1Flag: TcxGridDBColumn
        Caption = 'Generar'
        DataBinding.FieldName = 'Flag'
        Options.Filtering = False
        Width = 68
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 474
    Top = 486
    Width = 111
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Genear Entrada(s)'
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
  object cxButton2: TcxButton
    Left = 589
    Top = 486
    Width = 108
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid
    Left = 3
    Top = 312
    Width = 693
    Height = 165
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsLog
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'idGenEDLog'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skAverage
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skAverage
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Styles.Group = cxStyle1
      object cxGridDBTableView1EntradaNumero: TcxGridDBColumn
        Caption = 'Num. Entrada'
        DataBinding.FieldName = 'EntradaNumero'
        Options.Filtering = False
        Width = 80
      end
      object cxGridDBTableView1TextoLog: TcxGridDBColumn
        Caption = 'Resultado'
        DataBinding.FieldName = 'TextoLog'
        Options.Filtering = False
        Width = 353
      end
      object cxGridDBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Options.Filtering = False
        Width = 80
      end
      object cxGridDBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 174
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Data: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 24
    Top = 68
    object DataFlag: TBooleanField
      FieldName = 'Flag'
    end
    object DataNumEntrada: TStringField
      FieldName = 'NumEntrada'
      Size = 4
    end
    object DataDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object DatasprocNomb: TStringField
      FieldName = 'sprocNomb'
      Size = 40
    end
    object DataModulo: TStringField
      FieldName = 'Modulo'
    end
  end
  object dsData: TDataSource
    DataSet = Data
    Left = 26
    Top = 144
  end
  object qryEntradas: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  cgGenEntradas')
    Left = 370
    Top = 108
    object qryEntradasNumEntrada: TStringField
      FieldName = 'NumEntrada'
      Size = 4
    end
    object qryEntradasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object qryEntradasConcepto: TStringField
      FieldName = 'Concepto'
      Size = 400
    end
    object qryEntradasTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      Size = 2
    end
    object qryEntradassprocNomb: TStringField
      FieldName = 'sprocNomb'
      Size = 40
    end
    object qryEntradasuidGenentrada: TGuidField
      FieldName = 'uidGenentrada'
      FixedChar = True
      Size = 38
    end
    object qryEntradasModulo: TStringField
      FieldName = 'Modulo'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 6
    Top = 4
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15120802
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14898176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object Command: TADOCommand
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <>
    Left = 528
    Top = 128
  end
  object rsLog: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cgRSLog;1'
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
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 158
    Top = 138
    object rsLogidGenEDLog: TGuidField
      FieldName = 'idGenEDLog'
      FixedChar = True
      Size = 38
    end
    object rsLogFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsLogEntradaNumero: TStringField
      FieldName = 'EntradaNumero'
      Size = 16
    end
    object rsLogReferencia: TStringField
      FieldName = 'Referencia'
      Size = 50
    end
    object rsLogDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsLogTextoLog: TStringField
      FieldName = 'TextoLog'
      Size = 3000
    end
    object rsLogUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
  end
  object dsLog: TDataSource
    DataSet = rsLog
    Left = 246
    Top = 150
  end
  object cLimpiarLog: TADOCommand
    CommandText = 'cgLimpiarLog;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 314
    Top = 222
  end
end

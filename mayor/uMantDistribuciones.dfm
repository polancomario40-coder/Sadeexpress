object MantDistribuciones: TMantDistribuciones
  Left = 471
  Top = 292
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Distribuciones'
  ClientHeight = 477
  ClientWidth = 537
  Color = 16251643
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 4
    Top = 39
    Width = 527
    Height = 95
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsDistr
      DataController.KeyFieldNames = 'idDistribucion'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1idDistribucion: TcxGridDBColumn
        Caption = 'Distribucion'
        DataBinding.FieldName = 'idDistribucion'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Entrada'
        DataBinding.FieldName = 'EntradaNum'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 380
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 4
    Top = 177
    Width = 527
    Height = 115
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsDet
      DataController.KeyFieldNames = 'idCuenta'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1idCuenta: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGridDBTableView1idCuentaPropertiesButtonClick
        Options.Filtering = False
        Width = 121
      end
      object cxGridDBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Descripcion'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idCuenta'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsCatalogo
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 385
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxGrid3: TcxGrid
    Left = 4
    Top = 335
    Width = 527
    Height = 138
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView2: TcxGridDBTableView
      DataController.DataSource = dsCtas
      DataController.KeyFieldNames = 'idFactor'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView2DBColumn1: TcxGridDBColumn
        Caption = 'Factor'
        DataBinding.FieldName = 'idFactor'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idFactor'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsFactores
        Options.Filtering = False
        Width = 208
      end
      object cxGridDBTableView2idCtaDestino: TcxGridDBColumn
        Caption = 'Destino'
        DataBinding.FieldName = 'idCtaDestino'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGridDBTableView2idCtaDestinoPropertiesButtonClick
        Options.Filtering = False
      end
      object cxGridDBTableView2DBColumn2: TcxGridDBColumn
        Caption = 'Descripcion'
        DataBinding.FieldName = 'idCtaDestino'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idCuenta'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsCatalogo
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 200
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object Panel1: TPanel
    Left = 4
    Top = 2
    Width = 527
    Height = 37
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object Gradient1: TGradient
      Left = 0
      Top = 0
      Width = 525
      Height = 35
      Align = alClient
      ColorBegin = 14124890
      ColorEnd = 9516803
      Style = gsLinearV
    end
    object cxLabel1: TcxLabel
      Left = 2
      Top = 6
      Width = 119
      Height = 23
      Caption = 'Distribuciones'
      ParentColor = False
      ParentFont = False
      Properties.Transparent = True
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 140
    Width = 527
    Height = 37
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    object Gradient2: TGradient
      Left = 0
      Top = 0
      Width = 525
      Height = 35
      Align = alClient
      ColorBegin = 14124890
      ColorEnd = 9516803
      Style = gsLinearV
    end
    object cxLabel2: TcxLabel
      Left = 2
      Top = 6
      Width = 63
      Height = 23
      Caption = 'Detalle'
      ParentColor = False
      ParentFont = False
      Properties.Transparent = True
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
    end
  end
  object Panel3: TPanel
    Left = 4
    Top = 298
    Width = 527
    Height = 37
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    object Gradient3: TGradient
      Left = 0
      Top = 0
      Width = 525
      Height = 35
      Align = alClient
      ColorBegin = 14124890
      ColorEnd = 9516803
      Style = gsLinearV
    end
    object cxLabel3: TcxLabel
      Left = 2
      Top = 6
      Width = 70
      Height = 23
      Caption = 'Cuentas'
      ParentColor = False
      ParentFont = False
      Properties.Transparent = True
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
    end
  end
  object rsDistr: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from cgDistribuciones'
    Parameters = <>
    Left = 8
    Top = 150
    object rsDistridDistribucion: TAutoIncField
      FieldName = 'idDistribucion'
      ReadOnly = True
    end
    object rsDistrDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsDistrEntradaNum: TStringField
      FieldName = 'EntradaNum'
      Size = 10
    end
  end
  object rsDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsDetNewRecord
    CommandText = 
      'select * from cgDistribucionDet'#13#10'where idDistribucion = :idDistr' +
      'ibucion'
    DataSource = dsDistr
    Parameters = <
      item
        Name = 'idDistribucion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 66
    Top = 152
    object rsDetidDistribucion: TIntegerField
      FieldName = 'idDistribucion'
    end
    object rsDetidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsCtas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsCtasNewRecord
    CommandText = 
      'select * from cgDistribucionCtas'#13#10'where idDistribucion = :idDist' +
      'ribucion and idCuenta = :idCuenta'
    DataSource = dsDet
    Parameters = <
      item
        Name = 'idDistribucion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'idCuenta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 246
    Top = 196
    object rsCtasidDistribucion: TIntegerField
      FieldName = 'idDistribucion'
    end
    object rsCtasidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCtasidFactor: TIntegerField
      FieldName = 'idFactor'
    end
    object rsCtasidCtaDestino: TStringField
      FieldName = 'idCtaDestino'
      Size = 16
    end
  end
  object dsDistr: TDataSource
    DataSet = rsDistr
    Left = 21
    Top = 226
  end
  object dsDet: TDataSource
    DataSet = rsDet
    Left = 88
    Top = 224
  end
  object dsCtas: TDataSource
    DataSet = rsCtas
    Left = 168
    Top = 256
  end
  object rsCatalogo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idCuenta, Descripcion from cgCatalogoCuentas where tipoNi' +
      'vel = '#39'D'#39
    Parameters = <>
    Left = 180
    Top = 170
    object rsCatalogoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCatalogoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
  end
  object rsFactores: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cgListaFactores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 274
    Top = 148
    object rsFactoresidFactor: TIntegerField
      FieldName = 'idFactor'
      ReadOnly = True
    end
    object rsFactoresDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object dsFactores: TDataSource
    DataSet = rsFactores
    Left = 204
    Top = 342
  end
  object dsCatalogo: TDataSource
    DataSet = rsCatalogo
    Left = 254
    Top = 256
  end
end

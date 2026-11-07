object fBuscarDistribucion: TfBuscarDistribucion
  Left = 376
  Top = 218
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Buscar distribucion'
  ClientHeight = 399
  ClientWidth = 529
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
    Left = 0
    Top = 37
    Width = 529
    Height = 320
    Align = alTop
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idDistribucion'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Gradient1: TGradient
      Left = 0
      Top = 0
      Width = 527
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
  object cxButton1: TcxButton
    Left = 308
    Top = 360
    Width = 101
    Height = 35
    Caption = 'Aceptar'
    Default = True
    ModalResult = 1
    TabOrder = 2
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 426
    Top = 360
    Width = 101
    Height = 35
    Cancel = True
    Caption = 'Aceptar'
    ModalResult = 2
    TabOrder = 3
    LookAndFeel.NativeStyle = True
  end
  object rsDistr: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from cgDistribuciones order by Descripcion'
    Parameters = <>
    Left = 136
    Top = 174
    object rsDistridDistribucion: TIntegerField
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
  object ds: TDataSource
    DataSet = rsDistr
    Left = 94
    Top = 78
  end
end

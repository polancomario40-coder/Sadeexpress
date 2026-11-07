object MantFactores: TMantFactores
  Left = 451
  Top = 329
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Definicion de factores'
  ClientHeight = 369
  ClientWidth = 474
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
    Width = 474
    Height = 283
    Align = alTop
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
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
      object cxGrid1DBTableView1idFactor: TcxGridDBColumn
        Caption = 'Factor'
        DataBinding.FieldName = 'idFactor'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 388
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 334
    Top = 328
    Width = 137
    Height = 37
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 474
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object Gradient1: TGradient
      Left = 0
      Top = 0
      Width = 472
      Height = 35
      Align = alClient
      ColorBegin = 14124890
      ColorEnd = 9516803
      Style = gsLinearV
    end
    object cxLabel1: TcxLabel
      Left = 2
      Top = 6
      Width = 73
      Height = 23
      Caption = 'Factores'
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
  object rsFactores: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cgListaFactores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 36
    Top = 26
    object rsFactoresidFactor: TIntegerField
      FieldName = 'idFactor'
      ReadOnly = True
    end
    object rsFactoresDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object ds: TDataSource
    DataSet = rsFactores
    Left = 92
    Top = 32
  end
end

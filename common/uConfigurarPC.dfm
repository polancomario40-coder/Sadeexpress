inherited ConfigurarPC: TConfigurarPC
  Left = 500
  Top = 135
  Caption = 'Configurar estacion de trabajo'
  ClientHeight = 413
  ClientWidth = 612
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 11
    Width = 41
    Height = 13
    Caption = 'Nombre:'
  end
  object cxMRUEdit1: TcxMRUEdit [1]
    Left = 52
    Top = 7
    Width = 141
    Height = 21
    BeepOnEnter = False
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.ShowEllipsis = False
    Properties.OnEditValueChanged = cxMRUEdit1PropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Text = 'cxMRUEdit1'
  end
  object cxGrid1: TcxGrid [2]
    Left = 6
    Top = 36
    Width = 601
    Height = 370
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1Configuracion: TcxGridDBColumn
        DataBinding.FieldName = 'Configuracion'
        Width = 256
      end
      object cxGrid1DBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Width = 250
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton [3]
    Left = 478
    Top = 4
    Width = 129
    Height = 27
    Caption = 'Salir'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = rs
    OnStateChange = DSStateChange
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    OnNewRecord = rsNewRecord
    CommandText = 'select * from ConfiguracionPC where NombrePC = :PC'
    Parameters = <
      item
        Name = 'PC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    Left = 318
    Top = 128
    object rsNombrePC: TStringField
      FieldName = 'NombrePC'
      Size = 100
    end
    object rsConfiguracion: TStringField
      FieldName = 'Configuracion'
      Size = 100
    end
    object rsValor: TStringField
      FieldName = 'Valor'
      Size = 2000
    end
  end
end

inherited ProMovTipo: TProMovTipo
  Left = 673
  Top = 362
  Caption = 'Tipos de Movimientos de Almacen'
  ClientHeight = 361
  ClientWidth = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 109
    Height = 23
    Selected.Strings = (
      'idProMovTipo'#9'8'#9'Tipo Mov'
      'ProMovTipo'#9'30'#9'Descripcion'
      'Salida'#9'5'#9'Salida'
      'idCuenta'#9'16'#9'Cuenta Descargue')
    Align = alNone
    DataSource = nil
    Visible = False
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 497
    inherited banterior: TwwNavButton
      Width = 63
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 63
      Width = 62
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 125
      Width = 62
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 187
      Width = 62
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 249
      Width = 62
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 311
      Width = 62
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 373
      Width = 62
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 435
      Width = 62
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 34
    Width = 497
    Height = 327
    Align = alClient
    TabOrder = 2
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1idProMovTipo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idProMovTipo'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ProMovTipo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProMovTipo'
        Width = 234
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1idCuenta: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBBandedTableView1idCuentaPropertiesButtonClick
        Width = 124
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Salida'
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  inherited DS: TwwDataSource
    DataSet = RS
  end
  object RS: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = RSNewRecord
    CommandText = 'Select * From ProMovTipo'
    Parameters = <>
    Left = 358
    Top = 80
    object RSidProMovTipo: TIntegerField
      DisplayLabel = 'Tipo Mov'
      DisplayWidth = 8
      FieldName = 'idProMovTipo'
    end
    object RSProMovTipo: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 30
      FieldName = 'ProMovTipo'
      Size = 50
    end
    object RSSalida: TBooleanField
      DisplayWidth = 5
      FieldName = 'Salida'
    end
    object RSidCuenta: TStringField
      DisplayLabel = 'Cuenta Descargue'
      DisplayWidth = 16
      FieldName = 'idCuenta'
      OnValidate = RSidCuentaValidate
      Size = 16
    end
    object RSUProMovTipoID: TGuidField
      DisplayWidth = 38
      FieldName = 'UProMovTipoID'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
end

inherited PickIdtrans: TPickIdtrans
  Left = 404
  Top = 187
  Caption = 'Elija el tipo de transaccion'
  ClientHeight = 371
  ClientWidth = 483
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 483
  end
  inherited Gradient2: TGradient
    Width = 483
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 33
    Width = 483
    Height = 298
    Align = alTop
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idTrans'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      OptionsBehavior.IncSearch = True
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Abrev: TcxGridDBColumn
        Caption = 'Trans'
        DataBinding.FieldName = 'Abrev'
        Options.Filtering = False
        Width = 76
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 323
      end
      object cxGrid1DBTableView1DebCre: TcxGridDBColumn
        Caption = 'Credito'
        DataBinding.FieldName = 'DebCre'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '2'
        Options.Filtering = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton [3]
    Left = 4
    Top = 336
    Width = 95
    Height = 31
    Caption = 'Aceptar'
    Default = True
    ModalResult = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [4]
    Left = 110
    Top = 336
    Width = 95
    Height = 31
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
    LookAndFeel.NativeStyle = True
  end
  inherited StyleController: TdxEditStyleController
    Left = 244
    Top = 44
  end
  inherited ds: TDataSource
    DataSet = rsTipoTrans
  end
  object rsTipoTrans: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from bcoTiposTrans '#13#10'order by Descripcion'
    Parameters = <>
    Left = 310
    Top = 92
    object rsTipoTransidTrans: TIntegerField
      FieldName = 'idTrans'
      ReadOnly = True
    end
    object rsTipoTransDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsTipoTransDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsTipoTransAbrev: TStringField
      FieldName = 'Abrev'
      Size = 10
    end
  end
end

inherited MantTipoSups: TMantTipoSups
  Caption = 'Tipos de suplidores'
  ClientHeight = 341
  ClientWidth = 532
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 532
  end
  inherited Gradient2: TGradient
    Width = 532
  end
  inherited btImprimir: TcxButton
    Top = 295
  end
  inherited btLocalizar: TcxButton
    Top = 295
  end
  inherited btNuevo: TcxButton
    Top = 295
  end
  inherited btCancelar: TcxButton
    Top = 295
  end
  inherited btGuardar: TcxButton
    Top = 295
  end
  inherited btBorrar: TcxButton
    Left = 406
    Top = 295
  end
  inherited btSalir: TcxButton
    Left = 489
    Top = 295
  end
  inherited btEditar: TcxButton
    Top = 296
  end
  object cxGrid1: TcxGrid [10]
    Left = 0
    Top = 33
    Width = 532
    Height = 254
    Align = alTop
    TabOrder = 8
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'TipoSuplidor'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1TipoSuplidor: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'TipoSuplidor'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 85
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 335
      end
      object cxGrid1DBTableView1Abrev: TcxGridDBColumn
        DataBinding.FieldName = 'Abrev'
        Options.Filtering = False
        Width = 91
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited DS: TwwDataSource
    DataSet = rsTiposSup
    Left = 293
    Top = 117
  end
  object rsTiposSup: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from cxpTiposSuplidor'
    Parameters = <>
    Left = 166
    Top = 98
    object rsTiposSupTipoSuplidor: TAutoIncField
      FieldName = 'TipoSuplidor'
      ReadOnly = True
    end
    object rsTiposSupDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsTiposSupAbrev: TStringField
      FieldName = 'Abrev'
      Size = 10
    end
  end
end

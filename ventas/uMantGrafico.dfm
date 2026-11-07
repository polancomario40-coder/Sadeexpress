inherited MantGrafico: TMantGrafico
  Left = 547
  Top = 267
  Caption = 'Gr'#225'ficos'
  ClientHeight = 341
  ClientWidth = 718
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 718
  end
  inherited Gradient2: TGradient
    Width = 718
  end
  inherited btImprimir: TcxButton
    Left = 130
    Top = 168
    Visible = False
  end
  inherited btLocalizar: TcxButton
    Left = 188
    Top = 168
    Visible = False
  end
  inherited btNuevo: TcxButton
    Left = 5
    Top = 292
  end
  inherited btCancelar: TcxButton
    Left = 122
    Top = 292
  end
  inherited btGuardar: TcxButton
    Left = 181
    Top = 292
  end
  inherited btBorrar: TcxButton
    Top = 292
  end
  inherited btSalir: TcxButton
    Top = 292
  end
  inherited btEditar: TcxButton
    Left = 64
    Top = 292
  end
  object cxGrid1: TcxGrid [10]
    Left = 0
    Top = 33
    Width = 718
    Height = 254
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 8
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'Procedimiento'
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
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1idRetencion: TcxGridDBColumn
        DataBinding.FieldName = 'Procedimiento'
        Options.Editing = False
        Options.Filtering = False
        Width = 227
      end
      object cxGrid1DBTableView1Retencion: TcxGridDBColumn
        Caption = 'Descripcion'
        DataBinding.FieldName = 'Nombre'
        Options.Filtering = False
        Width = 213
      end
      object cxGrid1DBTableView1Porcentaje: TcxGridDBColumn
        Caption = 'Tipo Grafico'
        DataBinding.FieldName = 'TipoGrafico'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Barra'
            Value = 1
          end
          item
            Description = 'Pastel'
            Value = 2
          end
          item
            Description = 'Lineas'
            Value = 3
          end>
        Options.Filtering = False
        Width = 92
      end
      object cxGrid1DBTableView1idCuenta: TcxGridDBColumn
        DataBinding.FieldName = 'Posicion'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.LargeIncrement = 1.000000000000000000
        Properties.MaxValue = 4.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.ValueType = vtInt
        Options.Filtering = False
        Width = 92
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Width = 92
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited DS: TwwDataSource
    DataSet = rs
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from ParametrosDashBoard'
    Parameters = <>
    Left = 92
    Top = 98
    object rsProcedimiento: TStringField
      FieldName = 'Procedimiento'
      Size = 255
    end
    object rsTipoGrafico: TIntegerField
      FieldName = 'TipoGrafico'
    end
    object rsNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object rsPosicion: TIntegerField
      FieldName = 'Posicion'
    end
    object rsActivo: TBooleanField
      FieldName = 'Activo'
    end
  end
end

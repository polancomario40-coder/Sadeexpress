inherited MantRetenciones: TMantRetenciones
  Caption = 'Retenciones'
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
      DataController.KeyFieldNames = 'idRetencion'
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
        Caption = 'Codigo'
        DataBinding.FieldName = 'idRetencion'
        Options.Editing = False
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Retencion: TcxGridDBColumn
        DataBinding.FieldName = 'Retencion'
        Options.Filtering = False
        Width = 291
      end
      object cxGrid1DBTableView1Porcentaje: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'Porcentaje'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1idCuenta: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1idCuentaPropertiesButtonClick
        Options.Filtering = False
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Itbis'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Clase'
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
    CommandText = 'cxpListaRetenciones;1'
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
        Name = '@orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 92
    Top = 98
    object rsidRetencion: TAutoIncField
      FieldName = 'idRetencion'
      ReadOnly = True
    end
    object rsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 50
    end
    object rsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
    object rsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsItbis: TBooleanField
      FieldName = 'Itbis'
    end
    object rsUidRetencion: TGuidField
      FieldName = 'UidRetencion'
      FixedChar = True
      Size = 38
    end
    object rsClase: TStringField
      FieldName = 'Clase'
      Size = 16
    end
  end
end

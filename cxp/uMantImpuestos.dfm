inherited MantImpuestos: TMantImpuestos
  Left = 427
  Top = 224
  Caption = 'Impuestos'
  ClientHeight = 341
  ClientWidth = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 569
  end
  inherited Gradient2: TGradient
    Width = 569
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 33
    Width = 569
    Height = 254
    Align = alTop
    TabOrder = 8
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'TipoImpuesto'
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
      object cxGrid1DBTableView1TipoImpuesto: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'TipoImpuesto'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.Sorting = False
        Width = 50
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Options.Sorting = False
        Width = 259
      end
      object cxGrid1DBTableView1Porcentaje: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'Porcentaje'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Options.Sorting = False
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
        Options.Sorting = False
        Width = 89
      end
      object cxGrid1DBTableView1AutoIncluir: TcxGridDBColumn
        Caption = 'Auto'
        DataBinding.FieldName = 'AutoIncluir'
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'ITBIS'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Width = 41
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited btImprimir: TcxButton
    Left = 48
    Top = 119
    Visible = False
  end
  inherited btLocalizar: TcxButton
    Left = 106
    Top = 119
    Visible = False
  end
  inherited btNuevo: TcxButton
    Left = 4
    Top = 295
  end
  inherited btCancelar: TcxButton
    Left = 121
    Top = 295
  end
  inherited btGuardar: TcxButton
    Left = 180
    Top = 295
  end
  inherited btBorrar: TcxButton
    Top = 295
  end
  inherited btSalir: TcxButton
    Top = 295
  end
  inherited btEditar: TcxButton
    Top = 341
  end
  object cxButton1: TcxButton [11]
    Left = 63
    Top = 295
    Width = 51
    Height = 43
    Action = AEditar
    Anchors = [akLeft, akBottom]
    TabOrder = 9
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF000073
      AD000073AD000073AD000073AD000073AD000073AD000073AD000073AD000073
      AD00006B08000073AD000073AD000073AD00FF00FF00FF00FF000073AD00108C
      C60052B5E7006BCEFF004ABDF7004ABDF7004ABDF7004ABDF7004ABDF7004ABD
      F700006B0800006B0800219CCE000073AD00FF00FF00FF00FF000073AD0031AD
      E7002194C6008CDEFF0052C6FF0052C6F70052C6FF0052C6F70052C6FF0052C6
      FF00006B080010A52900006B08006BCEE7000073AD00FF00FF000073AD0052CE
      FF000073AD009CE7FF005AD6FF00006B0800006B0800006B0800006B0800006B
      0800006B080018AD310010A52900006B08000073AD00FF00FF000073AD005AD6
      FF0008739C0094ADB50094949400006B080042E77B0042DE730039D66B0031CE
      5A0029BD4A0021B5390018AD310010A52900006B0800FF00FF000073AD006BDE
      FF00396B840063B5C600E7EFD600006B080042E77B0042E77B0042DE730039D6
      6B0031CE5A0029C64A0021B5390018AD310010A52900006B08000073AD0073E7
      FF007B636B001084B500FFFFFF00006B080042E77B0042E77B0042E77B0042DE
      730039D66B0031CE5A0029C64A0021B53900006B08000073AD000073AD007BEF
      FF009C6B6300107BAD000073AD00006B0800006B0800006B0800006B0800006B
      0800006B080039D6630031CE5A00006B08000073AD000073AD000073AD0084F7
      FF00A5736300F7E7D600FFF7DE00FFE7CE00FFE7C600FFDEBD00FFDEB500FFD6
      A500006B080042DE7300006B0800FF00FF00FF00FF00FF00FF000073AD00FFFF
      FF00B57B6300F7EFE700FFFFEF00FFEFDE00FFEFD600FFE7CE00FFE7C600FFDE
      BD00006B0800006B0800006BA500FF00FF00FF00FF00FF00FF00FF00FF000073
      AD00BD8C6B00FFF7EF00FFFFFF00FFF7EF00FFF7E700FFF7E700FFF7E700F7E7
      CE00006B08000073AD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00CE947300FFF7EF00FFFFFF00FFFFFF00FFFFF700E7CEC600D6B5AD00BDA5
      9C0073424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00D69C7300FFF7F700FFFFFF00FFFFFF00FFFFFF00A5635A00A5635A00A563
      5A00A5635A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00DEA57B00FFF7EF00FFFFFF00FFFFFF00FFFFFF00A5635A00E7A55A00EF9C
      3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00E7AD7B00D6946B00D6946B00D6946B00D6946B00A5635A00D69C6300FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rsImpuestos
    Left = 271
    Top = 131
  end
  object rsImpuestos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from ocTiposImpuestos order by Descripcion'
    Parameters = <>
    Left = 174
    Top = 154
    object rsImpuestosTipoImpuesto: TAutoIncField
      FieldName = 'TipoImpuesto'
      ReadOnly = True
    end
    object rsImpuestosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsImpuestosPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      Precision = 6
      Size = 2
    end
    object rsImpuestosTitulo: TStringField
      FieldName = 'Titulo'
    end
    object rsImpuestosidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsImpuestosAutoIncluir: TBooleanField
      FieldName = 'AutoIncluir'
    end
    object rsImpuestosUidTipoImpuesto: TGuidField
      FieldName = 'UidTipoImpuesto'
      FixedChar = True
      Size = 38
    end
    object rsImpuestosITBIS: TBooleanField
      FieldName = 'ITBIS'
    end
    object rsImpuestosActivo: TBooleanField
      FieldName = 'Activo'
    end
  end
end

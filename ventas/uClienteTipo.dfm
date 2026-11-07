inherited ClienteTipo: TClienteTipo
  Caption = 'Tipos de Clientes y sus Comprobantes Fiscales'
  ClientHeight = 252
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Left = 1
    Top = 36
    Width = 402
    Height = 89
    ControlType.Strings = (
      'NoPagaItbis;CheckBox;true;false')
    Selected.Strings = (
      'idClienteTipo'#9'5'#9'Codigo'#9#9
      'ClienteTipo'#9'32'#9'ClienteTipo'#9#9
      'NoPagaItbis'#9'12'#9'No Paga Itbis'#9#9
      'TipoCompFiscal'#9'9'#9'Tipo NCF'#9#9)
    Align = alCustom
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Name = 'Tahoma'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 406
    inherited wwDBNavigator1Button7: TwwNavButton
      Width = 50
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 356
      Width = 50
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 2
    Top = 128
    Width = 401
    Height = 121
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsClienteTipoCuenta
      DataController.KeyFieldNames = 'idClienteTipoCuenta'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1idClienteTipo: TcxGridDBColumn
        DataBinding.FieldName = 'idClienteTipo'
        Visible = False
      end
      object cxGrid1DBTableView1idMoneda: TcxGridDBColumn
        Caption = 'Moneda'
        DataBinding.FieldName = 'idMoneda'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idMoneda'
        Properties.ListColumns = <
          item
            FieldName = 'Moneda'
          end>
        Properties.ListSource = dsMoneda
        Options.Filtering = False
        Width = 135
      end
      object cxGrid1DBTableView1idCuentaCredito: TcxGridDBColumn
        Caption = 'Cuenta Cr'#233'dito'
        DataBinding.FieldName = 'idCuentaCredito'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1idCuentaCreditoPropertiesButtonClick
        Options.Filtering = False
        Width = 123
      end
      object cxGrid1DBTableView1idCuentaContado: TcxGridDBColumn
        Caption = 'Cuenta Contado'
        DataBinding.FieldName = 'idCuentaContado'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1idCuentaContadoPropertiesButtonClick
        Options.Filtering = False
        Width = 120
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited DS: TwwDataSource
    DataSet = rs
  end
  inherited ImageList: TImageList
    Left = 332
    Top = 162
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterScroll = rsAfterScroll
    CommandText = 'Select * from ClienteTipo'
    Parameters = <>
    Left = 142
    Top = 122
    object rsidClienteTipo: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 5
      FieldName = 'idClienteTipo'
    end
    object rsClienteTipo: TStringField
      DisplayWidth = 32
      FieldName = 'ClienteTipo'
      Size = 50
    end
    object rsNoPagaItbis: TBooleanField
      DisplayLabel = 'No Paga Itbis'
      DisplayWidth = 12
      FieldName = 'NoPagaItbis'
    end
    object rsTipoCompFiscal: TStringField
      DisplayLabel = 'Tipo NCF'
      DisplayWidth = 9
      FieldName = 'TipoCompFiscal'
      FixedChar = True
      Size = 2
    end
  end
  object rsClienteTipoCuenta: TADODataSet
    Connection = dm.Coneccion
    BeforePost = rsClienteTipoCuentaBeforePost
    CommandText = 'svRsClienteTipoCuenta;1'
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
        Name = '@IdClienteTipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 44
    Top = 152
    object rsClienteTipoCuentaidClienteTipo: TIntegerField
      FieldName = 'idClienteTipo'
    end
    object rsClienteTipoCuentaidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsClienteTipoCuentaidCuentaCredito: TStringField
      FieldName = 'idCuentaCredito'
      OnValidate = rsClienteTipoCuentaidCuentaCreditoValidate
      Size = 16
    end
    object rsClienteTipoCuentaidCuentaContado: TStringField
      FieldName = 'idCuentaContado'
      OnValidate = rsClienteTipoCuentaidCuentaContadoValidate
      Size = 16
    end
    object rsClienteTipoCuentaidClienteTipoCuenta: TGuidField
      FieldName = 'idClienteTipoCuenta'
      FixedChar = True
      Size = 38
    end
  end
  object rsMoneda: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'svRSMoneda;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 154
    Top = 166
    object rsMonedaidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsMonedaMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsMonedaCursoLegal: TBooleanField
      FieldName = 'CursoLegal'
    end
  end
  object dsClienteTipoCuenta: TDataSource
    DataSet = rsClienteTipoCuenta
    Left = 42
    Top = 58
  end
  object dsMoneda: TDataSource
    DataSet = rsMoneda
    Left = 192
    Top = 64
  end
end

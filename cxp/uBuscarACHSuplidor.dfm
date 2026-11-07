object BuscarACHSuplidor: TBuscarACHSuplidor
  Left = 310
  Top = 214
  BorderStyle = bsToolWindow
  Caption = 'Cuentas ACH de suplidores'
  ClientHeight = 426
  ClientWidth = 532
  Color = 15922418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 532
    Height = 361
    Align = alTop
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'IdBancoSuplidor'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1BancoCodigo: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'BancoCodigo'
        Options.Filtering = False
        Width = 85
      end
      object cxGrid1DBTableView1Cuenta: TcxGridDBColumn
        DataBinding.FieldName = 'Cuenta'
        Options.Filtering = False
        Width = 310
      end
      object cxGrid1DBTableView1TipoCuenta: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'TipoCuenta'
        Options.Filtering = False
        Width = 96
      end
      object cxGrid1DBTableView1BancoDefault: TcxGridDBColumn
        Caption = 'Default'
        DataBinding.FieldName = 'BancoDefault'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Width = 39
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 4
    Top = 376
    Width = 145
    Height = 41
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 380
    Top = 376
    Width = 145
    Height = 41
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
    LookAndFeel.NativeStyle = True
  end
  object rsBancoSuplidor: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cxpBancoACHSuplidor'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 118
    Top = 116
    object rsBancoSuplidorIdBancoSuplidor: TGuidField
      FieldName = 'IdBancoSuplidor'
      FixedChar = True
      Size = 38
    end
    object rsBancoSuplidorIdSuplidor: TIntegerField
      FieldName = 'IdSuplidor'
    end
    object rsBancoSuplidorIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object rsBancoSuplidorBancoCodigo: TStringField
      FieldName = 'BancoCodigo'
      Size = 5
    end
    object rsBancoSuplidorTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      Size = 2
    end
    object rsBancoSuplidorCuenta: TStringField
      FieldName = 'Cuenta'
    end
    object rsBancoSuplidorBancoDefault: TBooleanField
      FieldName = 'BancoDefault'
    end
  end
  object ds: TDataSource
    DataSet = rsBancoSuplidor
    Left = 272
    Top = 164
  end
end

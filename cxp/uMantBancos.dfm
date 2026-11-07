inherited MantBancos: TMantBancos
  Left = 399
  Top = 143
  Width = 812
  Height = 474
  BorderIcons = [biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Cuentas de banco'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 804
  end
  inherited Gradient2: TGradient
    Width = 804
  end
  inherited btImprimir: TcxButton
    Left = 194
    Top = 224
    TabOrder = 3
    Visible = False
  end
  object cxGrid1: TcxGrid [3]
    Left = 0
    Top = 33
    Width = 804
    Height = 351
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'idCuentaBanco'
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
      object cxGrid1DBTableView1idCuentaBanco: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'idCuentaBanco'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 46
      end
      object cxGrid1DBTableView1Nombre: TcxGridDBColumn
        Caption = 'Nombre de la cuenta'
        DataBinding.FieldName = 'Nombre'
        Options.Filtering = False
        Width = 194
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        Caption = 'RNC banco'
        DataBinding.FieldName = 'RNC_Banco'
        Options.Filtering = False
        Width = 89
      end
      object cxGrid1DBTableView1NumCuenta: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'NumCuenta'
        Options.Filtering = False
        Width = 117
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
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsMoneda
        Options.Filtering = False
      end
      object cxGrid1DBTableView1UltimoCheque: TcxGridDBColumn
        Caption = 'Ultimo Ck'
        DataBinding.FieldName = 'UltimoCheque'
        Options.Filtering = False
        Width = 56
      end
      object cxGrid1DBTableView1idCuentaMayor: TcxGridDBColumn
        Caption = 'Cta Contable'
        DataBinding.FieldName = 'idCuentaMayor'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1idCuentaMayorPropertiesButtonClick
        Options.Filtering = False
        Width = 79
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'FormatoCheque'
        Options.Filtering = False
        Width = 105
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        Caption = 'Codigo ACH'
        DataBinding.FieldName = 'BancoCodigo'
        Width = 85
      end
      object cxGrid1DBTableView1TipoCuenta: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'TipoCuenta'
        Options.Filtering = False
        Width = 39
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited btLocalizar: TcxButton
    Left = 252
    Top = 224
    Visible = False
  end
  inherited btNuevo: TcxButton
    Left = 2
    Top = 388
    Width = 57
    Height = 50
  end
  inherited btCancelar: TcxButton
    Left = 119
    Top = 388
    Width = 57
    Height = 50
  end
  inherited btGuardar: TcxButton
    Left = 178
    Top = 388
    Width = 57
    Height = 50
  end
  inherited btBorrar: TcxButton
    Left = 623
    Top = 388
    Width = 57
    Height = 50
  end
  inherited btSalir: TcxButton
    Left = 706
    Top = 388
    Width = 57
    Height = 50
  end
  inherited btEditar: TcxButton
    Left = 61
    Top = 388
    Width = 57
    Height = 50
    TabOrder = 8
  end
  inherited DS: TwwDataSource
    DataSet = rsBancos
    Left = 118
    Top = 96
  end
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from cxpBancos order by Nombre'
    Parameters = <>
    Left = 122
    Top = 142
    object rsBancosidCuentaBanco: TAutoIncField
      FieldName = 'idCuentaBanco'
      ReadOnly = True
    end
    object rsBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsBancosidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsBancosTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      FixedChar = True
      Size = 1
    end
    object rsBancosUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
    end
    object rsBancosidCuentaMayor: TStringField
      FieldName = 'idCuentaMayor'
      Size = 16
    end
    object rsBancosNumCuenta: TStringField
      FieldName = 'NumCuenta'
      Size = 30
    end
    object rsBancosFormatoCheque: TStringField
      DisplayLabel = 'Formato cheque'
      FieldName = 'FormatoCheque'
      Size = 200
    end
    object rsBancosidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsBancosAbrev: TStringField
      FieldName = 'Abrev'
    end
    object rsBancosContacto: TStringField
      FieldName = 'Contacto'
      Size = 100
    end
    object rsBancosTelContacto: TStringField
      FieldName = 'TelContacto'
      Size = 30
    end
    object rsBancosFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object rsBancosRNC_Banco: TStringField
      FieldName = 'RNC_Banco'
      Size = 11
    end
    object rsBancosBancoCodigo: TStringField
      FieldName = 'BancoCodigo'
      Size = 5
    end
  end
  object dsMoneda: TwwDataSource
    AutoEdit = False
    DataSet = dm.Moneda
    OnUpdateData = DSUpdateData
    Left = 44
    Top = 110
  end
end

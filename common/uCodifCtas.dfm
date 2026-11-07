object frCodifCtas: TfrCodifCtas
  Left = 0
  Top = 0
  Width = 443
  Height = 270
  Align = alClient
  TabOrder = 0
  object Grid: TcxGrid
    Left = 0
    Top = 0
    Width = 443
    Height = 270
    Align = alClient
    TabOrder = 0
    OnEnter = GridEnter
    LookAndFeel.NativeStyle = True
    object tvCtas: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idCodificacion'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'Debito'
          Column = tvCtasDebito
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'Credito'
          Column = tvCtasCredito
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Edit.Visible = False
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
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = tvCtasStylesGetContentStyle
      object tvCtasidCuenta: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = GridDBTableView1idCuentaPropertiesButtonClick
        Options.Filtering = False
        Width = 70
      end
      object tvCtasDescripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 156
      end
      object tvCtasDebito: TcxGridDBColumn
        DataBinding.FieldName = 'Debito'
        Options.Filtering = False
        Width = 63
      end
      object tvCtasCredito: TcxGridDBColumn
        DataBinding.FieldName = 'Credito'
        Options.Filtering = False
        Width = 60
      end
      object tvCtasAutomatica: TcxGridDBColumn
        DataBinding.FieldName = 'Automatica'
        Visible = False
      end
      object tvCtasCentroCosto: TcxGridDBColumn
        Caption = 'Proyecto/CC'
        DataBinding.FieldName = 'CentroCosto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tvCtasCentroCostoPropertiesButtonClick
        Options.Filtering = False
        Width = 96
      end
      object tvCtasidPartida: TcxGridDBColumn
        Caption = 'Partida'
        DataBinding.FieldName = 'idPartida'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idPartida'
        Properties.ListColumns = <
          item
            FieldName = 'Partida'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dm.dsPartidas
        Options.Filtering = False
        Width = 85
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = tvCtas
    end
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cgRSCodificacion;1'
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
        Name = '@GUIDDoc'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 286
    Top = 30
    object rsidCodificacion: TGuidField
      FieldName = 'idCodificacion'
      FixedChar = True
      Size = 38
    end
    object rsGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object rsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object rsNota: TStringField
      FieldName = 'Nota'
      Size = 100
    end
    object rsReferencia: TStringField
      FieldName = 'Referencia'
      Size = 50
    end
    object rsAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
    object rsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
  end
  object ds: TDataSource
    DataSet = mCodif
    Left = 208
    Top = 122
  end
  object mCodif: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCodificacion'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'GUIDDocumento'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'DebCre'
        DataType = ftWord
      end
      item
        Name = 'Valor'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'idCentroCosto'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'idPartida'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Nota'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Automatica'
        DataType = ftBoolean
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Debito'
        DataType = ftCurrency
      end
      item
        Name = 'Credito'
        DataType = ftCurrency
      end
      item
        Name = 'CentroCosto'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'CentroCostoDesc'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    BeforeInsert = mCodifBeforeInsert
    BeforeEdit = mCodifBeforeEdit
    AfterPost = mCodifAfterPost
    AfterDelete = mCodifAfterPost
    OnNewRecord = mCodifNewRecord
    Left = 136
    Top = 28
    object mCodifidCodificacion: TGuidField
      FieldName = 'idCodificacion'
      FixedChar = True
      Size = 38
    end
    object mCodifGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object mCodifidCuenta: TStringField
      FieldName = 'idCuenta'
      OnValidate = mCodifidCuentaValidate
      Size = 16
    end
    object mCodifDebCre: TWordField
      FieldName = 'DebCre'
    end
    object mCodifValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object mCodifidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      OnValidate = mCodifidCentroCostoValidate
      FixedChar = True
      Size = 38
    end
    object mCodifidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object mCodifNota: TStringField
      FieldName = 'Nota'
      Size = 100
    end
    object mCodifReferencia: TStringField
      FieldName = 'Referencia'
      Size = 50
    end
    object mCodifAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
    object mCodifDescripcion: TStringField
      FieldName = 'Descripcion'
      OnValidate = mCodifDescripcionValidate
      Size = 60
    end
    object mCodifDebito: TCurrencyField
      FieldName = 'Debito'
      OnValidate = mCodifDebitoValidate
    end
    object mCodifCredito: TCurrencyField
      FieldName = 'Credito'
      OnValidate = mCodifCreditoValidate
    end
    object mCodifCentroCosto: TStringField
      FieldName = 'CentroCosto'
      OnValidate = mCodifCentroCostoValidate
      Size = 16
    end
    object mCodifCentroCostoDesc: TStringField
      FieldName = 'CentroCostoDesc'
      Size = 200
    end
  end
  object cGuardar: TADOCommand
    CommandText = 'cgGuardarCodificacion;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCodificacion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idAuxiliar'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@DebCre'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Valor'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@idCentroCosto'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idPartida'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Nota'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Referencia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Automatica'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@CentroCosto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idsuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@suplidor'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@TipoDocumento'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 138
    Top = 112
  end
  object cBorrar: TADOCommand
    CommandText = 'cgBorrarCodificacion;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCodificacion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 206
    Top = 44
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 54
    Top = 32
    object StyleAutomatica: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15199207
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 7237230
    end
  end
  object rsPrima: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cgCuentaPrimaBuscar'
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
        Name = '@idCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Debito'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Credito'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Tasa'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 318
    Top = 100
    object rsPrimaCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 16
    end
    object rsPrimaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsPrimaDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 32
    end
    object rsPrimaCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 32
    end
  end
end

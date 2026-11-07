inherited TagDocumento: TTagDocumento
  Left = 552
  Top = 237
  BorderIcons = []
  Caption = 'Tags'
  ClientHeight = 377
  ClientWidth = 406
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 8
    Top = 32
    Width = 390
    Height = 289
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Tag: TcxGridDBColumn
        DataBinding.FieldName = 'Tag'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 292
      end
      object cxGrid1DBTableView1Incluir: TcxGridDBColumn
        DataBinding.FieldName = 'Incluir'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Options.Filtering = False
        Width = 55
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton [1]
    Left = 9
    Top = 324
    Width = 113
    Height = 50
    Caption = 'Guardar'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [2]
    Left = 138
    Top = 324
    Width = 113
    Height = 50
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [3]
    Left = 325
    Top = 324
    Width = 74
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 3
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [4]
    Left = 325
    Top = 349
    Width = 74
    Height = 25
    Caption = 'Borrar'
    TabOrder = 4
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object luTipo: TcxLookupComboBox [5]
    Left = 8
    Top = 6
    Width = 391
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idTagTipo'
    Properties.ListColumns = <
      item
        FieldName = 'TagTipo'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTipos
    Properties.OnEditValueChanged = luTipoPropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = mTags
    Left = 311
    Top = 199
  end
  object mTags: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    OnFilterRecord = mTagsFilterRecord
    Left = 74
    Top = 172
    object mTagsIdTag: TIntegerField
      FieldName = 'IdTag'
    end
    object mTagsTag: TStringField
      FieldName = 'Tag'
      Size = 30
    end
    object mTagsIncluir: TBooleanField
      FieldName = 'Incluir'
    end
    object mTagsIdTagTipo: TStringField
      FieldName = 'IdTagTipo'
      Size = 16
    end
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'RSTagDocumento;1'
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
        Name = '@guiddocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 156
    Top = 62
    object rsidTagDocumento: TIntegerField
      FieldName = 'idTagDocumento'
      ReadOnly = True
    end
    object rsGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object rsTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      Size = 16
    end
    object rsIdTag: TIntegerField
      FieldName = 'IdTag'
    end
    object rsTag: TStringField
      FieldName = 'Tag'
      Size = 30
    end
  end
  object rsListaTags: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'rsTag;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 50
    Top = 52
    object rsListaTagsidTag: TIntegerField
      FieldName = 'idTag'
      ReadOnly = True
    end
    object rsListaTagsTag: TStringField
      FieldName = 'Tag'
      Size = 30
    end
    object rsListaTagsidTagTipo: TStringField
      FieldName = 'idTagTipo'
      Size = 16
    end
  end
  object cInsTag: TADOCommand
    CommandText = 'InsTagDocumento;1'
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
        Name = '@guiddocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@tag'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tipodoc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 194
    Top = 190
  end
  object cBorrar: TADOCommand
    CommandText = 'BorrarTagDocumento;1'
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
        Name = '@guiddocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 222
    Top = 92
  end
  object rsTipos: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select idTagTipo, TagTipo'#13#10'from TagTipo '#13#10'union all '#13#10'select nul' +
      'l,'#39'(todos)'#39#13#10'order by 2 '
    Parameters = <>
    Left = 22
    Top = 108
    object rsTiposidTagTipo: TStringField
      FieldName = 'idTagTipo'
      Size = 16
    end
    object rsTiposTagTipo: TStringField
      FieldName = 'TagTipo'
      Size = 50
    end
  end
  object dsTipos: TwwDataSource
    AutoEdit = False
    DataSet = rsTipos
    OnUpdateData = DSUpdateData
    Left = 115
    Top = 119
  end
  object cCrear: TADOCommand
    CommandText = 'InsertarTagNuevo;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@tag'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
      end>
    Left = 270
    Top = 142
  end
  object cBorrarTag: TADOCommand
    CommandText = 'BorrarTag;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idtag'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 326
    Top = 78
  end
end

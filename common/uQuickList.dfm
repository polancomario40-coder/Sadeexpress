object QuickList: TQuickList
  Left = 357
  Top = 211
  Width = 953
  Height = 557
  Caption = 'CBSListas'
  Color = 15922418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 269
    Height = 523
    Align = alLeft
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      269
      523)
    object GridListas: TcxGrid
      Left = 3
      Top = 1
      Width = 266
      Height = 427
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object GridListasDBTableView1: TcxGridDBTableView
        DataController.DataSource = dsLista
        DataController.KeyFieldNames = 'idLista'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupRowStyle = grsOffice11
        Styles.Group = cxStyle2
        object GridListasDBTableView1Lista: TcxGridDBColumn
          DataBinding.FieldName = 'Lista'
        end
        object GridListasDBTableView1DBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Categoria'
          Visible = False
          GroupIndex = 0
        end
      end
      object GridListasLevel1: TcxGridLevel
        GridView = GridListasDBTableView1
      end
    end
    object cxDBMemo1: TcxDBMemo
      Left = 3
      Top = 431
      Width = 266
      Height = 89
      TabStop = False
      Anchors = [akLeft, akRight, akBottom]
      DataBinding.DataField = 'Descripcion'
      DataBinding.DataSource = dsLista
      Properties.ReadOnly = True
      Style.Color = 15922418
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = 9516803
      TabOrder = 1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 269
    Top = 0
    Width = 8
    Height = 523
    HotZoneClassName = 'TcxXPTaskBarStyle'
    Control = Panel1
    OnCanResize = cxSplitter1CanResize
  end
  object Panel2: TPanel
    Left = 277
    Top = 0
    Width = 668
    Height = 523
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      668
      523)
    object lCaption: TLabel
      Left = 2
      Top = 46
      Width = 84
      Height = 23
      Caption = '[LISTA]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4938315
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 2
      Top = 483
      Width = 668
      Height = 40
      Anchors = [akLeft, akRight, akBottom]
      BevelOuter = bvNone
      Color = 12240314
      TabOrder = 0
      DesignSize = (
        668
        40)
      object btExcel: TcxButton
        Left = 3
        Top = 4
        Width = 118
        Height = 29
        Caption = 'Exportar a Excel'
        TabOrder = 0
        OnClick = btExcelClick
        LookAndFeel.NativeStyle = True
      end
      object cxButton1: TcxButton
        Left = 483
        Top = 6
        Width = 105
        Height = 29
        Anchors = [akRight, akBottom]
        Caption = 'Editar Lista'
        TabOrder = 1
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton2: TcxButton
        Left = 629
        Top = 4
        Width = 36
        Height = 31
        Anchors = [akRight, akBottom]
        TabOrder = 2
        OnClick = cxButton2Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF009CA5
          9400949CAD00737B9400737B9C00737B9C00737B9C00737B9C00737B9C00737B
          9C00737B9C00737B9C00737B9C00737B9C00ADADB500847B7B00ADB5A5009CA5
          D6001831C6000029B5000831BD001031BD000831BD000829BD000029BD000029
          C6000029C6000029C6000021C6000018BD004252C600ADADB500BDB5A5003952
          C6000831DE00214ADE003152DE00294ADE00214ADE00315AE7003963E7002152
          E7000839E7000842E7000039E7000031DE000018BD00737B9C00BDB5A500425A
          CE001842E700315AE7003152E7004A6BE700BDC6F700D6DEFF00D6DEFF00CEDE
          FF008CA5F700104AEF000042EF000039E7000021C600737B9C00BDB5A5004263
          CE00214AE700395AE700637BEF00EFEFFF00B5C6F7005273EF002152E7005A84
          EF00CEDEFF00BDCEFF000842EF000039E7000029C600737B9C00BDB5A5004A63
          CE002952EF004A63E700D6DEFF00A5B5F700315AE7005273EF008CA5F7001852
          E7002152EF00CEDEFF0084A5F7000039E7000029C600737B9C00B5B5A500526B
          CE003152EF007B94EF00DEE7FF004A6BE7004263E7006384EF00CED6FF00295A
          E700104AE700527BEF00CEDEFF00184AE7000029C600737B9C00B5B5A500526B
          CE00395AEF0094ADF700C6CEF700395AE7004263E700637BEF00C6CEF7002952
          E7002152E700184AE700D6DEFF00315AE7000829C6007B7B9C00B5B5A5005A73
          CE004263EF0094A5EF00CED6FF004A63E7004263E700637BEF00C6CEF7002952
          E700184AE700315AE700D6DEFF00315AE7000831C6007B849C00B5B5A5005A73
          CE005273EF007384EF00EFEFFF007B94EF003152E700637BE700BDC6F700214A
          E7001039DE009CB5F700B5C6F700184ADE001039C6007B849C00B5B5A5006373
          CE00637BF7006384EF009CADF700F7F7FF007B8CEF00395AE7002142DE003152
          E7008CA5EF00E7E7FF003963E700214ADE001839C6007B849C00B5ADA500637B
          CE00738CF7007B94EF006384EF009CADF700EFEFFF00CED6F700B5C6F700CED6
          FF00D6DEFF005273E700294AE7003152DE001839C6007B7B9C00B5ADA5006B7B
          CE008CA5F7009CADF7007B94EF006384EF00738CEF0094ADEF00A5B5F7008C9C
          EF005273E7004263E7004263E7003152E7000831BD00737B9C00ADB59C008C9C
          DE007B94FF00849CF7006B8CF700637BF7005A73EF004A6BEF004A6BEF004A6B
          EF00426BEF004263EF00315AEF001842E7001842CE009494AD00A56BA500ADBD
          AD008C9CDE00637BCE006373CE006373CE005A73CE005A73CE005A73CE005A6B
          CE00526BCE00526BCE004A63CE00425AC6009CA5D6009CA59400EF63EF00A56B
          A500ADB59C00B5ADA500B5B5A500B5B5A500B5B5A500B5B5A500B5B5A500B5B5
          A500B5B5A500B5B5A500B5B5A500BDB5A500ADB5A500B539B500}
        LookAndFeel.NativeStyle = True
      end
      object cxButton3: TcxButton
        Left = 353
        Top = 6
        Width = 105
        Height = 29
        Anchors = [akRight, akBottom]
        Caption = 'Nueva Lista'
        TabOrder = 3
        OnClick = cxButton3Click
        LookAndFeel.NativeStyle = True
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 668
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Color = 12240314
      TabOrder = 1
      DesignSize = (
        668
        40)
      object Label3: TLabel
        Left = 6
        Top = 12
        Width = 34
        Height = 13
        Caption = 'Desde:'
      end
      object Label4: TLabel
        Left = 179
        Top = 12
        Width = 32
        Height = 13
        Caption = 'Hasta:'
      end
      object deDesde: TcxDateEdit
        Left = 45
        Top = 8
        Width = 121
        Height = 21
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object deHasta: TcxDateEdit
        Left = 213
        Top = 8
        Width = 121
        Height = 21
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object btMostrar: TcxButton
        Left = 440
        Top = 4
        Width = 105
        Height = 29
        Anchors = [akTop, akRight]
        Caption = 'Mostrar Datos'
        TabOrder = 2
        OnClick = btMostrarClick
        LookAndFeel.NativeStyle = True
      end
      object btCerrar: TcxButton
        Left = 561
        Top = 4
        Width = 102
        Height = 29
        Anchors = [akTop, akRight]
        Caption = 'Limpiar Datos'
        TabOrder = 3
        OnClick = btCerrarClick
        Colors.Default = clLime
        Colors.Normal = clAqua
        Colors.Hot = 16512
        LookAndFeel.NativeStyle = True
      end
    end
    object Grid: TcxGrid
      Left = 2
      Top = 74
      Width = 668
      Height = 409
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      LookAndFeel.NativeStyle = True
      object tvData: TcxGridDBTableView
        DataController.DataSource = ds
        DataController.KeyFieldNames = 'Key'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsData.Appending = True
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
      end
      object GridLevel1: TcxGridLevel
        GridView = tvData
      end
    end
    object cbBestFit: TcxCheckBox
      Left = 607
      Top = 50
      Width = 59
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'Best fit'
      State = cbsChecked
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 3
    end
  end
  object dsLista: TDataSource
    DataSet = rsLista
    Left = 320
    Top = 430
  end
  object ds: TDataSource
    DataSet = rs
    Left = 378
    Top = 330
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15856625
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = 9516803
    end
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    Left = 369
    Top = 184
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandTimeout = 240
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 658
    Top = 206
  end
  object rsLista: TADODataSet
    CacheSize = 128
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'biRSLista;1'
    CommandTimeout = 240
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
        Name = '@todas'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 490
    Top = 200
    object rsListaidLista: TGuidField
      FieldName = 'idLista'
      FixedChar = True
      Size = 38
    end
    object rsListaLista: TStringField
      FieldName = 'Lista'
      Size = 300
    end
    object rsListaFechaCreacion: TDateTimeField
      FieldName = 'FechaCreacion'
    end
    object rsListaUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsListaActiva: TBooleanField
      FieldName = 'Activa'
    end
    object rsListaCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object rsListaADOCommandType: TStringField
      FieldName = 'ADOCommandType'
      Size = 40
    end
    object rsListaADOCommand: TStringField
      FieldName = 'ADOCommand'
      Size = 1000
    end
    object rsListaTipoLista: TStringField
      FieldName = 'TipoLista'
      FixedChar = True
      Size = 1
    end
    object rsListaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 300
    end
  end
end

object AddLogEvent: TAddLogEvent
  Left = 385
  Top = 179
  Width = 684
  Height = 503
  BorderStyle = bsSizeToolWin
  Caption = 'Log de eventos'
  Color = 15269887
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  DesignSize = (
    676
    469)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 10
    Top = 0
    Width = 658
    Height = 428
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = cxcbsNone
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object tvLog: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idTareaLog'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.Background = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      object tvLogFecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Editing = False
        Options.Filtering = False
        Width = 151
      end
      object tvLogUsuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        Options.Editing = False
        Options.Filtering = False
        Width = 92
      end
      object tvLogTareaLog: TcxGridDBColumn
        Caption = 'Texto'
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 429
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvLog
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 429
    Width = 676
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = 15269887
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      676
      40)
    object cxButtonEdit1: TcxButtonEdit
      Left = 8
      Top = 5
      Width = 660
      Height = 24
      Anchors = [akLeft, akRight, akBottom]
      BeepOnEnter = False
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFEFCECFC36465AA5556A452539F4F509A4D4D94
            4A4A8F4747894444834141783B3C783B3C7239396E3637FF00FFFF00FFCF6B6C
            F38E8FE68081AA4424473221C3B4ABC6BBB3CAC1BCCEC8C4564D489E3E339C3D
            36983931723939FF00FFFF00FFD16F70FF999AEC8687E68081715B4B473C348D
            7868EDE0D8F1E7E08F7F73A34135A2423C9C3D35783B3CFF00FFFF00FFD47576
            FF9FA0F59091EC8687715B4B000000473C34E9D9CEECDDD4857467AE4B43AA49
            44A3423C7D3E3EFF00FFFF00FFD77B7CFFA9AAFB9FA0F59394715B4B715B4B71
            5B4B715B4B7662527D6A5BBA5654B24F4CAA4944834141FF00FFFF00FFDB8384
            FFB3B4FFADAEFCA3A4F48E8FEC8687E68081DF797AD77172D16B6CC15D5CBA56
            54B2504C894444FF00FFFF00FFDF8A8BFFBBBCFFB6B7C96360C45E56BE584BB8
            523FB34D34AD4728A7411CA13B11C15D5CBA56548F4747FF00FFFF00FFE29192
            FFBDBECC6667FFFFFFFFFFFFFBF8F6F6EEEAF0E5DEEADBD2E5D1C6E1CABDA13B
            11C25D5C944A4AFF00FFFF00FFE59798FFBDBED36D6EFFFFFFFFFFFFFFFFFFFB
            F8F6F6EEEAF0E5DEEADBD2E5D1C6A7411CCC67679A4D4DFF00FFFF00FFE99E9F
            FFBDBEDC7677FFFFFFFFFFFFFFFFFFFFFFFFFBF8F6F6EEEAF0E5DEEADBD2AD47
            28D771729F4F50FF00FFFF00FFEDA6A7FFBDBEE68081FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFBF8F6F6EEEAF0E5DEB34D34DF797AA45253FF00FFFF00FFF0ACAD
            FFBDBEEF898AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F6F6EEEAB852
            3F673333AA5556FF00FFFF00FFF3B2B3FFBDBEF89293FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFBF8F6BE584BB05859B05859FF00FFFF00FFF5B6B7
            F5B6B7F3B2B3F1ADAEEEA7A8EAA1A2E79A9BE49394E08E8FDD8788DA8081D67A
            7BD37475D16F70FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Kind = bkGlyph
        end
        item
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            A1A09F565655919191B6B6B6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBCBC
            BCB8B8B8FF00FFFF00FFFF00FFBBBBBB6766661713124D4B4AA5A4A4BEBEBEFF
            00FFFF00FFFF00FFFF00FFBDBDBD7270709A9A9ABEBEBEFF00FFFF00FFFF00FF
            90908F2018162B2625706F6EB8B8B8FF00FFFF00FFFF00FFBEBEBEAAAAA93837
            37AAAAAABEBEBEFF00FFFF00FFFF00FFBBBBBB5E5A59292421403C3BA8A7A7FF
            00FFFF00FFBABABAB6B5B54D4B49646260BEBEBEFF00FFFF00FFFF00FFFF00FF
            FF00FFB2B1B143413E25211E535050B4B4B4B8B8B8B8B8B8646260393636AFAE
            AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAEAE43413F2D28275B
            5A599D9D9C504D4C333130828180FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFAEAEAE464241312E2D34302F38353442403FFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9B9B37
            32313D3A39444140B5B4B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFBFBFBFABABAB5957563B37363A37363A3B395B5956BABABAFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDBDBD898888444241423E3E75
            7574A8A7A77572723C3C3D6F6D6BB7B7B6FF00FFFF00FFFF00FFFF00FFB3B3B3
            A4A4A46765643F3C3A403F3E6E7071BABBBBFF00FFBBBBBB71717043413F7574
            74B9B9B8FF00FFFF00FFBEBEBE908F8F6663633D3937454140878686BEBEBEFF
            00FFFF00FFFF00FFBBBBBB9F9E9D4D4D4E727171FF00FFFF00FFBEBEBE8E8D8D
            4441414747469A9A9ABEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFBDBDBDB1B1
            B18B8B8BFF00FFFF00FFC0C0C0A9A9A9686967A1A1A0BFBFBFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Style.BorderColor = 43176
      Style.BorderStyle = ebsOffice11
      Style.Color = 15269887
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Text = 'Agregar nota'
      OnEnter = cxButtonEdit1Enter
      OnExit = cxButtonEdit1Exit
    end
  end
  object ds: TDataSource
    DataSet = rs
    Left = 136
    Top = 174
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15269887
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 14024703
    end
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'DocumentoLogFind;1'
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
    Left = 80
    Top = 72
    object rsidLog: TAutoIncField
      FieldName = 'idLog'
      ReadOnly = True
    end
    object rsGuidDocumento: TGuidField
      FieldName = 'GuidDocumento'
      FixedChar = True
      Size = 38
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 1000
    end
  end
  object cLog: TADOCommand
    CommandText = 'DocumentoLogInsert;1'
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
        Name = '@guiddocumento'
        Attributes = [paNullable]
        DataType = ftGuid
      end
      item
        Name = '@usuario'
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
        Name = '@descrip'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
      end>
    Left = 252
    Top = 56
  end
end

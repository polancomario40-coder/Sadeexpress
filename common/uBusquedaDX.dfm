inherited BusquedaDX: TBusquedaDX
  Left = 493
  Top = 322
  Width = 793
  Height = 491
  BorderIcons = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    785
    457)
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TcxButton
    Left = 510
    Top = 422
    Width = 105
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object BitBtn2: TcxButton
    Left = 680
    Top = 422
    Width = 102
    Height = 31
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object Grid: TcxGrid
    Left = 2
    Top = 4
    Width = 780
    Height = 413
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object tblView: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = tblViewCellDblClick
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      Styles.ContentEven = cxStyle1
    end
    object GridLevel1: TcxGridLevel
      GridView = tblView
    end
  end
  object cbAutofit: TcxCheckBox
    Left = 3
    Top = 430
    Width = 187
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Ajustar el ancho de las columnas'
    Properties.OnChange = cxCheckBox1PropertiesChange
    TabOrder = 3
  end
  object DS: TDataSource
    DataSet = RS
    Left = 185
    Top = 54
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'BusqTest;1'
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
        Name = '@Orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 249
    Top = 50
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15659246
    end
  end
end

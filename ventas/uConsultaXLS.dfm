inherited ConsultaXLS: TConsultaXLS
  Left = 272
  Top = 188
  Caption = 'ConsultaXLS'
  ClientHeight = 431
  ClientWidth = 742
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 16
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 176
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object cxButton1: TcxButton [2]
    Left = 46
    Top = 40
    Width = 121
    Height = 31
    Caption = 'Mostrar'
    Default = True
    TabOrder = 0
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [3]
    Left = 210
    Top = 40
    Width = 121
    Height = 31
    Caption = 'Guardar'
    TabOrder = 1
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [4]
    Left = 625
    Top = 40
    Width = 113
    Height = 31
    Caption = 'Salir'
    TabOrder = 2
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object dtDesde: TcxDateEdit [5]
    Left = 46
    Top = 12
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object dtHasta: TcxDateEdit [6]
    Left = 210
    Top = 12
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object Grid: TdxDBGrid [7]
    Left = 0
    Top = 78
    Width = 742
    Height = 353
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    DefaultFields = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alBottom
    TabOrder = 5
    DataSource = DS
    Filter.Criteria = {00000000}
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  inherited DS: TwwDataSource
    DataSet = RS
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxcReporteRecibosApl;1'
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
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 32
    Top = 154
  end
  object dlg: TSaveDialog
    DefaultExt = 'XLS'
    Left = 274
    Top = 132
  end
end

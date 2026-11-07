inherited SIREN: TSIREN
  Left = 229
  Top = 118
  Caption = 'Exportar Datos al Formato de AFP'
  ClientHeight = 513
  ClientWidth = 712
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 24
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Desde :'
  end
  object Label4: TLabel [1]
    Left = 208
    Top = 16
    Width = 34
    Height = 13
    Caption = 'Hasta :'
  end
  object GRID: TwwDBGrid [2]
    Left = 4
    Top = 48
    Width = 702
    Height = 457
    DisableThemes = False
    Selected.Strings = (
      'Cadena'#9'8000'#9'Cadena')
    IniAttributes.Delimiter = ';;'
    ExportOptions.Delimiter = ';'
    ExportOptions.FileName = 'C:\Nomina.txt'
    ExportOptions.Options = []
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitBtn1: TBitBtn [3]
    Left = 573
    Top = 8
    Width = 132
    Height = 31
    Caption = 'Generar Archivo'
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object dDesde: TcxDateEdit [4]
    Left = 67
    Top = 12
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object dHasta: TcxDateEdit [5]
    Left = 249
    Top = 12
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object BitBtn3: TBitBtn [6]
    Left = 429
    Top = 7
    Width = 116
    Height = 32
    Caption = 'Mostrar'
    ModalResult = 1
    TabOrder = 4
    OnClick = BitBtn3Click
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
    NumGlyphs = 2
  end
  inherited DS: TwwDataSource
    DataSet = toafp
  end
  object toafp: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'TOAFP;1'
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
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 312
    Top = 264
  end
  object Save: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'Nomina'
    Filter = 'TXT|*.txt|PRN|*.prn'
    Left = 496
    Top = 128
  end
end

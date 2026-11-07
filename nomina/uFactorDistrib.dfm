inherited FactorDistrib: TFactorDistrib
  Left = 299
  Top = 182
  Caption = 'Factores de Distribucion de Costo de MO'
  ClientHeight = 360
  ClientWidth = 519
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid [0]
    Left = 8
    Top = 8
    Width = 505
    Height = 345
    DisableThemes = False
    Selected.Strings = (
      'idFactorDistrib'#9'16'#9'Factor'
      'FactorDistrib'#9'10'#9'Porciento'#9'F'
      'Descripcion'#9'50'#9'Descripcion')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DS
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
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = rs
    Left = 301
    Top = 101
  end
  object rs: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * from FactorDistrib order by idfactordistrib'
    Parameters = <>
    Left = 184
    Top = 64
  end
end

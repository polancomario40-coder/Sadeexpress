inherited FullTextSearch: TFullTextSearch
  Height = 488
  ActiveControl = edFiltro
  Caption = 'Buscar registros'
  PixelsPerInch = 96
  TextHeight = 13
  inherited BitBtn1: TcxButton
    Left = 508
    Top = 416
    TabOrder = 2
  end
  inherited BitBtn2: TcxButton
    Left = 675
    Top = 416
    TabOrder = 3
  end
  inherited Grid: TcxGrid
    Left = 9
    Top = 25
    Width = 768
    Height = 385
    TabOrder = 1
  end
  inherited cbAutofit: TcxCheckBox
    Left = 12
    Top = 421
    TabOrder = 4
  end
  object edFiltro: TcxTextEdit [4]
    Left = 9
    Top = 3
    Width = 768
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Properties.OnChange = edFiltroPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 112
    Top = 172
  end
end

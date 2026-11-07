inherited SetupEdit: TSetupEdit
  Left = 620
  Top = 309
  BorderStyle = bsDialog
  Caption = 'Configurar valor de parametro'
  ClientHeight = 250
  ClientWidth = 376
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object paginas: TcxPageControl
    Left = 7
    Top = 68
    Width = 359
    Height = 127
    ActivePage = Text
    TabOrder = 0
    TabPosition = tpBottom
    ClientRectBottom = 127
    ClientRectRight = 359
    ClientRectTop = 0
    object Numeric: TcxTabSheet
      Caption = 'Numeric'
      ImageIndex = 0
      TabVisible = False
      object Label2: TLabel
        Left = 50
        Top = 22
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object vn: TcxDBCalcEdit
        Left = 82
        Top = 18
        Width = 121
        Height = 21
        DataBinding.DataSource = ds
        TabOrder = 0
      end
    end
    object Boolean: TcxTabSheet
      Caption = 'Boolean'
      ImageIndex = 1
      TabVisible = False
      object vb: TcxDBCheckBox
        Left = 52
        Top = 22
        Width = 221
        Height = 21
        Caption = '          Marcado - SI / En Blanco NO'
        DataBinding.DataSource = ds
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 0
      end
    end
    object Text: TcxTabSheet
      Caption = 'Text'
      ImageIndex = 2
      TabVisible = False
      object Label1: TLabel
        Left = 50
        Top = 22
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object vs: TcxDBTextEdit
        Left = 82
        Top = 18
        Width = 121
        Height = 21
        DataBinding.DataSource = ds
        TabOrder = 0
      end
    end
  end
  object cxDBLabel2: TcxDBLabel
    Left = 13
    Top = 9
    Width = 350
    Height = 36
    DataBinding.DataField = 'Descripcion'
    DataBinding.DataSource = ds
    ParentFont = False
    Properties.WordWrap = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
  end
  object cxButton1: TcxButton
    Left = 284
    Top = 220
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 189
    Top = 220
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * from [defaults] '#13#10'where clave = :clave'
    Parameters = <
      item
        Name = 'clave'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 295
    Top = 40
    object rsClave: TStringField
      FieldName = 'Clave'
      Size = 16
    end
    object rsValor: TVariantField
      FieldName = 'Valor'
    end
    object rsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsCategoria: TStringField
      FieldName = 'Categoria'
      Size = 16
    end
    object rsUidClave: TGuidField
      FieldName = 'UidClave'
      FixedChar = True
      Size = 38
    end
    object rsTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
  object ds: TDataSource
    DataSet = rs
    Left = 293
    Top = 94
  end
end

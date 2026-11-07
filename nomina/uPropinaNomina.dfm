inherited PropinaNomina: TPropinaNomina
  Left = 437
  Top = 359
  Caption = 'Propina a distribuir'
  ClientHeight = 94
  ClientWidth = 281
  PixelsPerInch = 96
  TextHeight = 13
  object edNomina: TcxDBTextEdit [0]
    Left = 56
    Top = 8
    Width = 121
    Height = 21
    TabStop = False
    DataBinding.DataField = 'NominaId'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 16114134
    TabOrder = 0
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit [1]
    Left = 56
    Top = 34
    Width = 121
    Height = 21
    DataBinding.DataField = 'Propina'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    TabOrder = 1
  end
  object cxLabel1: TcxLabel [2]
    Left = 4
    Top = 10
    Width = 43
    Height = 17
    Caption = 'Nomina:'
  end
  object cxLabel2: TcxLabel [3]
    Left = 4
    Top = 36
    Width = 43
    Height = 17
    Caption = 'Propina:'
  end
  object cxButton1: TcxButton [4]
    Left = 6
    Top = 60
    Width = 89
    Height = 30
    Caption = 'Guardar'
    Default = True
    TabOrder = 4
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [5]
    Left = 188
    Top = 60
    Width = 89
    Height = 30
    Cancel = True
    Caption = 'Salir'
    TabOrder = 5
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = rsPropina
    Left = 131
    Top = 53
  end
  object rsPropina: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from NominaPropina'#13#10'where NominaId = :NominaId'
    Parameters = <
      item
        Name = 'NominaId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 88
    Top = 50
    object rsPropinaNominaId: TIntegerField
      FieldName = 'NominaId'
    end
    object rsPropinaPropina: TBCDField
      FieldName = 'Propina'
      Precision = 19
      Size = 2
    end
  end
end

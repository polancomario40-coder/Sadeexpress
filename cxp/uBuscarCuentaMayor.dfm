inherited BuscarCuentaMayor: TBuscarCuentaMayor
  Left = 578
  Top = 225
  Width = 701
  ActiveControl = edFiltro
  Caption = 'BuscarCuentaMayor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited BitBtn1: TcxButton
    Left = 418
  end
  inherited BitBtn2: TcxButton
    Left = 588
  end
  inherited Grid: TcxGrid
    Left = 4
    Top = 28
    Width = 685
    Height = 389
    inherited tblView: TcxGridDBTableView
      DataController.KeyFieldNames = 'idCuenta'
      OptionsView.ColumnAutoWidth = True
      object tblViewidCuenta: TcxGridDBColumn
        Caption = 'Numero'
        DataBinding.FieldName = 'idCuenta'
        Options.Filtering = False
      end
      object tblViewDescripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
      end
    end
  end
  inherited cbAutofit: TcxCheckBox
    Top = 427
    Visible = False
  end
  object edFiltro: TcxTextEdit [4]
    Left = 4
    Top = 4
    Width = 541
    Height = 21
    Properties.OnChange = edFiltroPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cbDet: TcxCheckBox [5]
    Left = 549
    Top = 4
    Width = 137
    Height = 21
    TabStop = False
    Caption = 'Solo cuentas de detalle'
    ParentFont = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  inherited DS: TDataSource
    Top = 120
  end
  inherited RS: TADODataSet
    CommandText = 'cgCatalogoFind;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Todas'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@filtro'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 229
    Top = 120
    object RSidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object RSDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 114
    Top = 126
  end
end

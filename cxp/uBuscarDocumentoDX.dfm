inherited BuscarDocumentoDX: TBuscarDocumentoDX
  Left = 379
  Top = 172
  Width = 836
  Height = 527
  Caption = 'Buscar documentos'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 10
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 170
    Top = 10
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  inherited BitBtn1: TcxButton
    Left = 553
    Top = 458
  end
  inherited BitBtn2: TcxButton
    Left = 723
    Top = 458
  end
  inherited Grid: TcxGrid
    Top = 32
    Width = 823
    Height = 421
    inherited tblView: TcxGridDBTableView
      DataController.KeyFieldNames = 'idDocumento'
      OptionsView.ColumnAutoWidth = True
      object tblViewReferencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Width = 110
      end
      object tblViewFecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 102
      end
      object tblViewTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Width = 104
      end
      object tblViewNombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        Width = 279
      end
      object tblViewRNC: TcxGridDBColumn
        Caption = 'RNC/Cedula'
        DataBinding.FieldName = 'RNC'
        Width = 109
      end
      object tblViewTelefono1: TcxGridDBColumn
        Caption = 'Telefono'
        DataBinding.FieldName = 'Telefono1'
        Width = 97
      end
    end
  end
  inherited cbAutofit: TcxCheckBox
    Top = 463
    Visible = False
  end
  object deDesde: TcxDateEdit [6]
    Left = 42
    Top = 6
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.OnEditValueChanged = edFiltroPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object deHasta: TcxDateEdit [7]
    Left = 208
    Top = 6
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.OnEditValueChanged = edFiltroPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object edFiltro: TcxTextEdit [8]
    Left = 334
    Top = 6
    Width = 491
    Height = 21
    Properties.OnChange = edFiltroPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  inherited DS: TDataSource
    Left = 173
    Top = 180
  end
  inherited RS: TADODataSet
    CommandText = 'cxpDocumentoFind;1'
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
      end
      item
        Name = '@mask'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@idTrans'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 241
    Top = 188
    object RSidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 21
      Size = 2
    end
    object RSTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 30
    end
    object RSNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object RSRNC: TStringField
      FieldName = 'RNC'
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 80
    Top = 190
  end
end

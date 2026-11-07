inherited fBuscarCargos: TfBuscarCargos
  Left = 258
  Top = 187
  Caption = 'fBuscarCargos'
  ClientHeight = 466
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [5]
    Left = 508
    Top = 1
    Width = 232
    Height = 27
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Buscar documentos '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  inherited dxNavBar1: TdxNavBar
    inherited nbgNumero: TdxNavBarGroup
      Links = <>
    end
    inherited nbgRangoFecs: TdxNavBarGroup
      Links = <>
    end
    inherited nbgNombres: TdxNavBarGroup
      Links = <>
    end
    inherited nbgNumeroControl: TdxNavBarGroupControl
      GroupIndex = 0
      OriginalHeight = 90
    end
    inherited nbgRangoFecsControl: TdxNavBarGroupControl
      GroupIndex = 1
      OriginalHeight = 92
    end
    inherited nbgNombresControl: TdxNavBarGroupControl
      GroupIndex = 2
      OriginalHeight = 78
    end
  end
  inherited dxDBGrid1: TdxDBGrid
    KeyField = 'idDocumento'
    Filter.Criteria = {00000000}
    object dxDBGrid1idDocumento: TdxDBGridMaskColumn
      Caption = 'Numero'
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idDocumento'
    end
    object dxDBGrid1Referencia: TdxDBGridMaskColumn
      Caption = 'Ref'
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
    object dxDBGrid1Fecha: TdxDBGridDateColumn
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object dxDBGrid1Nombre: TdxDBGridMaskColumn
      Width = 234
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nombre'
    end
    object dxDBGrid1Total: TdxDBGridCurrencyColumn
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Total'
      Nullable = False
    end
    object dxDBGrid1Telefono1: TdxDBGridMaskColumn
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Telefono1'
    end
    object dxDBGrid1RNC: TdxDBGridMaskColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RNC'
    end
  end
  inherited ds: TDataSource
    Left = 448
    Top = 168
  end
  inherited rsRecs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      '  select d.idDocumento,'#13#10#9' d.Referencia,'#13#10#9' d.Fecha,'#13#10#9' d.Total,' +
      #13#10#9' s.Telefono1,'#13#10#9' s.Nombre,'#13#10#9' s.RNC'#13#10'  from cxpDocumentos d l' +
      'eft join cxpSuplidores s '#13#10'   on d.idSuplidor = s.idSuplidor '
    object rsRecsidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsRecsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsRecsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRecsTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rsRecsTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object rsRecsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsRecsRNC: TStringField
      FieldName = 'RNC'
    end
  end
end

inherited BuscarDocumentos: TBuscarDocumentos
  Left = 365
  Top = 209
  Caption = 'Buscar documentos'
  ClientHeight = 481
  ClientWidth = 783
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape9: TShape
    Top = 415
    Width = 777
  end
  inherited sbOk: TSpeedButton
    Left = 670
    Top = 431
  end
  inherited sbCancel: TSpeedButton
    Left = 726
    Top = 431
  end
  inherited Gradient1: TGradient
    Width = 783
  end
  inherited Gradient2: TGradient
    Width = 783
  end
  inherited dxNavBar1: TdxNavBar
    Top = 53
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
      inherited Label3: TLabel
        Left = 6
        Width = 50
        Caption = 'Concepto:'
      end
    end
  end
  inherited dxDBGrid1: TdxDBGrid
    Top = 53
    Width = 559
    KeyField = 'idDocumento'
    Filter.Criteria = {00000000}
    object dxDBGrid1idDocumento: TdxDBGridMaskColumn
      Caption = 'Numero'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idDocumento'
    end
    object dxDBGrid1Referencia: TdxDBGridMaskColumn
      Width = 105
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
    object dxDBGrid1Fecha: TdxDBGridDateColumn
      Sorted = csUp
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object dxDBGrid1TipoTransaccion: TdxDBGridMaskColumn
      Caption = 'Tipo'
      Width = 88
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TipoTransaccion'
    end
    object dxDBGrid1DebCre: TdxDBGridMaskColumn
      Visible = False
      Width = 23
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DebCre'
    end
    object dxDBGrid1Column7: TdxDBGridColumn
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Concepto'
    end
    object dxDBGrid1Nombre: TdxDBGridMaskColumn
      Caption = 'Cuenta Bco.'
      Width = 184
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nombre'
    end
  end
  inherited ds: TDataSource
    Top = 227
  end
  inherited rsRecs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select '#9'h.idDocumento, '#13#10'h.Referencia, '#13#10'h.Fecha, '#13#10#9'tt.descripc' +
      'ion as TipoTransaccion,'#13#10#9'tt.DebCre,'#13#10#9'c.Nombre,'#13#10'              ' +
      '  h.Concepto , h.GUIDDocumento '#13#10'from bcoDocumentos h join bcoTi' +
      'posTrans tt '#13#10'  on h.idTrans = tt.idTrans'#13#10'  join cxpBancos c on' +
      ' h.idCuentaBanco = c.idCuentaBanco'
    Top = 127
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
    object rsRecsTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 100
    end
    object rsRecsDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsRecsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsRecsConcepto: TStringField
      FieldName = 'Concepto'
      Size = 500
    end
    object rsRecsGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
  end
end

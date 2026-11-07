inherited BuscarSolicitudes: TBuscarSolicitudes
  Caption = 'Buscar solicitudes'
  PixelsPerInch = 96
  TextHeight = 13
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
    KeyField = 'idSolicitud'
    Filter.Criteria = {00000000}
    object dxDBGrid1idSolicitud: TdxDBGridMaskColumn
      Caption = 'ID'
      Width = 52
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idSolicitud'
    end
    object dxDBGrid1Numero: TdxDBGridMaskColumn
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Numero'
    end
    object dxDBGrid1Nombre: TdxDBGridMaskColumn
      Width = 228
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nombre'
    end
    object dxDBGrid1Fecha: TdxDBGridDateColumn
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object dxDBGrid1Total: TdxDBGridCurrencyColumn
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Total'
      Nullable = False
    end
    object dxDBGrid1RNC: TdxDBGridMaskColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RNC'
    end
    object dxDBGrid1Telefono1: TdxDBGridMaskColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Telefono1'
    end
  end
  inherited rsRecs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select s.idSolicitud, s.Numero, s.Fecha, s.Total, e.Nombre, e.RN' +
      'C, e.Telefono1'#13#10'from cxpSolicitudes s join cxpSuplidores e '#13#10'on ' +
      's.idSuplidor = e.idSuplidor'#13#10
    object rsRecsidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
      ReadOnly = True
    end
    object rsRecsNumero: TIntegerField
      FieldName = 'Numero'
    end
    object rsRecsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRecsTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsRecsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsRecsRNC: TStringField
      FieldName = 'RNC'
    end
    object rsRecsTelefono1: TStringField
      FieldName = 'Telefono1'
    end
  end
end

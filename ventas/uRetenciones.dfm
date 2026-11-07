inherited Retenciones: TRetenciones
  Left = 617
  Top = 284
  Caption = 'Mantenimiento de Retenciones'
  ClientHeight = 331
  ClientWidth = 514
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 514
    Height = 297
    ControlType.Strings = (
      'PorDefecto;CheckBox;True;False')
    Selected.Strings = (
      'Descripcion'#9'44'#9'Descripcion'#9#9
      'idCuenta'#9'16'#9'idCuenta'#9#9
      'Porcentaje'#9'8'#9'%'#9#9
      'PorDefecto'#9'9'#9'Por defecto'#9#9)
    OnDblClick = wwDBGrid1DblClick
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 514
    inherited banterior: TwwNavButton
      Width = 65
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 65
      Width = 65
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 130
      Width = 64
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 194
      Width = 64
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 258
      Width = 64
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 322
      Width = 64
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 386
      Width = 64
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 450
      Width = 64
    end
  end
  inherited DS: TwwDataSource
    DataSet = rsRetenciones
  end
  object rsRetenciones: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsRetencionesNewRecord
    CommandText = 'select * from cxpTiposRetencion'
    Parameters = <>
    Left = 180
    Top = 96
    object rsRetencionesDescripcion: TStringField
      DisplayWidth = 44
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsRetencionesidCuenta: TStringField
      DisplayWidth = 16
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsRetencionesPorcentaje: TBCDField
      DisplayLabel = '%'
      DisplayWidth = 8
      FieldName = 'Porcentaje'
      Precision = 18
      Size = 8
    end
    object rsRetencionesPorDefecto: TBooleanField
      DisplayLabel = 'Por defecto'
      DisplayWidth = 9
      FieldName = 'PorDefecto'
    end
    object rsRetencionesTipoRetencion: TAutoIncField
      FieldName = 'TipoRetencion'
      ReadOnly = True
      Visible = False
    end
    object rsRetencionesTipoEntidad: TIntegerField
      FieldName = 'TipoEntidad'
      Visible = False
    end
    object rsRetencionesUidTiposRetencion: TGuidField
      FieldName = 'UidTiposRetencion'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
end

inherited ReporteConfiguracion: TReporteConfiguracion
  Left = 199
  Top = 197
  Caption = 'Configuraci'#243'n de Reportes'
  ClientHeight = 393
  ClientWidth = 889
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 889
    Height = 359
    Selected.Strings = (
      'Reporte'#9'20'#9'Reporte'#9#9
      'NomColum01'#9'10'#9'NomColum01'#9#9
      'NomColum02'#9'10'#9'NomColum02'#9'F'#9
      'NomColum03'#9'10'#9'NomColum03'#9#9
      'NomColum04'#9'10'#9'NomColum04'#9#9
      'NomColum05'#9'10'#9'NomColum05'#9#9
      'NomColum06'#9'10'#9'NomColum06'#9#9
      'NomColum07'#9'10'#9'NomColum07'#9#9
      'NomColum08'#9'10'#9'NomColum08'#9#9
      'NomColum09'#9'10'#9'NomColum09'#9#9
      'NomColum10'#9'10'#9'NomColum10'#9#9
      'NomColum11'#9'10'#9'NomColum11'#9#9
      'NomColum12'#9'10'#9'NomColum12'#9#9
      'NomColum13'#9'10'#9'NomColum13'#9#9
      'NomColum14'#9'10'#9'NomColum14'#9#9
      'NomColum15'#9'10'#9'NomColum15'#9#9
      'NomColum16'#9'10'#9'NomColum16'#9#9
      'NomColum17'#9'10'#9'NomColum17'#9#9
      'NomColum18'#9'10'#9'NomColum18'#9#9
      'TransColum01'#9'10'#9'TransColum01'#9#9
      'TransColum02'#9'10'#9'TransColum02'#9#9
      'TransColum03'#9'10'#9'TransColum03'#9#9
      'TransColum04'#9'10'#9'TransColum04'#9#9
      'TransColum05'#9'10'#9'TransColum05'#9#9
      'TransColum06'#9'10'#9'TransColum06'#9#9
      'TransColum07'#9'10'#9'TransColum07'#9#9
      'TransColum08'#9'10'#9'TransColum08'#9#9
      'TransColum09'#9'10'#9'TransColum09'#9#9
      'TransColum10'#9'10'#9'TransColum10'#9#9
      'TransColum11'#9'10'#9'TransColum11'#9#9
      'TransColum12'#9'10'#9'TransColum12'#9#9
      'TransColum13'#9'10'#9'TransColum13'#9#9
      'TransColum14'#9'10'#9'TransColum14'#9#9
      'TransColum15'#9'10'#9'TransColum15'#9#9
      'TransColum16'#9'10'#9'TransColum16'#9#9
      'TransColum17'#9'10'#9'TransColum17'#9#9
      'TransColum18'#9'10'#9'TransColum18'#9#9)
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 889
    inherited banterior: TwwNavButton
      Width = 112
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 112
      Width = 111
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 223
      Width = 111
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 334
      Width = 111
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 445
      Width = 111
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 556
      Width = 111
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 667
      Width = 111
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 778
      Width = 111
    end
  end
  inherited DS: TwwDataSource
    DataSet = rsReportes
  end
  object rsReportes: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * From nomReporte'
    Parameters = <>
    Left = 530
    Top = 136
    object rsReportesReporte: TStringField
      DisplayWidth = 20
      FieldName = 'Reporte'
      Size = 100
    end
    object rsReportesNomColum01: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum01'
      Size = 100
    end
    object rsReportesNomColum02: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum02'
      Size = 100
    end
    object rsReportesNomColum03: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum03'
      Size = 100
    end
    object rsReportesNomColum04: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum04'
      Size = 100
    end
    object rsReportesNomColum05: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum05'
      Size = 100
    end
    object rsReportesNomColum06: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum06'
      Size = 100
    end
    object rsReportesNomColum07: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum07'
      Size = 100
    end
    object rsReportesNomColum08: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum08'
      Size = 100
    end
    object rsReportesNomColum09: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum09'
      Size = 100
    end
    object rsReportesNomColum10: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum10'
      Size = 100
    end
    object rsReportesNomColum11: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum11'
      Size = 100
    end
    object rsReportesNomColum12: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum12'
      Size = 100
    end
    object rsReportesNomColum13: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum13'
      Size = 100
    end
    object rsReportesNomColum14: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum14'
      Size = 100
    end
    object rsReportesNomColum15: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum15'
      Size = 100
    end
    object rsReportesNomColum16: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum16'
      Size = 100
    end
    object rsReportesNomColum17: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum17'
      Size = 100
    end
    object rsReportesNomColum18: TStringField
      DisplayWidth = 10
      FieldName = 'NomColum18'
      Size = 100
    end
    object rsReportesTransColum01: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum01'
      Size = 100
    end
    object rsReportesTransColum02: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum02'
      Size = 100
    end
    object rsReportesTransColum03: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum03'
      Size = 100
    end
    object rsReportesTransColum04: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum04'
      Size = 100
    end
    object rsReportesTransColum05: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum05'
      Size = 100
    end
    object rsReportesTransColum06: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum06'
      Size = 100
    end
    object rsReportesTransColum07: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum07'
      Size = 100
    end
    object rsReportesTransColum08: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum08'
      Size = 100
    end
    object rsReportesTransColum09: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum09'
      Size = 100
    end
    object rsReportesTransColum10: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum10'
      Size = 100
    end
    object rsReportesTransColum11: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum11'
      Size = 100
    end
    object rsReportesTransColum12: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum12'
      Size = 100
    end
    object rsReportesTransColum13: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum13'
      Size = 100
    end
    object rsReportesTransColum14: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum14'
      Size = 100
    end
    object rsReportesTransColum15: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum15'
      Size = 100
    end
    object rsReportesTransColum16: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum16'
      Size = 100
    end
    object rsReportesTransColum17: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum17'
      Size = 100
    end
    object rsReportesTransColum18: TStringField
      DisplayWidth = 10
      FieldName = 'TransColum18'
      Size = 100
    end
    object rsReportesIdReporte: TGuidField
      DisplayWidth = 38
      FieldName = 'IdReporte'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
end

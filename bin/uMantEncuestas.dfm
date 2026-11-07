inherited MantEncuestas: TMantEncuestas
  Left = 391
  Top = 181
  Caption = 'Mantenimiento de Encuestas'
  ClientHeight = 486
  ClientWidth = 692
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Inventarios: TPageControl
    Left = 8
    Top = 8
    Width = 673
    Height = 447
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Tipo de Encuestas'
      DesignSize = (
        665
        419)
      object wwDBGrid1: TwwDBGrid
        Left = 8
        Top = 8
        Width = 651
        Height = 115
        DisableThemes = False
        Selected.Strings = (
          'idEncuesta'#9'16'#9'idEncuesta'
          'Encuesta'#9'85'#9'Encuesta'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight]
        DataSource = dsInventario
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object wwDBGrid2: TwwDBGrid
        Left = 8
        Top = 128
        Width = 654
        Height = 125
        DisableThemes = False
        Selected.Strings = (
          'idPreguntas'#9'16'#9'idPreguntas'#9#9
          'Preguntas'#9'85'#9'Preguntas'#9'F'#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight]
        DataSource = dsLinea
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object wwDBGrid3: TwwDBGrid
        Left = 8
        Top = 260
        Width = 654
        Height = 149
        DisableThemes = False
        Selected.Strings = (
          'idRespuestas'#9'16'#9'idRespuestas'#9#9
          'Respuestas'#9'85'#9'Respuestas'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsrupo
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 610
    Top = 458
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object Inventario: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from EncuestaTipo'#13#10'order by idEncuesta'
    Parameters = <>
    Left = 418
    Top = 126
    object InventarioidEncuesta: TStringField
      DisplayWidth = 16
      FieldName = 'idEncuesta'
      Size = 16
    end
    object InventarioEncuesta: TStringField
      DisplayWidth = 85
      FieldName = 'Encuesta'
      Size = 500
    end
  end
  object Linea: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select * from EncuestaPreguntas where idEncuesta = :idEncuesta'#13#10 +
      'order by idPreguntas '
    DataSource = dsInventario
    IndexFieldNames = 'idEncuesta'
    MasterFields = 'idEncuesta'
    Parameters = <
      item
        Name = 'idEncuesta'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '1'
      end>
    Left = 360
    Top = 128
    object LineaidPreguntas: TStringField
      DisplayWidth = 16
      FieldName = 'idPreguntas'
      Size = 16
    end
    object LineaPreguntas: TStringField
      DisplayWidth = 85
      FieldName = 'Preguntas'
      Size = 1000
    end
    object LineaidEncuesta: TStringField
      FieldName = 'idEncuesta'
      Visible = False
      Size = 16
    end
  end
  object Grupo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select * from EncuestaRespuestas where idPreguntas = :idPregunta' +
      's'#13#10'order by idRespuestas'
    DataSource = dsLinea
    MasterFields = 'idPreguntas'
    Parameters = <
      item
        Name = 'idPreguntas'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '1.1'
      end>
    Left = 302
    Top = 130
    object GrupoidRespuestas: TStringField
      DisplayWidth = 16
      FieldName = 'idRespuestas'
      Size = 16
    end
    object GrupoRespuestas: TStringField
      DisplayWidth = 85
      FieldName = 'Respuestas'
      Size = 1000
    end
    object GrupoidPreguntas: TStringField
      FieldName = 'idPreguntas'
      Visible = False
      Size = 16
    end
  end
  object dsInventario: TDataSource
    DataSet = Inventario
    Left = 416
    Top = 180
  end
  object dsLinea: TDataSource
    DataSet = Linea
    Left = 360
    Top = 184
  end
  object dsrupo: TDataSource
    DataSet = Grupo
    Left = 302
    Top = 186
  end
  object LineaAll: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from linea order by linea'
    MasterFields = 'idInventario'
    Parameters = <>
    Left = 242
    Top = 132
    object StringField1: TStringField
      DisplayLabel = 'Linea'
      DisplayWidth = 16
      FieldName = 'idLinea'
      Size = 16
    end
    object StringField2: TStringField
      DisplayWidth = 42
      FieldName = 'Linea'
      Size = 50
    end
    object StringField3: TStringField
      DisplayLabel = 'Inventario'
      DisplayWidth = 10
      FieldName = 'idInventario'
      Size = 16
    end
    object GuidField1: TGuidField
      DisplayWidth = 38
      FieldName = 'UidLinea'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
  object dsLineaAll: TDataSource
    DataSet = LineaAll
    Left = 244
    Top = 186
  end
end

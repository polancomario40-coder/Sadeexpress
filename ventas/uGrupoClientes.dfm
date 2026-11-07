inherited GrupoCliente: TGrupoCliente
  Left = 406
  Top = 249
  Caption = 'Grupo de Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Selected.Strings = (
      'IdGrupo'#9'17'#9'IdGrupo'
      'Grupo'#9'44'#9'Grupo')
    Font.Charset = ANSI_CHARSET
    Font.Name = 'Tahoma'
    ParentFont = False
  end
  inherited DS: TwwDataSource
    DataSet = qryGrupoCliente
  end
  object qryGrupoCliente: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  svGrupo')
    Left = 174
    Top = 86
    object qryGrupoClienteIdGrupo: TStringField
      DisplayWidth = 17
      FieldName = 'IdGrupo'
      Size = 10
    end
    object qryGrupoClienteGrupo: TStringField
      DisplayWidth = 44
      FieldName = 'Grupo'
      Size = 50
    end
  end
end

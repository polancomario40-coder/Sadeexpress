inherited ClienteGrupo: TClienteGrupo
  Caption = 'Categor'#237'a de Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    ControlType.Strings = (
      'Activo;CheckBox;True;False')
    Selected.Strings = (
      'ClienteGrupo'#9'52'#9'Grupo de Cliente'#9#9
      'Activo'#9'8'#9'Activo'#9#9)
    Font.Charset = ANSI_CHARSET
    Font.Name = 'Tahoma'
    ParentFont = False
  end
  inherited DS: TwwDataSource
    DataSet = qryClienteGrupo
  end
  object qryClienteGrupo: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  ClienteGrupo')
    Left = 186
    Top = 178
  end
end

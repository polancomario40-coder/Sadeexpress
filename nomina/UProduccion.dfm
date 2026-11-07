inherited Produccion: TProduccion
  Left = 259
  Top = 178
  Caption = 'Produccion'
  ClientHeight = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 425
  end
  inherited Grid: TwwDBGrid
    Height = 406
    Selected.Strings = (
      'EmpleadoID'#9'8'#9'Empl'#9#9
      'TipoProduccionID'#9'7'#9'Tipo'#9#9
      'Produccion'#9'12'#9'Produccion'#9#9
      'LEmpleado'#9'33'#9'Nombre'#9'T'
      'LTipoProduccion'#9'15'#9'Tipo Produccion'#9'T')
    DataSource = DS
  end
  inherited DBNavigator1: TDBNavigator
    Top = 438
    Hints.Strings = ()
  end
  inherited DS: TwwDataSource
    DataSet = dmNom.Produccion
    Left = 354
    Top = 336
  end
  inherited BuscarEmp: TwwSearchDialog
    Left = 354
    Top = 288
  end
  inherited Filtro: TwwFilterDialog
    Left = 352
    Top = 240
  end
end

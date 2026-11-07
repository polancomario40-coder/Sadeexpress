inherited ChkNomina: TChkNomina
  Left = 293
  Top = 283
  Caption = 'Cheques de Nomina'
  Color = clWindow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 77
    inherited gbNums: TGroupBox
      Height = 71
      inherited rbn: TRadioButton
        Top = 44
      end
      inherited edfn: TEdit
        Top = 41
      end
    end
  end
  inherited gbimp: TGroupBox
    inherited Imp: TButton
      OnClick = ImpClick
    end
  end
  inherited wwDBGrid1: TwwDBGrid
    Top = 79
    Width = 596
    Height = 199
    Selected.Strings = (
      'Numero'#9'6'#9'Numero'#9'T'
      'EmpleadoID'#9'6'#9'Empl'#9'T'
      'LEmpleado'#9'15'#9'Empleado'#9'T'
      'Neto'#9'11'#9'Neto'#9'T'
      'Cheque'#9'10'#9'Cheque'#9#9
      'Notas'#9'41'#9'Notas'#9#9)
  end
end

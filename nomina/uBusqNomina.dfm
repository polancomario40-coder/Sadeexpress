inherited BusqNomina: TBusqNomina
  Left = 228
  Top = 236
  Caption = 'Nominas'
  ClientHeight = 423
  ClientWidth = 581
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Top = 41
  end
  inherited grid: TDBGrid
    Left = 0
    Top = 64
    Width = 574
    Height = 356
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    ParentFont = False
    Columns = <
      item
        Expanded = False
        FieldName = 'NominaID'
        Title.Caption = 'Nomina'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoNominaID'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoEmpleadoID'
        Title.Caption = 'Empleado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hasta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumeroNomina'
        Title.Caption = 'Numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MesCalendario'
        Title.Caption = 'Mes'
        Visible = True
      end>
  end
  inherited BitBtn1: TBitBtn
    Left = 415
    Top = 35
  end
  inherited BitBtn2: TBitBtn
    Left = 499
    Top = 35
  end
  inherited Panel1: TPanel [4]
    Width = 573
    Height = 32
    Caption = ''
  end
  inherited edtBuscar: TEdit [5]
    Left = 52
    Top = 39
    Width = 357
  end
  inherited qryBasico: TADOQuery
    Active = True
    SQL.Strings = (
      
        'SELECT     NominaID, TipoNominaID, TipoEmpleadoID, Fecha, Desde,' +
        ' Hasta, NumeroNomina, MesCalendario'
      'FROM         Nomina')
    object qryBasicoNominaID: TIntegerField
      FieldName = 'NominaID'
      ReadOnly = True
    end
    object qryBasicoTipoNominaID: TIntegerField
      FieldName = 'TipoNominaID'
    end
    object qryBasicoTipoEmpleadoID: TIntegerField
      FieldName = 'TipoEmpleadoID'
    end
    object qryBasicoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qryBasicoDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object qryBasicoHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object qryBasicoNumeroNomina: TSmallintField
      FieldName = 'NumeroNomina'
    end
    object qryBasicoMesCalendario: TSmallintField
      FieldName = 'MesCalendario'
    end
  end
end

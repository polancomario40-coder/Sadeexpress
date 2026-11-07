inherited BusqCxCEmp: TBusqCxCEmp
  Left = 227
  Top = 187
  Caption = 'Cuentas x cobrar Empleados'
  ClientHeight = 423
  ClientWidth = 738
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Top = 41
  end
  inherited grid: TDBGrid
    Left = 0
    Top = 64
    Width = 737
    Height = 356
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    ParentFont = False
    Columns = <
      item
        Expanded = False
        FieldName = 'CxcEmpID'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CxcEmp'
        Title.Caption = 'Descripcion'
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Balance'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmpleadoID'
        Title.Caption = 'Empleado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Empleado'
        Title.Caption = 'Nombre'
        Width = 215
        Visible = True
      end>
  end
  inherited BitBtn1: TBitBtn
    Left = 575
    Top = 35
  end
  inherited BitBtn2: TBitBtn
    Left = 659
    Top = 35
  end
  inherited Panel1: TPanel [4]
    Width = 736
    Height = 32
    Caption = ''
    object chkactivo: TCheckBox
      Left = 664
      Top = 8
      Width = 65
      Height = 17
      Caption = 'Activo'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chkactivoClick
    end
  end
  inherited edtBuscar: TEdit [5]
    Left = 52
    Top = 39
    Width = 517
  end
  inherited qryBasico: TADOQuery
    SQL.Strings = (
      'Select * From (SELECT '
      '  c.CxcEmpID, '
      '  c.CxcEmp, '
      '  c.Total,'
      '  c.Balance,'
      '  c.EmpleadoID,'
      '  E.Apellido + '#39', '#39' + E.Nombre as Empleado,'
      '  C.Activo'
      'FROM '
      '  CxCEmp c JOIN Empleado E ON c.EmpleadoId = E.EmpleadoID) x'
      'Where'
      '  x.Activo = 1')
    object qryBasicoCxcEmpID: TIntegerField
      FieldName = 'CxcEmpID'
    end
    object qryBasicoCxcEmp: TStringField
      FieldName = 'CxcEmp'
      Size = 100
    end
    object qryBasicoTotal: TBCDField
      FieldName = 'Total'
      Precision = 18
    end
    object qryBasicoBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
    end
    object qryBasicoEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object qryBasicoEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
end

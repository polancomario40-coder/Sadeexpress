inherited BusqEmpleado: TBusqEmpleado
  Left = 164
  Top = 195
  Caption = 'Empleados'
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
        FieldName = 'Apellido'
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Empleadoid'
        Title.Caption = 'Codigo'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cedula'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'esVendedor'
        Title.Caption = 'Vend'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmpleadoRoll'
        Title.Caption = 'Roll'
        Width = 144
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
  inherited RS: TADODataSet
    CommandText = 'nomEmpleadoFind;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Activo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    object RSEmpleadoid: TIntegerField
      FieldName = 'Empleadoid'
    end
    object RSApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object RSNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object RSCedula: TStringField
      FieldName = 'Cedula'
    end
    object RSesVendedor: TBooleanField
      FieldName = 'esVendedor'
    end
    object RSidEmpleadoRoll: TStringField
      FieldName = 'idEmpleadoRoll'
      Size = 16
    end
  end
end

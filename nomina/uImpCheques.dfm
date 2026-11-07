object ImpCheques: TImpCheques
  Left = 444
  Top = 264
  Width = 370
  Height = 242
  Caption = 'Imprimir cheques de nomina'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 58
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel
    Left = 197
    Top = 58
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label3: TLabel
    Left = 9
    Top = 84
    Width = 27
    Height = 13
    Caption = 'Dpto:'
  end
  object seDesde: TcxSpinEdit
    Left = 45
    Top = 54
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object seHasta: TcxSpinEdit
    Left = 231
    Top = 54
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Value = 99999999
  end
  object cxButton1: TcxButton
    Left = 12
    Top = 116
    Width = 119
    Height = 35
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 240
    Top = 116
    Width = 119
    Height = 35
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxDBLabel1: TcxDBLabel
    Left = 6
    Top = 6
    Width = 61
    Height = 21
    DataBinding.DataField = 'NominaID'
    DataBinding.DataSource = ds
  end
  object cxDBLabel2: TcxDBLabel
    Left = 114
    Top = 6
    Width = 61
    Height = 21
    DataBinding.DataField = 'TipoNomina'
    DataBinding.DataSource = ds
  end
  object cxDBLabel3: TcxDBLabel
    Left = 6
    Top = 26
    Width = 61
    Height = 21
    DataBinding.DataField = 'Desde'
    DataBinding.DataSource = ds
  end
  object cxDBLabel4: TcxDBLabel
    Left = 114
    Top = 26
    Width = 61
    Height = 21
    DataBinding.DataField = 'Hasta'
    DataBinding.DataSource = ds
  end
  object cxButton3: TcxButton
    Left = 127
    Top = 162
    Width = 119
    Height = 35
    Caption = 'Cancelar cheques'
    TabOrder = 8
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object luDpto: TcxLookupComboBox
    Left = 44
    Top = 80
    Width = 307
    Height = 21
    Properties.KeyFieldNames = 'DepartamentoId'
    Properties.ListColumns = <
      item
        FieldName = 'Departamento'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsDpto
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object ds: TDataSource
    DataSet = dmNom.Nominas
    Left = 178
    Top = 106
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'nomListaChequesDpto'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idNomina'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Dpto'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 208
    Top = 8
    object rsCheque: TIntegerField
      FieldName = 'Cheque'
    end
    object rsNumero: TIntegerField
      FieldName = 'Numero'
      ReadOnly = True
    end
    object rsEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 100
    end
  end
  object cCancelar: TADOCommand
    CommandText = 'cxpCancelarCheque;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCk'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Conc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end>
    Left = 36
    Top = 162
  end
  object rsDpto: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select DepartamentoId, Departamento'#13#10' from departamento'#13#10'union'#13#10 +
      'select 0, '#39'(todos)'#39' '#13#10'order by 2 '
    Parameters = <>
    Left = 274
    Top = 10
    object rsDptoDepartamentoId: TIntegerField
      FieldName = 'DepartamentoId'
    end
    object rsDptoDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
  end
  object dsDpto: TDataSource
    DataSet = rsDpto
    Left = 210
    Top = 90
  end
end

inherited DGT4: TDGT4
  Left = 377
  Top = 153
  Caption = 'DGT4'
  ClientHeight = 505
  ClientWidth = 964
  Color = clWhite
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 10
    Top = 60
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Shape1: TShape [1]
    Left = 0
    Top = 0
    Width = 964
    Height = 43
    Align = alTop
    Brush.Color = 9516803
    Pen.Color = 9516803
  end
  object Label2: TLabel [2]
    Left = 12
    Top = 10
    Width = 49
    Height = 24
    Caption = 'DGT4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object deHasta: TcxDateEdit [3]
    Left = 45
    Top = 56
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton [4]
    Left = 176
    Top = 50
    Width = 113
    Height = 33
    Caption = 'Mostrar'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [5]
    Left = 8
    Top = 88
    Width = 949
    Height = 367
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn
        Caption = 'Empleado #'
        DataBinding.FieldName = 'EmpleadoId'
        Width = 79
      end
      object cxGrid1DBTableView1TipoDocumento: TcxGridDBColumn
        Caption = 'Tipo ID'
        DataBinding.FieldName = 'TipoDocumento'
        Width = 56
      end
      object cxGrid1DBTableView1NumeroIdent: TcxGridDBColumn
        Caption = 'Numero ID'
        DataBinding.FieldName = 'NumeroIdent'
        Width = 75
      end
      object cxGrid1DBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        Width = 117
      end
      object cxGrid1DBTableView1Apellido: TcxGridDBColumn
        Caption = 'Primer apellido'
        DataBinding.FieldName = 'Apellido'
        Width = 113
      end
      object cxGrid1DBTableView1Nacimiento: TcxGridDBColumn
        Caption = 'Fecha Nac.'
        DataBinding.FieldName = 'Nacimiento'
        Width = 79
      end
      object cxGrid1DBTableView1Sexo: TcxGridDBColumn
        DataBinding.FieldName = 'Sexo'
        Width = 50
      end
      object cxGrid1DBTableView1idNacionalidad: TcxGridDBColumn
        Caption = 'Nacionalidad'
        DataBinding.FieldName = 'idNacionalidad'
        Width = 65
      end
      object cxGrid1DBTableView1NumeroSS: TcxGridDBColumn
        DataBinding.FieldName = 'NumeroSS'
        Visible = False
      end
      object cxGrid1DBTableView1SueldoMes: TcxGridDBColumn
        Caption = 'Salario'
        DataBinding.FieldName = 'SueldoMes'
        Width = 98
      end
      object cxGrid1DBTableView1Inicio: TcxGridDBColumn
        Caption = 'Entrada'
        DataBinding.FieldName = 'Inicio'
        Width = 81
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        Caption = 'Salida'
        DataBinding.FieldName = 'Fin'
        Width = 100
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        Caption = 'Inicio Vac'
        DataBinding.FieldName = 'VacInicio'
        Width = 89
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        Caption = 'Fin Vac'
        DataBinding.FieldName = 'VacFin'
        Width = 84
      end
      object cxGrid1DBTableView1idOcupacion: TcxGridDBColumn
        Caption = 'Ocupacion'
        DataBinding.FieldName = 'idOcupacion'
        Width = 78
      end
      object cxGrid1DBTableView1EmpleadoRoll: TcxGridDBColumn
        Caption = 'Descr. Ocupacion'
        DataBinding.FieldName = 'EmpleadoRoll'
        Width = 212
      end
      object cxGrid1DBTableView1Horario: TcxGridDBColumn
        DataBinding.FieldName = 'Horario'
        Width = 67
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton [6]
    Left = 844
    Top = 462
    Width = 113
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [7]
    Left = 6
    Top = 462
    Width = 113
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Guardar archivo'
    TabOrder = 4
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [8]
    Left = 132
    Top = 462
    Width = 113
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Guardar Excel'
    TabOrder = 5
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsCalcFields
    CommandText = 'nomDGT42015;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end>
    Left = 126
    Top = 100
    object rsEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object rsTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      ReadOnly = True
      Size = 3
    end
    object rsNumeroIdent: TStringField
      FieldName = 'NumeroIdent'
      ReadOnly = True
      Size = 8000
    end
    object rsNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object rsApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object rsNacimiento: TDateTimeField
      FieldName = 'Nacimiento'
    end
    object rsSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object rsidNacionalidad: TStringField
      FieldName = 'idNacionalidad'
      Size = 16
    end
    object rsNumeroSS: TStringField
      FieldName = 'NumeroSS'
      ReadOnly = True
      Size = 8000
    end
    object rsSueldoMes: TBCDField
      FieldName = 'SueldoMes'
      Precision = 18
      Size = 2
    end
    object rsEmpleadoRoll: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 50
    end
    object rsidOcupacion: TStringField
      FieldName = 'idOcupacion'
      Size = 16
    end
    object rsHorario: TStringField
      FieldName = 'Horario'
    end
    object rsObservacion: TStringField
      FieldName = 'Observacion'
      ReadOnly = True
      Size = 1
    end
    object rsInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object rsFin: TDateTimeField
      FieldName = 'Fin'
    end
    object rsTipoNovedad: TStringField
      FieldName = 'TipoNovedad'
      ReadOnly = True
      Size = 2
    end
    object rsFechaNovedad: TDateTimeField
      FieldName = 'FechaNovedad'
      ReadOnly = True
    end
    object rsVacInicio: TDateTimeField
      FieldName = 'VacInicio'
      ReadOnly = True
    end
    object rsVacFin: TDateTimeField
      FieldName = 'VacFin'
      ReadOnly = True
    end
  end
  object sd: TSaveDialog
    Left = 104
    Top = 184
  end
end

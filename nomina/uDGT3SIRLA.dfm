inherited DGT3SIRLA: TDGT3SIRLA
  Left = 419
  Top = 142
  Caption = 'DGT3 del SIRLA'
  ClientHeight = 452
  ClientWidth = 905
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 10
    Top = 18
    Width = 23
    Height = 13
    Caption = 'A'#241'o:'
  end
  object sePeriodo: TcxSpinEdit [1]
    Left = 36
    Top = 14
    Width = 71
    Height = 21
    TabStop = False
    Properties.ImmediatePost = True
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton [2]
    Left = 112
    Top = 8
    Width = 141
    Height = 33
    Caption = 'Cargar datos'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [3]
    Left = 8
    Top = 48
    Width = 891
    Height = 400
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'EmpleadoId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1TipoDocumento: TcxGridDBColumn
        Caption = 'Tipo Documento'
        DataBinding.FieldName = 'TipoDocumento'
        Width = 80
      end
      object cxGrid1DBTableView1NumeroIdent: TcxGridDBColumn
        Caption = 'Numero Identificacion'
        DataBinding.FieldName = 'NumeroIdent'
      end
      object cxGrid1DBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
      end
      object cxGrid1DBTableView1Apellido: TcxGridDBColumn
        DataBinding.FieldName = 'Apellido'
      end
      object cxGrid1DBTableView1Nacimiento: TcxGridDBColumn
        Caption = 'Fecha Nacimiento'
        DataBinding.FieldName = 'Nacimiento'
        Width = 80
      end
      object cxGrid1DBTableView1Sexo: TcxGridDBColumn
        DataBinding.FieldName = 'Sexo'
        Width = 52
      end
      object cxGrid1DBTableView1idNacionalidad: TcxGridDBColumn
        Caption = 'Id Nacionalidad'
        DataBinding.FieldName = 'idNacionalidad'
        Width = 83
      end
      object cxGrid1DBTableView1NumeroSS: TcxGridDBColumn
        Caption = 'Numero SS'
        DataBinding.FieldName = 'NumeroSS'
        Width = 88
      end
      object cxGrid1DBTableView1SueldoMes: TcxGridDBColumn
        Caption = 'Sueldo Mensual'
        DataBinding.FieldName = 'SueldoMes'
        Width = 87
      end
      object cxGrid1DBTableView1Inicio: TcxGridDBColumn
        Caption = 'Fecha Inicio'
        DataBinding.FieldName = 'Inicio'
        Width = 77
      end
      object cxGrid1DBTableView1EmpleadoRoll: TcxGridDBColumn
        Caption = 'Ocupacion'
        DataBinding.FieldName = 'EmpleadoRoll'
        Width = 183
      end
      object cxGrid1DBTableView1idOcupacion: TcxGridDBColumn
        Caption = 'Id Ocupacion'
        DataBinding.FieldName = 'idOcupacion'
        Width = 84
      end
      object cxGrid1DBTableView1SalidaVac: TcxGridDBColumn
        Caption = 'Salida Vacaciones'
        DataBinding.FieldName = 'InicioVacs'
        Width = 89
      end
      object cxGrid1DBTableView1EntradaVac: TcxGridDBColumn
        Caption = 'Entrada Vacaciones'
        DataBinding.FieldName = 'FinVacs'
        Width = 79
      end
      object cxGrid1DBTableView1Horario: TcxGridDBColumn
        Caption = 'Turno'
        DataBinding.FieldName = 'Horario'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton [4]
    Left = 264
    Top = 8
    Width = 141
    Height = 33
    Caption = 'Excel'
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [5]
    Left = 418
    Top = 8
    Width = 141
    Height = 33
    Caption = 'Generar archivo'
    TabOrder = 4
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [6]
    Left = 758
    Top = 8
    Width = 141
    Height = 33
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 5
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = RS
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    OnCalcFields = RSCalcFields
    CommandText = 'nom_SIRLA_DGT3'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 352
    Top = 200
    object RSEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object RSTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      ReadOnly = True
      Size = 3
    end
    object RSNumeroIdent: TStringField
      FieldName = 'NumeroIdent'
    end
    object RSNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object RSApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object RSNacimiento: TDateTimeField
      FieldName = 'Nacimiento'
    end
    object RSSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object RSidNacionalidad: TStringField
      FieldName = 'idNacionalidad'
      Size = 16
    end
    object RSNumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
    object RSSueldoMes: TBCDField
      FieldName = 'SueldoMes'
      Precision = 18
      Size = 2
    end
    object RSInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object RSEmpleadoRoll: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 50
    end
    object RSidOcupacion: TStringField
      FieldName = 'idOcupacion'
      Size = 16
    end
    object RSHorario: TStringField
      FieldName = 'Horario'
    end
    object RSInicioVacs: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'InicioVacs'
      Calculated = True
    end
    object RSFinVacs: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'FinVacs'
      Calculated = True
    end
  end
  object SaveDlg: TSaveDialog
    Left = 98
    Top = 108
  end
end

inherited Empleado: TEmpleado
  Left = 498
  Top = 225
  Caption = 'Empleados'
  ClientHeight = 477
  ClientWidth = 637
  Color = 15922418
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 22
    Top = 55
    Width = 49
    Height = 16
    Caption = 'N'#250'mero'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label28: TLabel [1]
    Left = 306
    Top = 55
    Width = 60
    Height = 13
    Caption = 'Cod Externo'
  end
  inherited Bevel1: TBevel
    Width = 637
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 637
    inherited nuevo: TwwNavButton
      Width = 64
    end
    inherited editar: TwwNavButton
      Left = 64
      Width = 64
    end
    inherited guardar: TwwNavButton
      Left = 128
      Width = 64
    end
    inherited cancelar: TwwNavButton
      Left = 192
      Width = 64
    end
    inherited borrar: TwwNavButton
      Left = 256
      Width = 64
    end
    inherited BLocalizarx: TwwNavButton
      Left = 320
      Width = 64
    end
    object bPrint: TwwNavButton [6]
      Left = 384
      Top = 0
      Width = 64
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsCustom
    end
    object wwDBNavigator1Button: TwwNavButton [7]
      Left = 448
      Top = 0
      Width = 63
      Height = 42
      Hint = 
        'Imprimir el historico de las acciones de personal del empleado s' +
        'eleccionado'
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      Caption = 'Imprimir Acc.'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = aImprimirAccionesExecute
      Index = 7
      Style = nbsCustom
    end
    object wwDBNavigator1Button1: TwwNavButton [8]
      Left = 511
      Top = 0
      Width = 63
      Height = 42
      Action = ResumenTrans
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      Caption = 'Res. Trans'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 574
      Width = 63
      Index = 9
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [4]
    Left = 82
    Top = 52
    Width = 121
    Height = 24
    DataBinding.DataField = 'EmpleadoID'
    DataBinding.DataSource = DS
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Exit
    OnKeyDown = DBEdit1KeyDown
  end
  object cxDBTextEdit2: TcxDBTextEdit [5]
    Left = 372
    Top = 54
    Width = 103
    Height = 21
    DataBinding.DataField = 'CodExterno'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton2: TcxButton [6]
    Left = 488
    Top = 51
    Width = 133
    Height = 26
    Caption = 'Buscar &Foto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    WordWrap = True
    OnClick = Button2Click
    LookAndFeel.NativeStyle = True
  end
  object cxGroupBox1: TcxGroupBox [7]
    Left = 9
    Top = 80
    Width = 627
    Height = 182
    Caption = '[ Datos Personales ]'
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
    object Label15: TLabel
      Left = 412
      Top = 101
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label16: TLabel
      Left = 315
      Top = 102
      Width = 41
      Height = 13
      Caption = 'Est. Civil'
    end
    object Label20: TLabel
      Left = 310
      Top = 50
      Width = 48
      Height = 13
      Caption = 'Telefono2'
    end
    object Label19: TLabel
      Left = 310
      Top = 26
      Width = 48
      Height = 13
      Caption = 'Telefono1'
    end
    object Label17: TLabel
      Left = 20
      Top = 126
      Width = 43
      Height = 13
      Caption = 'Direccion'
    end
    object Label18: TLabel
      Left = 32
      Top = 102
      Width = 33
      Height = 13
      Caption = 'Ciudad'
    end
    object Label8: TLabel
      Left = 18
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Ced / Pas'
    end
    object Label7: TLabel
      Left = 28
      Top = 54
      Width = 37
      Height = 13
      Caption = 'Apellido'
    end
    object Label6: TLabel
      Left = 28
      Top = 30
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label11: TLabel
      Left = 302
      Top = 76
      Width = 55
      Height = 13
      Caption = 'Tel. Emerg.'
    end
    object Label14: TLabel
      Left = 305
      Top = 126
      Width = 52
      Height = 13
      Caption = 'Nacimiento'
    end
    object Label21: TLabel
      Left = 333
      Top = 157
      Width = 23
      Height = 13
      Caption = 'Hijos'
      Transparent = True
    end
    object Label35: TLabel
      Left = 3
      Top = 157
      Width = 60
      Height = 13
      Caption = 'Nacionalidad'
    end
    object Label37: TLabel
      Left = 407
      Top = 157
      Width = 52
      Height = 13
      Caption = 'Referencia'
      Transparent = True
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 73
      Top = 25
      Width = 216
      Height = 21
      DataBinding.DataField = 'Nombre'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 73
      Top = 51
      Width = 216
      Height = 21
      DataBinding.DataField = 'Apellido'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 73
      Top = 76
      Width = 128
      Height = 21
      DataBinding.DataField = 'cedula'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 2
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 73
      Top = 101
      Width = 216
      Height = 21
      DataBinding.DataField = 'Ciudad'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 3
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 73
      Top = 127
      Width = 216
      Height = 21
      DataBinding.DataField = 'Direccion'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 4
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 365
      Top = 23
      Width = 100
      Height = 21
      DataBinding.DataField = 'Telefono1'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 5
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 365
      Top = 47
      Width = 100
      Height = 21
      DataBinding.DataField = 'Telefono2'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 6
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 365
      Top = 73
      Width = 100
      Height = 21
      DataBinding.DataField = 'TelefonoEmergencia'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 7
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 365
      Top = 99
      Width = 26
      Height = 21
      DataBinding.DataField = 'EstadoCivil'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 8
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 437
      Top = 99
      Width = 26
      Height = 21
      DataBinding.DataField = 'Sexo'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 9
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 364
      Top = 124
      Width = 99
      Height = 21
      DataBinding.DataField = 'Nacimiento'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 10
    end
    object DBImage1: TcxDBImage
      Left = 472
      Top = 22
      Width = 147
      Height = 123
      DataBinding.DataField = 'Foto'
      DataBinding.DataSource = DS
      Properties.Stretch = True
      TabOrder = 11
      OnDblClick = DBImage1DblClick
    end
    object cxDBImageComboBox3: TcxDBImageComboBox
      Left = 203
      Top = 76
      Width = 87
      Height = 21
      DataBinding.DataField = 'TipoDocumento'
      DataBinding.DataSource = DS
      Properties.Items = <
        item
          Description = 'C'#233'dula'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Pasaporte'
          ImageIndex = 0
          Value = 'P'
        end
        item
          Description = 'Otro'
          Value = 'O'
        end>
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 12
    end
    object cxDBTextEdit23: TcxDBTextEdit
      Left = 73
      Top = 153
      Width = 154
      Height = 21
      DataBinding.DataField = 'Nacionalidad'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 13
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 364
      Top = 153
      Width = 28
      Height = 21
      DataBinding.DataField = 'CantidadHijos'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 14
    end
    object cxDBTextEdit24: TcxDBTextEdit
      Left = 466
      Top = 153
      Width = 69
      Height = 21
      DataBinding.DataField = 'Referencia'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 15
    end
    object cxDBTextEdit25: TcxDBTextEdit
      Left = 236
      Top = 153
      Width = 75
      Height = 21
      DataBinding.DataField = 'idNacionalidad'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 16
    end
  end
  object cxPageControl1: TcxPageControl [8]
    Left = 8
    Top = 274
    Width = 627
    Height = 200
    ActivePage = tsDatosEmpresa
    LookAndFeel.NativeStyle = True
    TabOrder = 5
    ClientRectBottom = 196
    ClientRectLeft = 2
    ClientRectRight = 623
    ClientRectTop = 22
    object tsDatosEmpresa: TcxTabSheet
      Caption = 'Datos Empresa'
      ImageIndex = 0
      object Label2: TLabel
        Left = 23
        Top = 11
        Width = 20
        Height = 13
        Caption = 'Tipo'
        Transparent = True
      end
      object Label4: TLabel
        Left = 14
        Top = 38
        Width = 29
        Height = 13
        Caption = 'Depto'
        Transparent = True
      end
      object Label5: TLabel
        Left = 7
        Top = 62
        Width = 36
        Height = 13
        Caption = 'Seccion'
        Transparent = True
      end
      object Label10: TLabel
        Left = 21
        Top = 129
        Width = 100
        Height = 13
        Caption = 'Sueldo Nomina/ Hora'
        Transparent = True
      end
      object Label12: TLabel
        Left = 237
        Top = 11
        Width = 25
        Height = 13
        Caption = 'Inicio'
        Transparent = True
      end
      object Label13: TLabel
        Left = 248
        Top = 39
        Width = 14
        Height = 13
        Caption = 'Fin'
        Transparent = True
      end
      object Label3: TLabel
        Left = 328
        Top = 129
        Width = 46
        Height = 13
        Caption = 'Horas D'#237'a'
        Transparent = True
      end
      object Label9: TLabel
        Left = 224
        Top = 94
        Width = 38
        Height = 13
        Caption = 'Seg Soc'
        Transparent = True
      end
      object Label24: TLabel
        Left = 227
        Top = 68
        Width = 35
        Height = 13
        Caption = 'Horario'
        Transparent = True
      end
      object Label23: TLabel
        Left = 445
        Top = 129
        Width = 54
        Height = 13
        Caption = 'Sueldo Mes'
        Transparent = True
      end
      object Label27: TLabel
        Left = 28
        Top = 92
        Width = 15
        Height = 13
        Caption = 'Rol'
        Transparent = True
      end
      object Gradient1: TGradient
        Left = 0
        Top = 116
        Width = 621
        Height = 6
        Align = alCustom
        ColorBegin = 16752228
        ColorEnd = 16511468
        Style = gsReflectedH
      end
      object Gradient2: TGradient
        Left = 430
        Top = -2
        Width = 5
        Height = 113
        Align = alCustom
        ColorBegin = 16752228
        ColorEnd = 16511468
        Style = gsReflectedV
      end
      object Label25: TLabel
        Left = 502
        Top = 3
        Width = 46
        Height = 14
        Caption = 'Estatus'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape1: TShape
        Left = 442
        Top = 18
        Width = 174
        Height = 1
      end
      object Label34: TLabel
        Left = 467
        Top = 155
        Width = 31
        Height = 13
        Caption = 'Vi'#225'tico'
        Transparent = True
      end
      object Label36: TLabel
        Left = 66
        Top = 152
        Width = 55
        Height = 13
        Caption = 'Supervisor:'
        Transparent = True
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 217
        Top = 126
        Width = 71
        Height = 21
        Caption = 'por Hora'
        DataBinding.DataField = 'SueldoHora'
        DataBinding.DataSource = DS
        Properties.ImmediatePost = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBTextEdit17: TcxDBTextEdit
        Left = 129
        Top = 125
        Width = 86
        Height = 21
        DataBinding.DataField = 'Sueldo'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxDBTextEdit18: TcxDBTextEdit
        Left = 507
        Top = 125
        Width = 108
        Height = 21
        DataBinding.DataField = 'SueldoMes'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 461
        Top = 23
        Width = 66
        Height = 21
        Caption = 'ISR'
        DataBinding.DataField = 'ISR'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 461
        Top = 45
        Width = 83
        Height = 21
        Caption = 'Sueldo Fijo'
        DataBinding.DataField = 'SueldoFijo'
        DataBinding.DataSource = DS
        Properties.ImmediatePost = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 461
        Top = 67
        Width = 55
        Height = 21
        Caption = 'Activo'
        DataBinding.DataField = 'Activo'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 551
        Top = 67
        Width = 51
        Height = 21
        Caption = 'ARS'
        DataBinding.DataField = 'ARS'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 551
        Top = 45
        Width = 51
        Height = 21
        Caption = 'AFP'
        DataBinding.DataField = 'AFP'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 7
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 551
        Top = 23
        Width = 51
        Height = 21
        Caption = 'SS'
        DataBinding.DataField = 'SS'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Visible = False
      end
      object cxDBTextEdit19: TcxDBTextEdit
        Left = 267
        Top = 90
        Width = 145
        Height = 21
        DataBinding.DataField = 'NumeroSS'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 9
      end
      object cxDBTextEdit20: TcxDBTextEdit
        Left = 379
        Top = 125
        Width = 36
        Height = 21
        DataBinding.DataField = 'HorasDia'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 10
      end
      object lkTipo: TcxDBLookupComboBox
        Left = 56
        Top = 6
        Width = 145
        Height = 21
        DataBinding.DataField = 'TipoEmpleadoID'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'TipoEmpleadoID'
        Properties.ListColumns = <
          item
            FieldName = 'TipoEmpleado'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTipoEmpleado
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 11
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 267
        Top = 6
        Width = 145
        Height = 21
        DataBinding.DataField = 'Inicio'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 12
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 267
        Top = 34
        Width = 145
        Height = 21
        DataBinding.DataField = 'Fin'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 13
      end
      object lkDepartamento: TcxDBLookupComboBox
        Left = 56
        Top = 34
        Width = 145
        Height = 21
        DataBinding.DataField = 'DepartamentoId'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'DepartamentoID'
        Properties.ListColumns = <
          item
            FieldName = 'Departamento'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsDepartamento
        Properties.OnChange = cxDBLookupComboBox2PropertiesChange
        Properties.OnCloseUp = cxDBLookupComboBox2PropertiesCloseUp
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 14
      end
      object lkSeccion: TcxDBLookupComboBox
        Left = 56
        Top = 62
        Width = 145
        Height = 21
        DataBinding.DataField = 'SecionId'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'SeccionId'
        Properties.ListColumns = <
          item
            FieldName = 'Seccion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsSeccion
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 15
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 56
        Top = 90
        Width = 145
        Height = 21
        DataBinding.DataField = 'idEmpleadoRoll'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idEmpleadoRoll'
        Properties.ListColumns = <
          item
            FieldName = 'EmpleadoRoll'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsEmpleadoRoll
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 16
      end
      object cxDBLookupComboBox5: TcxDBLookupComboBox
        Left = 267
        Top = 62
        Width = 145
        Height = 21
        DataBinding.DataField = 'idHorario'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idHorario'
        Properties.ListColumns = <
          item
            FieldName = 'Horario'
          end>
        Properties.ListSource = dsHorario
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 17
      end
      object cxDBCheckBox8: TcxDBCheckBox
        Left = 461
        Top = 89
        Width = 148
        Height = 21
        Caption = 'Sueldo Garantizado'
        DataBinding.DataField = 'Garantizado'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 18
        Visible = False
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 507
        Top = 150
        Width = 108
        Height = 21
        DataBinding.DataField = 'Viatico'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 19
      end
      object luSuper: TcxDBLookupComboBox
        Left = 129
        Top = 148
        Width = 299
        Height = 21
        DataBinding.DataField = 'IdSupervisor'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'EmpleadoID'
        Properties.ListColumns = <
          item
            FieldName = 'Empleado'
          end>
        Properties.ListSource = dsSuper
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 20
      end
    end
    object tsHistoricoSalario: TcxTabSheet
      Caption = 'Historico Salario'
      ImageIndex = 2
      object cxGrid2: TcxGrid
        Left = 2
        Top = 2
        Width = 617
        Height = 171
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DsHistoricoSalario
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'Fecha'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Delete.Enabled = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Filtering = False
            Width = 95
          end
          object cxGridDBTableView1TotalNormal: TcxGridDBColumn
            Caption = 'T. Normal'
            DataBinding.FieldName = 'TotalNormal'
            Options.Filtering = False
            Width = 96
          end
          object cxGridDBTableView1TotalNocturna: TcxGridDBColumn
            Caption = 'T. Nocturna'
            DataBinding.FieldName = 'TotalNocturna'
            Options.Filtering = False
            Width = 91
          end
          object cxGridDBTableView1TotalExtra: TcxGridDBColumn
            Caption = 'T. Extra'
            DataBinding.FieldName = 'TotalExtra'
            Options.Filtering = False
            Width = 76
          end
          object cxGridDBTableView1TotalDoble: TcxGridDBColumn
            Caption = 'T. Doble'
            DataBinding.FieldName = 'TotalDoble'
            Options.Filtering = False
            Width = 88
          end
          object cxGridDBTableView1OtrosIngresos: TcxGridDBColumn
            Caption = 'Otros Ing.'
            DataBinding.FieldName = 'OtrosIngresos'
            Options.Filtering = False
            Width = 94
          end
          object cxGridDBTableView1Bruto: TcxGridDBColumn
            DataBinding.FieldName = 'Bruto'
            Options.Filtering = False
            Width = 92
          end
          object cxGridDBTableView1SS: TcxGridDBColumn
            DataBinding.FieldName = 'SS'
            Options.Filtering = False
            Width = 85
          end
          object cxGridDBTableView1AFP: TcxGridDBColumn
            DataBinding.FieldName = 'AFP'
            Options.Filtering = False
            Width = 86
          end
          object cxGridDBTableView1IR: TcxGridDBColumn
            Caption = 'ISR'
            DataBinding.FieldName = 'IR'
            Options.Filtering = False
            Width = 97
          end
          object cxGridDBTableView1OtrosDescuentos: TcxGridDBColumn
            Caption = 'Otros Desc.'
            DataBinding.FieldName = 'OtrosDescuentos'
            Options.Filtering = False
            Width = 107
          end
          object cxGridDBTableView1TDescuentos: TcxGridDBColumn
            Caption = 'T. Desc.'
            DataBinding.FieldName = 'TDescuentos'
            Options.Filtering = False
            Width = 96
          end
          object cxGridDBTableView1Neto: TcxGridDBColumn
            DataBinding.FieldName = 'Neto'
            Options.Filtering = False
            Width = 99
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object tsBanco: TcxTabSheet
      Caption = 'Informaci'#243'n Banco / Otros'
      ImageIndex = 3
      object Label22: TLabel
        Left = 423
        Top = 26
        Width = 35
        Height = 13
        Caption = 'Cuenta'
        Transparent = True
      end
      object Label26: TLabel
        Left = 15
        Top = 26
        Width = 29
        Height = 13
        Caption = 'Banco'
        Transparent = True
      end
      object Label29: TLabel
        Left = 213
        Top = 26
        Width = 58
        Height = 13
        Caption = 'Tipo Cuenta'
        Transparent = True
      end
      object Label30: TLabel
        Left = 17
        Top = 54
        Width = 78
        Height = 13
        Caption = 'Tipo Notificaci'#243'n'
        Transparent = True
      end
      object Label31: TLabel
        Left = 153
        Top = 54
        Width = 90
        Height = 13
        Caption = 'Direcci'#243'n / N'#250'mero'
        Transparent = True
      end
      object Gradient3: TGradient
        Left = 0
        Top = 114
        Width = 621
        Height = 6
        Align = alCustom
        ColorBegin = 16752228
        ColorEnd = 16511468
        Style = gsReflectedH
      end
      object Label32: TLabel
        Left = 17
        Top = 138
        Width = 101
        Height = 13
        Caption = 'Agente de Retenci'#243'n'
        Transparent = True
      end
      object Label33: TLabel
        Left = 123
        Top = 123
        Width = 21
        Height = 11
        Caption = 'RNC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 467
        Top = 22
        Width = 18
        Height = 21
        DataBinding.DataField = 'TipoCuenta'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 487
        Top = 22
        Width = 128
        Height = 21
        DataBinding.DataField = 'NumeroCuenta'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxDBLookupComboBox6: TcxDBLookupComboBox
        Left = 54
        Top = 22
        Width = 145
        Height = 21
        DataBinding.DataField = 'IdBancoDestino'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'IdBancoDestino'
        Properties.ListColumns = <
          item
            FieldName = 'BancoDestino'
          end>
        Properties.ListSource = dsBancoDestino
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 280
        Top = 22
        Width = 121
        Height = 21
        DataBinding.DataField = 'TipoCuentaDestino'
        DataBinding.DataSource = DS
        Properties.Items = <
          item
            Description = 'Cuenta Corriente'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Cuenta de Ahorro'
            Value = '2'
          end>
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxDBImageComboBox2: TcxDBImageComboBox
        Left = 15
        Top = 68
        Width = 121
        Height = 21
        DataBinding.DataField = 'TipoNotificacionBanco'
        DataBinding.DataSource = DS
        Properties.Items = <
          item
            Description = 'Sin Notificaci'#243'n'
            ImageIndex = 0
          end
          item
            Description = 'eMail'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Fax'
            Value = '2'
          end>
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cxDBTextEdit21: TcxDBTextEdit
        Left = 153
        Top = 68
        Width = 458
        Height = 21
        DataBinding.DataField = 'DireccionNotificacionBanco'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxDBTextEdit22: TcxDBTextEdit
        Left = 123
        Top = 134
        Width = 367
        Height = 21
        DataBinding.DataField = 'AgenteRetencion'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
    end
    object tsAuxiliares: TcxTabSheet
      Caption = 'Auxiliares'
      ImageIndex = 4
      object GridAux: TcxGrid
        Left = 2
        Top = 2
        Width = 617
        Height = 170
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = dsAuxiliar
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'idAuxiliar'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Delete.Enabled = False
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView2idEmpleado: TcxGridDBColumn
            DataBinding.FieldName = 'idEmpleado'
            Visible = False
          end
          object cxGridDBTableView2idCuenta: TcxGridDBColumn
            Caption = 'Cuenta'
            DataBinding.FieldName = 'idCuenta'
            Options.Filtering = False
          end
          object cxGridDBTableView2idAuxiliar: TcxGridDBColumn
            Caption = 'Auxiliar'
            DataBinding.FieldName = 'idAuxiliar'
            Options.Filtering = False
          end
          object cxGridDBTableView2Auxiliar: TcxGridDBColumn
            Caption = 'Descripci'#243'n del Auxiliar'
            DataBinding.FieldName = 'Auxiliar'
            Options.Filtering = False
            Width = 398
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object cxButton3: TcxButton [9]
    Left = 499
    Top = 247
    Width = 133
    Height = 26
    Caption = 'Resumen de Transacci'#243'n'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    WordWrap = True
    OnClick = ResumenTransExecute
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    Left = 365
    Top = 49
  end
  inherited ImageList: TImageList
    Left = 286
    Top = 48
  end
  inherited Acciones: TActionList
    Left = 432
    Top = 48
    object ResumenTrans: TAction
      Caption = 'ResumenTrans'
      OnExecute = ResumenTransExecute
    end
  end
  inherited RS: TADODataSet
    Active = True
    BeforePost = RSBeforePost
    AfterScroll = RSAfterScroll
    OnNewRecord = RSNewRecord
    CommandText = 'rsEmpleado;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idempleado'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 228
    Top = 50
    object RSEmpleadoID: TIntegerField
      DisplayLabel = 'Codigo Emp'
      FieldName = 'EmpleadoID'
    end
    object RSDepartamentoID: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'DepartamentoID'
      Required = True
    end
    object RSSecionID: TIntegerField
      DisplayLabel = 'Secion'
      FieldName = 'SecionID'
      Required = True
    end
    object RSNombre: TStringField
      FieldName = 'Nombre'
      Required = True
      Size = 30
    end
    object RSApellido: TStringField
      FieldName = 'Apellido'
      Required = True
      Size = 30
    end
    object RSCedula: TStringField
      FieldName = 'Cedula'
      Required = True
      OnValidate = RSCedulaValidate
    end
    object RSPosicion: TStringField
      FieldName = 'Posicion'
    end
    object RSSueldo: TBCDField
      FieldName = 'Sueldo'
      Required = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSInicio: TDateTimeField
      FieldName = 'Inicio'
      Required = True
    end
    object RSFin: TDateTimeField
      FieldName = 'Fin'
    end
    object RSNacimiento: TDateTimeField
      FieldName = 'Nacimiento'
    end
    object RSSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object RSEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      FixedChar = True
      Size = 1
    end
    object RSDireccion: TStringField
      FieldName = 'Direccion'
      Size = 70
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 15
    end
    object RSTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 15
    end
    object RSTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      FixedChar = True
      Size = 1
    end
    object RSNumeroCuenta: TStringField
      FieldName = 'NumeroCuenta'
    end
    object RSSueldoFijo: TBooleanField
      FieldName = 'SueldoFijo'
      Required = True
      OnValidate = RSSueldoFijoValidate
    end
    object RSActivo: TBooleanField
      FieldName = 'Activo'
      Required = True
    end
    object RSSS: TBooleanField
      FieldName = 'SS'
    end
    object RSISR: TBooleanField
      FieldName = 'ISR'
    end
    object RSPuntoA: TBCDField
      FieldName = 'PuntoA'
      Precision = 18
      Size = 2
    end
    object RSPuntoB: TBCDField
      FieldName = 'PuntoB'
      Precision = 18
      Size = 2
    end
    object RSPuntoC: TBCDField
      FieldName = 'PuntoC'
      Precision = 18
      Size = 2
    end
    object RSHorasDia: TBCDField
      FieldName = 'HorasDia'
      Required = True
      OnValidate = RSHorasDiaValidate
      Precision = 18
      Size = 2
    end
    object RSNumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
    object RSTelefonoEmergencia: TStringField
      FieldName = 'TelefonoEmergencia'
      Size = 15
    end
    object RSCantidadHijos: TSmallintField
      FieldName = 'CantidadHijos'
    end
    object RSFoto: TBlobField
      FieldName = 'Foto'
    end
    object RSNacionalidad: TStringField
      FieldName = 'Nacionalidad'
    end
    object RSDependientes: TSmallintField
      FieldName = 'Dependientes'
    end
    object RSTipoNominaID: TIntegerField
      FieldName = 'TipoNominaID'
    end
    object RSTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      FixedChar = True
      Size = 1
    end
    object RSSueldoMes: TBCDField
      DisplayLabel = 'Sueldo Mes'
      FieldName = 'SueldoMes'
      Required = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSidHorario: TStringField
      DisplayLabel = 'Horario'
      FieldName = 'idHorario'
      Required = True
      Size = 16
    end
    object RSidEmpleado: TGuidField
      FieldName = 'idEmpleado'
      FixedChar = True
      Size = 38
    end
    object RSesVendedor: TBooleanField
      FieldName = 'esVendedor'
    end
    object RSidEmpleadoRoll: TStringField
      DisplayLabel = 'Posicion'
      FieldName = 'idEmpleadoRoll'
      Required = True
      Size = 16
    end
    object RSEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object RSAFP: TBooleanField
      FieldName = 'AFP'
    end
    object RSARS: TBooleanField
      FieldName = 'ARS'
    end
    object RSSueldoHora: TBooleanField
      FieldName = 'SueldoHora'
      OnValidate = RSSueldoHoraValidate
    end
    object RSCodExterno: TStringField
      FieldName = 'CodExterno'
      OnValidate = RSCodExternoValidate
      Size = 30
    end
    object RSIdBanco: TGuidField
      FieldName = 'IdBanco'
      FixedChar = True
      Size = 38
    end
    object RSTipoNotificacionBanco: TStringField
      FieldName = 'TipoNotificacionBanco'
      Size = 1
    end
    object RSDireccionNotificacionBanco: TStringField
      FieldName = 'DireccionNotificacionBanco'
      Size = 100
    end
    object RSTipoCuentaDestino: TStringField
      FieldName = 'TipoCuentaDestino'
      Size = 2
    end
    object RSIdBancoDestino: TStringField
      FieldName = 'IdBancoDestino'
      Size = 16
    end
    object RSGarantizado: TBooleanField
      FieldName = 'Garantizado'
    end
    object RSAgenteRetencion: TStringField
      FieldName = 'AgenteRetencion'
    end
    object RSidPersonal: TIntegerField
      FieldName = 'idPersonal'
    end
    object RSViatico: TBCDField
      FieldName = 'Viatico'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSidSupervisor: TIntegerField
      FieldName = 'idSupervisor'
      OnValidate = RSidSupervisorValidate
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
      Size = 16
    end
    object RSidNacionalidad: TStringField
      FieldName = 'idNacionalidad'
      Size = 16
    end
    object RSTipoEmpleadoID: TIntegerField
      DisplayLabel = 'Tipo Empleado'
      FieldName = 'TipoEmpleadoID'
      Required = True
    end
  end
  object OpenD: TOpenPictureDialog
    Ctl3D = False
    DefaultExt = 'jpg'
    Filter = 'Imagenes (*.jpg; *.bmp)|*.jpg;*.jpeg;*.bmp'
    FilterIndex = 0
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Seleccione un archivo de Foto'
    Left = 488
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 568
    Top = 184
    object Copiar1: TMenuItem
      Caption = 'Copiar al Clipboard'
      OnClick = Copiar1Click
    end
  end
  object EmpleadoRoll: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * From EmpleadoRoll'
    Parameters = <>
    Left = 496
    Top = 168
    object EmpleadoRollidEmpleadoRoll: TStringField
      FieldName = 'idEmpleadoRoll'
      Size = 16
    end
    object EmpleadoRollEmpleadoRoll: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 50
    end
    object EmpleadoRollSueldoHora: TBCDField
      FieldName = 'SueldoHora'
      Precision = 18
      Size = 2
    end
  end
  object Horario: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select idHorario, Horario from Horario Order by idHorario'
    Parameters = <>
    Left = 496
    Top = 120
  end
  object HistoricoSalario: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'spHistoricoSalario;1'
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
        Name = '@EmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 34
    Top = 106
    object HistoricoSalarioFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object HistoricoSalarioTotalNormal: TBCDField
      FieldName = 'TotalNormal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object HistoricoSalarioTotalNocturna: TBCDField
      FieldName = 'TotalNocturna'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object HistoricoSalarioTotalExtra: TBCDField
      FieldName = 'TotalExtra'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object HistoricoSalarioTotalDoble: TBCDField
      FieldName = 'TotalDoble'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object HistoricoSalarioOtrosIngresos: TBCDField
      FieldName = 'OtrosIngresos'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object HistoricoSalarioBruto: TBCDField
      FieldName = 'Bruto'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object HistoricoSalarioSS: TBCDField
      FieldName = 'SS'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object HistoricoSalarioAFP: TBCDField
      FieldName = 'AFP'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object HistoricoSalarioIR: TBCDField
      FieldName = 'IR'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object HistoricoSalarioOtrosDescuentos: TBCDField
      FieldName = 'OtrosDescuentos'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object HistoricoSalarioTDescuentos: TBCDField
      FieldName = 'TDescuentos'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object HistoricoSalarioNeto: TBCDField
      FieldName = 'Neto'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
  end
  object DsHistoricoSalario: TDataSource
    AutoEdit = False
    DataSet = HistoricoSalario
    Left = 144
    Top = 128
  end
  object TransEmpleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'spTransEmpleado;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@EmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 246
    Top = 172
    object TransEmpleadoEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object TransEmpleadoApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object TransEmpleadoNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object TransEmpleadoTipoTransaccionID: TIntegerField
      FieldName = 'TipoTransaccionID'
    end
    object TransEmpleadoTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object TransEmpleadoValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object TransEmpleadoCantidad: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 32
    end
    object TransEmpleadoDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object TransEmpleadoHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object TransEmpleadoDebito: TBooleanField
      FieldName = 'Debito'
    end
  end
  object dsTransEmpleado: TDataSource
    DataSet = TransEmpleado
    Left = 346
    Top = 176
  end
  object rptTransEmpleado: TppReport
    AutoStop = False
    DataPipeline = plTransEmpleado
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 378
    Top = 114
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plTransEmpleado'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Apellido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 5556
        mmWidth = 17727
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Apellido'
        DataPipeline = plTransEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 4939
        mmLeft = 20373
        mmTop = 5556
        mmWidth = 94192
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 10848
        mmWidth = 17463
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plTransEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 4939
        mmLeft = 20373
        mmTop = 10848
        mmWidth = 93927
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 265
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = plTransEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 4939
        mmLeft = 20373
        mmTop = 265
        mmWidth = 38629
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4939
        mmLeft = 0
        mmTop = 23548
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo Transaccion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 32015
        mmTop = 23548
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4939
        mmLeft = 116946
        mmTop = 23548
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4939
        mmLeft = 152136
        mmTop = 23548
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 148696
        mmTop = 794
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plTransEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 4763
        mmLeft = 162984
        mmTop = 794
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 148696
        mmTop = 6615
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Hasta'
        DataPipeline = plTransEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 4763
        mmLeft = 163248
        mmTop = 6615
        mmWidth = 38894
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Db'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 22754
        mmTop = 23548
        mmWidth = 6350
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 28840
        mmWidth = 194998
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'TipoTransaccionID'
        DataPipeline = plTransEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 4939
        mmLeft = 0
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'TipoTransaccion'
        DataPipeline = plTransEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 5027
        mmLeft = 32015
        mmTop = 265
        mmWidth = 83873
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plTransEmpleado
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 4939
        mmLeft = 117211
        mmTop = 265
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plTransEmpleado
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 4939
        mmLeft = 152400
        mmTop = 265
        mmWidth = 27517
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plTransEmpleado
        DataField = 'Debito'
        Transparent = True
        DataPipelineName = 'plTransEmpleado'
        mmHeight = 4233
        mmLeft = 23813
        mmTop = 794
        mmWidth = 4233
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plTransEmpleado: TppDBPipeline
    DataSource = dsTransEmpleado
    UserName = 'plTransEmpleado'
    Left = 298
    Top = 114
    object plTransEmpleadoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object plTransEmpleadoppField2: TppField
      FieldAlias = 'Apellido'
      FieldName = 'Apellido'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object plTransEmpleadoppField3: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object plTransEmpleadoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'TipoTransaccionID'
      FieldName = 'TipoTransaccionID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object plTransEmpleadoppField5: TppField
      FieldAlias = 'TipoTransaccion'
      FieldName = 'TipoTransaccion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object plTransEmpleadoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 5
    end
    object plTransEmpleadoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 33
      Position = 6
    end
    object plTransEmpleadoppField8: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object plTransEmpleadoppField9: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object plTransEmpleadoppField10: TppField
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 9
    end
  end
  object DSCambioSalario: TDataSource
    AutoEdit = False
    Left = 144
    Top = 184
  end
  object dsTipoEmpleado: TDataSource
    DataSet = TipoEmpleado
    Left = 738
    Top = 72
  end
  object dsDepartamento: TDataSource
    DataSet = Departamento
    Left = 738
    Top = 164
  end
  object dsSeccion: TDataSource
    DataSet = Seccion
    Left = 736
    Top = 246
  end
  object dsEmpleadoRoll: TDataSource
    DataSet = EmpleadoRoll
    Left = 742
    Top = 312
  end
  object dsHorario: TDataSource
    DataSet = Horario
    Left = 736
    Top = 376
  end
  object rsBancosDestino: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from nomBancoDestino'
    Parameters = <>
    Left = 556
    Top = 256
    object rsBancosDestinoIdBancoDestino: TStringField
      FieldName = 'IdBancoDestino'
      Size = 12
    end
    object rsBancosDestinoBancoDestino: TStringField
      FieldName = 'BancoDestino'
      Size = 50
    end
    object rsBancosDestinoDigitoVerificacion: TStringField
      FieldName = 'DigitoVerificacion'
      Size = 1
    end
  end
  object dsBancoDestino: TDataSource
    DataSet = rsBancosDestino
    Left = 584
    Top = 352
  end
  object EmpleadoCodExternoAct: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomEmpleadoCodExternoAct;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CodExterno'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 104
    Top = 342
    object EmpleadoCodExternoActEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object EmpleadoCodExternoActEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object Auxiliar: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnNewRecord = AuxiliarNewRecord
    CommandText = 'nomrsAuxiliar;1'
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
        Name = '@idEmpleado'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 233
    Top = 294
    object AuxiliaridEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object AuxiliaridCuenta: TStringField
      FieldName = 'idCuenta'
      OnValidate = AuxiliaridCuentaValidate
      Size = 16
    end
    object AuxiliaridAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object AuxiliarAuxiliar: TStringField
      FieldName = 'Auxiliar'
      Size = 60
    end
  end
  object dsAuxiliar: TDataSource
    DataSet = Auxiliar
    Left = 198
    Top = 332
  end
  object spAccionesEmpleado: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'mrhAccionesDelEmpleadoRpt;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@EmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 282
    Top = 430
    object spAccionesEmpleadoEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object spAccionesEmpleadoEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object spAccionesEmpleadocedula: TStringField
      FieldName = 'cedula'
    end
    object spAccionesEmpleadoEmpleadoRoll: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 50
    end
    object spAccionesEmpleadoDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object spAccionesEmpleadoSeccion: TStringField
      FieldName = 'Seccion'
    end
    object spAccionesEmpleadoInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object spAccionesEmpleadoFoto: TBlobField
      FieldName = 'Foto'
    end
    object spAccionesEmpleadoNaturalezaAccion: TStringField
      FieldName = 'NaturalezaAccion'
      ReadOnly = True
      Size = 82
    end
    object spAccionesEmpleadoMotivo: TStringField
      FieldName = 'Motivo'
      Size = 500
    end
    object spAccionesEmpleadoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spAccionesEmpleadoFechaProceso: TDateTimeField
      FieldName = 'FechaProceso'
    end
  end
  object dsRpt: TDataSource
    DataSet = spAccionesEmpleado
    Left = 10
    Top = 151
  end
  object plRpt: TppDBPipeline
    DataSource = dsRpt
    UserName = 'plRpt'
    Left = 31
    Top = 163
    object plRptppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object plRptppField2: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 62
      DisplayWidth = 62
      Position = 1
    end
    object plRptppField3: TppField
      FieldAlias = 'cedula'
      FieldName = 'cedula'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plRptppField4: TppField
      FieldAlias = 'EmpleadoRoll'
      FieldName = 'EmpleadoRoll'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object plRptppField5: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object plRptppField6: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object plRptppField7: TppField
      FieldAlias = 'Inicio'
      FieldName = 'Inicio'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object plRptppField8: TppField
      FieldAlias = 'Foto'
      FieldName = 'Foto'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plRptppField9: TppField
      FieldAlias = 'NaturalezaAccion'
      FieldName = 'NaturalezaAccion'
      FieldLength = 82
      DisplayWidth = 82
      Position = 8
    end
    object plRptppField10: TppField
      FieldAlias = 'Motivo'
      FieldName = 'Motivo'
      FieldLength = 500
      DisplayWidth = 500
      Position = 9
    end
    object plRptppField11: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object plRptppField12: TppField
      FieldAlias = 'FechaProceso'
      FieldName = 'FechaProceso'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
  end
  object rpt: TppReport
    AutoStop = False
    DataPipeline = plRpt
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.Name = 'Accion de Personal'
    Template.DatabaseSettings.NameField = 'Nombre'
    Template.DatabaseSettings.TemplateField = 'Reporte'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 53
    Top = 225
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plRpt'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 80963
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Color = 9671571
        mmHeight = 8202
        mmLeft = 0
        mmTop = 72496
        mmWidth = 203465
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkEnabled = False
        Caption = 'Acciones de Personal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 72496
        mmTop = 12171
        mmWidth = 67204
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6816
        mmLeft = 1058
        mmTop = 794
        mmWidth = 146579
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 165629
        mmTop = 2381
        mmWidth = 35190
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 6615
        mmLeft = 3704
        mmTop = 21167
        mmWidth = 48948
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkEnabled = False
        Caption = 'Datos Generales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 11377
        mmTop = 21960
        mmWidth = 32015
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        Brush.Color = clSilver
        Pen.Color = 9671571
        mmHeight = 6879
        mmLeft = 54504
        mmTop = 21167
        mmWidth = 146050
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkEnabled = False
        Caption = 'Nombre y Apellido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 32015
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkEnabled = False
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 39158
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkEnabled = False
        Caption = 'Secci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 46038
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkEnabled = False
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 52917
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkEnabled = False
        Caption = 'C'#233'dula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 66940
        mmWidth = 11906
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 5292
        mmLeft = 151871
        mmTop = 30427
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkEnabled = False
        Caption = 'Foto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 166159
        mmTop = 31221
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRpt'
        mmHeight = 4233
        mmLeft = 43392
        mmTop = 32279
        mmWidth = 92075
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Departamento'
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRpt'
        mmHeight = 4233
        mmLeft = 43392
        mmTop = 39158
        mmWidth = 69586
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'Seccion'
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRpt'
        mmHeight = 4233
        mmLeft = 43392
        mmTop = 46038
        mmWidth = 69850
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'EmpleadoRoll'
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRpt'
        mmHeight = 4233
        mmLeft = 43392
        mmTop = 53181
        mmWidth = 69586
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'Cedula'
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRpt'
        mmHeight = 4233
        mmLeft = 43392
        mmTop = 66940
        mmWidth = 70115
        BandType = 0
      end
      object ppDBImage2: TppDBImage
        UserName = 'DBImage2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        DataPipeline = plRpt
        GraphicType = 'JPEG'
        DataPipelineName = 'plRpt'
        mmHeight = 34925
        mmLeft = 152665
        mmTop = 35983
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'Fecha Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 59531
        mmWidth = 21696
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Inicio'
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRpt'
        mmHeight = 4233
        mmLeft = 43127
        mmTop = 59796
        mmWidth = 69586
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkEnabled = False
        Caption = 'Motivacion de la Acci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 47625
        mmTop = 75406
        mmWidth = 81227
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        Caption = 'Naturaleza de Accion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 529
        mmTop = 75406
        mmWidth = 46038
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Fecha Acci'#243'n/Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 173567
        mmTop = 73025
        mmWidth = 29633
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Motivo'
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plRpt'
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 265
        mmWidth = 121444
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'FechaProceso'
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRpt'
        mmHeight = 4233
        mmLeft = 174890
        mmTop = 529
        mmWidth = 27781
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Anchors = [atLeft, atBottom]
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 5291
        mmWidth = 202142
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'NaturalezaAccion'
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plRpt'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 265
        mmWidth = 43921
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 1852
        mmWidth = 202142
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataPipeline = plRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plRpt'
        mmHeight = 4233
        mmLeft = 41540
        mmTop = 3175
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Total de Acciones : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 3175
        mmWidth = 34131
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object Departamento: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from departamento'
    Parameters = <>
    Left = 661
    Top = 316
  end
  object Seccion: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from seccion where departamentoid = :departamentoid'
    DataSource = dsDepartamento
    MasterFields = 'departamentoid'
    Parameters = <
      item
        Name = 'departamentoid'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 10
      end>
    Left = 659
    Top = 412
  end
  object TipoEmpleado: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    TableName = 'TipoEmpleado'
    Left = 662
    Top = 208
  end
  object plHistoricoSalario: TppDBPipeline
    DataSource = DSCambioSalario
    UserName = 'plHistoricoSalario'
    Left = 318
    Top = 334
    object plHistoricoSalarioppField1: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object plHistoricoSalarioppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Salario'
      FieldName = 'Salario'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object plHistoricoSalarioppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
  end
  object rptHistoricoSalario: TppReport
    AutoStop = False
    DataPipeline = plHistoricoSalario
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 362
    Top = 366
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plHistoricoSalario'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 48948
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 6615
        mmLeft = 794
        mmTop = 42333
        mmWidth = 201613
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 1058
        mmTop = 529
        mmWidth = 123296
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 5821
        mmTop = 43392
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        Caption = 'Salario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 71173
        mmTop = 43127
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        Caption = 'Hist'#243'rico de Salarios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8996
        mmLeft = 61119
        mmTop = 12700
        mmWidth = 80698
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 2381
        mmWidth = 17992
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 178594
        mmTop = 7673
        mmWidth = 21431
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Pen.Width = 2
        mmHeight = 13758
        mmLeft = 794
        mmTop = 29369
        mmWidth = 127529
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        Caption = 'Id:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 15939
        mmTop = 31221
        mmWidth = 5228
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = plEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmpleado'
        mmHeight = 4233
        mmLeft = 22225
        mmTop = 31221
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmpleado'
        mmHeight = 4233
        mmLeft = 22225
        mmTop = 36777
        mmWidth = 104246
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'Cedula'
        DataPipeline = plEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmpleado'
        mmHeight = 4233
        mmLeft = 59531
        mmTop = 31221
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'Inicio'
        DataPipeline = plEmpleado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmpleado'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 31221
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        Caption = 'Empleado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 36777
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        Caption = 'C'#233'dula:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 44450
        mmTop = 31221
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        Caption = 'Inicio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 92869
        mmTop = 31221
        mmWidth = 11377
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plHistoricoSalario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plHistoricoSalario'
        mmHeight = 4233
        mmLeft = 6350
        mmTop = 529
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'Salario'
        DataPipeline = plHistoricoSalario
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHistoricoSalario'
        mmHeight = 4233
        mmLeft = 51594
        mmTop = 265
        mmWidth = 32279
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2117
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 201084
        BandType = 7
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object plEmpleado: TppDBPipeline
    DataSource = DS
    UserName = 'plEmpleado'
    Left = 300
    Top = 276
  end
  object Empleados: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'EmpleadosList;1'
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
        Name = '@Activo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 548
    Top = 504
    object EmpleadosTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
    object EmpleadosDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object EmpleadosSeccion: TStringField
      FieldName = 'Seccion'
    end
    object EmpleadosEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object EmpleadosNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object EmpleadosApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object EmpleadosCedula: TStringField
      FieldName = 'Cedula'
    end
    object EmpleadosInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object EmpleadosFin: TDateTimeField
      FieldName = 'Fin'
    end
    object EmpleadosTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 15
    end
    object EmpleadosNacimiento: TDateTimeField
      FieldName = 'Nacimiento'
    end
    object EmpleadosNumeroCuenta: TStringField
      FieldName = 'NumeroCuenta'
    end
    object EmpleadosSueldoFijo: TBooleanField
      FieldName = 'SueldoFijo'
    end
    object EmpleadosNumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
    object EmpleadosEmpleadoRoll: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 50
    end
    object EmpleadosActivos: TStringField
      FieldName = 'Activos'
      ReadOnly = True
      Size = 9
    end
    object EmpleadosTipoEmpleadoID: TAutoIncField
      FieldName = 'TipoEmpleadoID'
      ReadOnly = True
    end
    object EmpleadosDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
    end
    object EmpleadosSeccionID: TIntegerField
      FieldName = 'SeccionID'
    end
    object EmpleadosSueldo: TBCDField
      FieldName = 'Sueldo'
      Precision = 18
      Size = 2
    end
    object EmpleadosSueldoMes: TBCDField
      FieldName = 'SueldoMes'
      Precision = 18
      Size = 2
    end
  end
  object RptEmpleados: TppReport
    AutoStop = False
    DataPipeline = plempleados
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 260
    Top = 504
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plempleados'
    object ppTitleBand3: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkEnabled = False
        Caption = 'Listado de Empleados '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 2117
        mmTop = 11641
        mmWidth = 102129
        BandType = 1
      end
      object ppDBText103: TppDBText
        UserName = 'DBText103'
        HyperlinkEnabled = False
        DataField = 'Activos'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 6615
        mmLeft = 122767
        mmTop = 11641
        mmWidth = 65617
        BandType = 1
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 221721
        mmTop = 0
        mmWidth = 38629
        BandType = 1
      end
      object ppDBText240: TppDBText
        UserName = 'DBText240'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6879
        mmLeft = 1058
        mmTop = 794
        mmWidth = 186796
        BandType = 1
      end
    end
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 1588
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Apellido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 1588
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 38894
        mmTop = 1588
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cedula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 63765
        mmTop = 1588
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 1588
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 146579
        mmTop = 1588
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Telefono1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 1588
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 181505
        mmTop = 1588
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NumeroCuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 198438
        mmTop = 1588
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'EmpleadoRoll'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 224632
        mmTop = 1588
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NumeroSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 245269
        mmTop = 1588
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sueldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 90223
        mmTop = 1588
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label172'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sueldo Mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 109802
        mmTop = 1588
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 529
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        HyperlinkEnabled = False
        DataField = 'Apellido'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 265
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText104'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 38894
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText105'
        HyperlinkEnabled = False
        DataField = 'Cedula'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 63765
        mmTop = 265
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText106: TppDBText
        UserName = 'DBText106'
        HyperlinkEnabled = False
        DataField = 'Inicio'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText107: TppDBText
        UserName = 'DBText107'
        HyperlinkEnabled = False
        DataField = 'Fin'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 146579
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText108'
        HyperlinkEnabled = False
        DataField = 'Telefono1'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 265
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        HyperlinkEnabled = False
        DataField = 'Nacimiento'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 181505
        mmTop = 265
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText110'
        HyperlinkEnabled = False
        DataField = 'NumeroCuenta'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 198438
        mmTop = 265
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        HyperlinkEnabled = False
        DataField = 'EmpleadoRoll'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 224632
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        HyperlinkEnabled = False
        DataField = 'NumeroSS'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 245269
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText162: TppDBText
        UserName = 'DBText162'
        HyperlinkEnabled = False
        DataField = 'Sueldo'
        DataPipeline = plempleados
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 90223
        mmTop = 265
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText164: TppDBText
        UserName = 'DBText164'
        HyperlinkEnabled = False
        DataField = 'SueldoMes'
        DataPipeline = plempleados
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 109802
        mmTop = 265
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 245799
        mmTop = 1852
        mmWidth = 20108
        BandType = 8
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'TipoEmpleadoID'
      DataPipeline = plempleados
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plempleados'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape13'
          Brush.Color = clGray
          Pen.Style = psClear
          mmHeight = 5556
          mmLeft = 0
          mmTop = 0
          mmWidth = 267230
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tipo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 529
          mmTop = 265
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppDBText45: TppDBText
          UserName = 'DBText45'
          HyperlinkEnabled = False
          DataField = 'TipoEmpleado'
          DataPipeline = plempleados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plempleados'
          mmHeight = 4763
          mmLeft = 20638
          mmTop = 265
          mmWidth = 94192
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'DepartamentoID'
      DataPipeline = plempleados
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plempleados'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppShape5: TppShape
          UserName = 'Shape14'
          Brush.Color = 12763328
          Pen.Style = psClear
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 267230
          BandType = 3
          GroupNo = 1
        end
        object ppLabel93: TppLabel
          UserName = 'Label93'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Departament:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 12435
          mmTop = 265
          mmWidth = 25929
          BandType = 3
          GroupNo = 1
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          HyperlinkEnabled = False
          DataField = 'Departamento'
          DataPipeline = plempleados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plempleados'
          mmHeight = 4498
          mmLeft = 38894
          mmTop = 265
          mmWidth = 109538
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppShape24: TppShape
          UserName = 'Shape24'
          Brush.Color = 12763328
          Pen.Style = psClear
          mmHeight = 5027
          mmLeft = 0
          mmTop = 265
          mmWidth = 267230
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc57: TppDBCalc
          UserName = 'DBCalc57'
          HyperlinkEnabled = False
          DataField = 'EmpleadoID'
          DataPipeline = plempleados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plempleados'
          mmHeight = 3175
          mmLeft = 33338
          mmTop = 529
          mmWidth = 30692
          BandType = 5
          GroupNo = 1
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cantidad Emp Depto :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 529
          mmWidth = 32279
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'SecionID'
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand9: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape15'
          Brush.Color = 14803425
          Pen.Style = psClear
          mmHeight = 4763
          mmLeft = 0
          mmTop = 0
          mmWidth = 267230
          BandType = 3
          GroupNo = 2
        end
        object ppLabel94: TppLabel
          UserName = 'Label94'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Seccion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 38894
          mmTop = 265
          mmWidth = 23548
          BandType = 3
          GroupNo = 2
        end
        object ppDBText47: TppDBText
          UserName = 'DBText47'
          HyperlinkEnabled = False
          DataField = 'Seccion'
          DataPipeline = plempleados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plempleados'
          mmHeight = 4233
          mmLeft = 63765
          mmTop = 265
          mmWidth = 90488
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 2117
        mmPrintPosition = 0
        object ppShape16: TppShape
          UserName = 'Shape16'
          Brush.Color = 14803425
          Pen.Style = psClear
          mmHeight = 1323
          mmLeft = 0
          mmTop = 529
          mmWidth = 267230
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object plempleados: TppDBPipeline
    DataSource = dsEmpleados
    UserName = 'plempleados'
    Left = 356
    Top = 504
  end
  object dsEmpleados: TDataSource
    DataSet = Empleados
    Left = 452
    Top = 504
  end
  object qryCedulaExiste: TADOQuery
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = 'cedula'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '  cedula'
      'from'
      '  empleado'
      'where'
      '  cedula = :cedula')
    Left = 74
    Top = 430
  end
  object rsSupervisor: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select EmpleadoID, Empleado from empleado order by Empleado'
    Parameters = <>
    Left = 216
    Top = 260
    object rsSupervisorEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object rsSupervisorEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object dsSuper: TDataSource
    DataSet = rsSupervisor
    Left = 310
    Top = 262
  end
end

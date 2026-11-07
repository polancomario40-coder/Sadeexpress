inherited OpticaEvaluacion: TOpticaEvaluacion
  Left = 450
  Top = 109
  ActiveControl = dxDBEdit3
  Caption = 'OpticaEvaluacion'
  ClientHeight = 543
  ClientWidth = 489
  Color = cl3DLight
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 8
    Top = 50
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label7: TLabel [1]
    Left = 285
    Top = 56
    Width = 52
    Height = 13
    Caption = 'Referencia'
  end
  object Label9: TLabel [2]
    Left = 8
    Top = 81
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  inherited Bevel1: TBevel
    Width = 489
  end
  object Label12: TLabel [4]
    Left = 8
    Top = 130
    Width = 39
    Height = 13
    Caption = 'Montura'
  end
  object Label1: TLabel [5]
    Left = 8
    Top = 156
    Width = 55
    Height = 13
    Caption = 'Color Cristal'
  end
  object Label27: TLabel [6]
    Left = 8
    Top = 182
    Width = 58
    Height = 13
    Caption = 'Proxima Cita'
  end
  object Label28: TLabel [7]
    Left = 8
    Top = 210
    Width = 114
    Height = 13
    Caption = 'Correo para Notificacion'
  end
  object Label29: TLabel [8]
    Left = 39
    Top = 458
    Width = 39
    Height = 13
    Caption = 'Doctor'
    FocusControl = DBEdit13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [9]
    Left = 39
    Top = 500
    Width = 39
    Height = 13
    Caption = 'Doctor'
    FocusControl = DBEdit13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 489
    inherited nuevo: TwwNavButton
      Width = 62
    end
    inherited editar: TwwNavButton
      Left = 62
      Width = 61
    end
    inherited guardar: TwwNavButton
      Left = 123
      Width = 61
    end
    inherited cancelar: TwwNavButton
      Left = 184
      Width = 61
    end
    inherited borrar: TwwNavButton
      Left = 245
      Width = 61
    end
    inherited BLocalizarx: TwwNavButton
      Left = 306
      Width = 61
    end
    object bPrint: TwwNavButton [6]
      Left = 367
      Top = 0
      Width = 61
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
      Visible = False
    end
    inherited salir: TwwNavButton
      Left = 428
      Width = 61
      Index = 7
    end
  end
  object dxDBEdit2: TdxDBEdit [11]
    Left = 44
    Top = 53
    Width = 84
    Style.BorderColor = 9426669
    TabOrder = 0
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit3: TdxDBEdit [12]
    Left = 344
    Top = 53
    Width = 113
    Style.BorderColor = 9426669
    TabOrder = 1
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object FindCliente: TButton [13]
    Left = 46
    Top = 80
    Width = 26
    Height = 22
    Caption = '...'
    TabOrder = 2
    TabStop = False
    OnClick = FindClienteClick
  end
  object dxDBEdit6: TdxDBEdit [14]
    Left = 71
    Top = 80
    Width = 89
    Style.BorderColor = 9426669
    TabOrder = 3
    OnDblClick = dxDBEdit6DblClick
    DataField = 'idCliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit11: TdxDBEdit [15]
    Left = 46
    Top = 101
    Width = 409
    Style.BorderColor = 9426669
    TabOrder = 6
    DataField = 'Cliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  inherited Grid: TwwDBGrid
    Left = 396
    Top = 306
    Width = 23
    Height = 52
    ControlType.Strings = (
      'Oferta;CheckBox;true;false')
    OnCellChanged = GridCellChanged
    DataSource = nil
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    ParentColor = True
    ParentFont = False
    TabOrder = 4
    Visible = False
    object GridIButton: TwwIButton
      Left = 0
      Top = 0
      Width = 13
      Height = 22
      AllowAllUp = True
    end
  end
  object dxDBEdit5: TdxDBEdit [17]
    Left = 70
    Top = 131
    Width = 267
    Style.BorderColor = 9426669
    TabOrder = 7
    DataField = 'Montura'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object PageControl1: TPageControl [18]
    Left = 21
    Top = 244
    Width = 441
    Height = 288
    ActivePage = TabSheet1
    Anchors = [akLeft, akBottom]
    MultiLine = True
    TabOrder = 8
    object TabSheet1: TTabSheet
      Caption = 'Notificacion'
      object Label8: TLabel
        Left = 16
        Top = 73
        Width = 32
        Height = 13
        Caption = 'Doctor'
      end
      object Label30: TLabel
        Left = 19
        Top = 234
        Width = 39
        Height = 13
        Caption = 'Doctor'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dxDBMemo1: TdxDBMemo
        Left = 12
        Top = 30
        Width = 411
        Style.BorderColor = 9426669
        TabOrder = 0
        DataField = 'Observaciones'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 179
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Notas del Cliente'
      ImageIndex = 3
      object Label31: TLabel
        Left = 17
        Top = 232
        Width = 39
        Height = 13
        Caption = 'Doctor'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dxDBMemo3: TdxDBMemo
        Left = 2
        Top = 2
        Width = 428
        Style.BorderColor = 9426669
        TabOrder = 0
        DataField = 'Notas'
        DataSource = dsClienteAct
        ReadOnly = True
        StyleController = dm.dxEstilo
        Height = 92
        StoredValues = 64
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Receta Original'
      ImageIndex = 3
      object Label3: TLabel
        Left = 56
        Top = 27
        Width = 50
        Height = 13
        Caption = 'ESPERA'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 127
        Top = 27
        Width = 20
        Height = 13
        Caption = 'CIL'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 184
        Top = 27
        Width = 23
        Height = 13
        Caption = 'EJE'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 243
        Top = 27
        Width = 27
        Height = 13
        Caption = 'ADD'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 311
        Top = 27
        Width = 18
        Height = 13
        Caption = 'DP'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 371
        Top = 27
        Width = 24
        Height = 13
        Caption = 'ALT'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 33
        Top = 27
        Width = 18
        Height = 13
        Caption = 'RX'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 33
        Top = 52
        Width = 16
        Height = 13
        Caption = 'OD'
        FocusControl = DBEdit1
      end
      object Label16: TLabel
        Left = 33
        Top = 78
        Width = 11
        Height = 13
        Caption = 'OI'
        FocusControl = DBEdit1
      end
      object Label32: TLabel
        Left = 20
        Top = 230
        Width = 39
        Height = 13
        Caption = 'Doctor'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBCheckBox1: TDBCheckBox
        Left = 12
        Top = 154
        Width = 97
        Height = 17
        Caption = 'Diabetes'
        DataField = 'Diabetes'
        DataSource = DS
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 100
        Top = 154
        Width = 97
        Height = 17
        Caption = 'Hipertension'
        DataField = 'Hipertension'
        DataSource = DS
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 212
        Top = 154
        Width = 97
        Height = 17
        Caption = 'Toxoplasmosis'
        DataField = 'Toxoplasmosis'
        DataSource = DS
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 324
        Top = 154
        Width = 97
        Height = 17
        Caption = 'CirugiasOculares'
        DataField = 'CirugiasOculares'
        DataSource = DS
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit1: TDBEdit
        Left = 56
        Top = 46
        Width = 40
        Height = 19
        DataField = 'ESPERAOD'
        DataSource = DS2
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 56
        Top = 73
        Width = 40
        Height = 19
        DataField = 'ESPERAOI'
        DataSource = DS2
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 116
        Top = 46
        Width = 40
        Height = 19
        DataField = 'CILOD'
        DataSource = DS2
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 116
        Top = 73
        Width = 40
        Height = 19
        DataField = 'CILOI'
        DataSource = DS2
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 176
        Top = 46
        Width = 40
        Height = 19
        DataField = 'EJEOD'
        DataSource = DS2
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 176
        Top = 73
        Width = 40
        Height = 19
        DataField = 'EJEOI'
        DataSource = DS2
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 238
        Top = 46
        Width = 40
        Height = 19
        DataField = 'ADDOD'
        DataSource = DS2
        TabOrder = 10
      end
      object DBEdit8: TDBEdit
        Left = 238
        Top = 73
        Width = 40
        Height = 19
        DataField = 'ADDOI'
        DataSource = DS2
        TabOrder = 11
      end
      object DBEdit9: TDBEdit
        Left = 301
        Top = 46
        Width = 40
        Height = 19
        DataField = 'DPOD'
        DataSource = DS2
        TabOrder = 12
      end
      object DBEdit10: TDBEdit
        Left = 301
        Top = 73
        Width = 40
        Height = 19
        DataField = 'DPOI'
        DataSource = DS2
        TabOrder = 13
      end
      object DBEdit11: TDBEdit
        Left = 363
        Top = 46
        Width = 40
        Height = 19
        DataField = 'ALTOD'
        DataSource = DS2
        TabOrder = 14
      end
      object DBEdit12: TDBEdit
        Left = 363
        Top = 73
        Width = 40
        Height = 19
        DataField = 'ALTOI'
        DataSource = DS2
        TabOrder = 15
      end
    end
    object tsNotaReferencia: TTabSheet
      Caption = 'Diagnostico'
      ImageIndex = 4
      object Label17: TLabel
        Left = 56
        Top = 27
        Width = 50
        Height = 13
        Caption = 'ESPERA'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 127
        Top = 27
        Width = 20
        Height = 13
        Caption = 'CIL'
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 184
        Top = 27
        Width = 23
        Height = 13
        Caption = 'EJE'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 243
        Top = 27
        Width = 27
        Height = 13
        Caption = 'ADD'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 311
        Top = 27
        Width = 18
        Height = 13
        Caption = 'DP'
        FocusControl = DBEdit21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 371
        Top = 27
        Width = 24
        Height = 13
        Caption = 'ALT'
        FocusControl = DBEdit23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 33
        Top = 27
        Width = 18
        Height = 13
        Caption = 'RX'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 33
        Top = 52
        Width = 16
        Height = 13
        Caption = 'OD'
        FocusControl = DBEdit13
      end
      object Label25: TLabel
        Left = 33
        Top = 78
        Width = 11
        Height = 13
        Caption = 'OI'
        FocusControl = DBEdit13
      end
      object Label26: TLabel
        Left = 22
        Top = 134
        Width = 32
        Height = 13
        Caption = 'Doctor'
        FocusControl = DBEdit1
      end
      object Label33: TLabel
        Left = 19
        Top = 232
        Width = 39
        Height = 13
        Caption = 'Doctor'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dxDBMemo4: TdxDBMemo
        Left = 4
        Top = 114
        Width = 428
        Style.BorderColor = 9426669
        TabOrder = 0
        DataField = 'dianostico'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 92
      end
      object DBEdit13: TDBEdit
        Left = 56
        Top = 46
        Width = 40
        Height = 19
        DataField = 'ESPERAOD'
        DataSource = DS
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = 56
        Top = 73
        Width = 40
        Height = 19
        DataField = 'ESPERAOI'
        DataSource = DS
        TabOrder = 2
      end
      object DBEdit15: TDBEdit
        Left = 116
        Top = 46
        Width = 40
        Height = 19
        DataField = 'CILOD'
        DataSource = DS
        TabOrder = 3
      end
      object DBEdit16: TDBEdit
        Left = 116
        Top = 73
        Width = 40
        Height = 19
        DataField = 'CILOI'
        DataSource = DS
        TabOrder = 4
      end
      object DBEdit17: TDBEdit
        Left = 176
        Top = 46
        Width = 40
        Height = 19
        DataField = 'EJEOD'
        DataSource = DS
        TabOrder = 5
      end
      object DBEdit18: TDBEdit
        Left = 176
        Top = 73
        Width = 40
        Height = 19
        DataField = 'EJEOI'
        DataSource = DS
        TabOrder = 6
      end
      object DBEdit19: TDBEdit
        Left = 238
        Top = 46
        Width = 40
        Height = 19
        DataField = 'ADDOD'
        DataSource = DS
        TabOrder = 7
      end
      object DBEdit20: TDBEdit
        Left = 238
        Top = 73
        Width = 40
        Height = 19
        DataField = 'ADDOI'
        DataSource = DS
        TabOrder = 8
      end
      object DBEdit21: TDBEdit
        Left = 301
        Top = 46
        Width = 40
        Height = 19
        DataField = 'DPOD'
        DataSource = DS
        TabOrder = 9
      end
      object DBEdit22: TDBEdit
        Left = 301
        Top = 73
        Width = 40
        Height = 19
        DataField = 'DPOI'
        DataSource = DS
        TabOrder = 10
      end
      object DBEdit23: TDBEdit
        Left = 363
        Top = 46
        Width = 40
        Height = 19
        DataField = 'ALTOD'
        DataSource = DS
        TabOrder = 11
      end
      object DBEdit24: TDBEdit
        Left = 363
        Top = 73
        Width = 40
        Height = 19
        DataField = 'ALTOI'
        DataSource = DS
        TabOrder = 12
      end
    end
  end
  object dxDBEdit1: TdxDBEdit [19]
    Left = 130
    Top = 53
    Width = 53
    Style.BorderColor = 9426669
    TabOrder = 9
    TabStop = False
    DataField = 'hora'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit4: TdxDBEdit [20]
    Left = 70
    Top = 157
    Width = 267
    Style.BorderColor = 9426669
    TabOrder = 10
    DataField = 'ColorCristal'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBDateEdit1: TdxDBDateEdit [21]
    Left = 70
    Top = 184
    Width = 121
    TabOrder = 11
    DataField = 'fechaproxima'
    DataSource = DS
  end
  object dxDBEdit7: TdxDBEdit [22]
    Left = 138
    Top = 211
    Width = 267
    Style.BorderColor = 9426669
    TabOrder = 12
    DataField = 'email'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBLookupEdit1: TdxDBLookupEdit [23]
    Left = 87
    Top = 502
    Width = 350
    Style.BorderColor = 9426669
    TabOrder = 13
    DataField = 'idEmpleado'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    ListFieldName = 'Empleado'
    CanDeleteText = True
    KeyFieldName = 'idEmpleado'
    ListSource = dsEmpleado
    LookupKeyValue = Null
    StoredValues = 64
  end
  object dxDBTimeEdit1: TdxDBTimeEdit [24]
    Left = 196
    Top = 184
    Width = 121
    TabOrder = 14
    DataField = 'hora'
    DataSource = DS
    StoredValues = 4
  end
  inherited DS: TwwDataSource
    Left = 235
    Top = 95
  end
  inherited ImageList: TImageList
    Left = 428
    Top = 150
  end
  inherited Acciones: TActionList
    Left = 384
    Top = 116
    inherited AAnular: TAction
      Caption = 'Anular'
      ImageIndex = 3
    end
    object Clientes: TAction
      Caption = 'Clientes'
      Hint = 'F11 Lista Clientes'
      ShortCut = 122
      OnExecute = ClientesExecute
    end
    object SendMail: TAction
      Caption = 'eMail'
    end
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'OpticaRSEvaluacion;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idEvaluacion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 190
    Top = 100
    object RSidEvaluacion: TGuidField
      FieldName = 'idEvaluacion'
      FixedChar = True
      Size = 38
    end
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
      OnValidate = RSidClienteValidate
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSMontura: TStringField
      FieldName = 'Montura'
      Size = 100
    end
    object RSColorCristal: TStringField
      FieldName = 'ColorCristal'
      Size = 100
    end
    object RSDiabetes: TBooleanField
      FieldName = 'Diabetes'
    end
    object RSHipertension: TBooleanField
      FieldName = 'Hipertension'
    end
    object RSToxoplasmosis: TBooleanField
      FieldName = 'Toxoplasmosis'
    end
    object RSCirugiasOculares: TBooleanField
      FieldName = 'CirugiasOculares'
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Size = 200
    end
    object RShora: TDateTimeField
      FieldName = 'hora'
      DisplayFormat = 'HH:MM'
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
      Size = 50
    end
    object RSidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
      Required = True
    end
    object RSusuario: TStringField
      FieldName = 'usuario'
      Size = 30
    end
    object RSObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object RSdianostico: TStringField
      FieldName = 'dianostico'
      Size = 500
    end
    object RSESPERAOD: TStringField
      FieldName = 'ESPERAOD'
      Size = 10
    end
    object RSCILOD: TStringField
      FieldName = 'CILOD'
      Size = 10
    end
    object RSEJEOD: TStringField
      FieldName = 'EJEOD'
      Size = 10
    end
    object RSADDOD: TStringField
      FieldName = 'ADDOD'
      Size = 10
    end
    object RSDPOD: TStringField
      FieldName = 'DPOD'
      Size = 10
    end
    object RSALTOD: TStringField
      FieldName = 'ALTOD'
      Size = 10
    end
    object RSESPERAOI: TStringField
      FieldName = 'ESPERAOI'
      Size = 10
    end
    object RSCILOI: TStringField
      FieldName = 'CILOI'
      Size = 10
    end
    object RSEJEOI: TStringField
      FieldName = 'EJEOI'
      Size = 10
    end
    object RSADDOI: TStringField
      FieldName = 'ADDOI'
      Size = 10
    end
    object RSDPOI: TStringField
      FieldName = 'DPOI'
      Size = 10
    end
    object RSALTOI: TStringField
      FieldName = 'ALTOI'
      Size = 10
    end
    object RSfechaproxima: TDateTimeField
      FieldName = 'fechaproxima'
    end
    object RSemail: TStringField
      FieldName = 'email'
      Size = 100
    end
  end
  inherited DS2: TwwDataSource
    Left = 397
    Top = 71
  end
  inherited RSDet: TADODataSet
    OnNewRecord = RSDetNewRecord
    CommandText = 'OpticaRSEvaluaciondet'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idEvaluacion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 356
    Top = 70
    object RSDetidEvaluacion: TGuidField
      FieldName = 'idEvaluacion'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidEvaluacionDet: TGuidField
      FieldName = 'idEvaluacionDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetESPERAOD: TStringField
      FieldName = 'ESPERAOD'
      Size = 10
    end
    object RSDetCILOD: TStringField
      FieldName = 'CILOD'
      Size = 10
    end
    object RSDetEJEOD: TStringField
      FieldName = 'EJEOD'
      Size = 10
    end
    object RSDetADDOD: TStringField
      FieldName = 'ADDOD'
      Size = 10
    end
    object RSDetDPOD: TStringField
      FieldName = 'DPOD'
      Size = 10
    end
    object RSDetALTOD: TStringField
      FieldName = 'ALTOD'
      Size = 10
    end
    object RSDetESPERAOI: TStringField
      FieldName = 'ESPERAOI'
      Size = 10
    end
    object RSDetCILOI: TStringField
      FieldName = 'CILOI'
      Size = 10
    end
    object RSDetEJEOI: TStringField
      FieldName = 'EJEOI'
      Size = 10
    end
    object RSDetADDOI: TStringField
      FieldName = 'ADDOI'
      Size = 10
    end
    object RSDetDPOI: TStringField
      FieldName = 'DPOI'
      Size = 10
    end
    object RSDetALTOI: TStringField
      FieldName = 'ALTOI'
      Size = 10
    end
  end
  object ClienteAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'ClienteAct;1'
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
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 244
    Top = 50
    object ClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object ClienteActLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object ClienteActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object ClienteActContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object ClienteActidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object ClienteActDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object ClienteActSector: TStringField
      FieldName = 'Sector'
    end
    object ClienteActCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object ClienteActTelefono: TStringField
      FieldName = 'Telefono'
    end
    object ClienteActNoPagaItbis: TBooleanField
      FieldName = 'NoPagaItbis'
    end
    object ClienteActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object ClienteActFax: TStringField
      FieldName = 'Fax'
    end
    object ClienteActeMail: TStringField
      FieldName = 'eMail'
      Size = 50
    end
    object ClienteActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object ClienteActCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object ClienteActidCuenta: TStringField
      FieldName = 'idCuenta'
    end
    object ClienteActidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object ClienteActidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object ClienteActNotas: TStringField
      FieldName = 'Notas'
      Size = 2000
    end
  end
  object dsEstacionAct: TDataSource
    DataSet = ClienteAct
    Left = 542
    Top = 40
  end
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'spVendedores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 286
    Top = 622
  end
  object dsEmpleado: TDataSource
    DataSet = Empleado
    Left = 328
    Top = 622
  end
  object dsClienteAct: TDataSource
    DataSet = ClienteAct
    Left = 190
    Top = 50
  end
  object rsReceta: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnNewRecord = rsRecetaNewRecord
    CommandText = 'OpticaRSEvaluaciondetReceta'
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
        Name = '@idEvaluacion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 314
    Top = 108
    object rsRecetaidEvaluacion: TGuidField
      FieldName = 'idEvaluacion'
      FixedChar = True
      Size = 38
    end
    object rsRecetaidEvaluacionDet: TGuidField
      FieldName = 'idEvaluacionDet'
      FixedChar = True
      Size = 38
    end
    object rsRecetadianostico: TStringField
      FieldName = 'dianostico'
      Size = 500
    end
    object rsRecetaESPERAOD: TStringField
      FieldName = 'ESPERAOD'
      Size = 10
    end
    object rsRecetaCILOD: TStringField
      FieldName = 'CILOD'
      Size = 10
    end
    object rsRecetaEJEOD: TStringField
      FieldName = 'EJEOD'
      Size = 10
    end
    object rsRecetaADDOD: TStringField
      FieldName = 'ADDOD'
      Size = 10
    end
    object rsRecetaDPOD: TStringField
      FieldName = 'DPOD'
      Size = 10
    end
    object rsRecetaALTOD: TStringField
      FieldName = 'ALTOD'
      Size = 10
    end
    object rsRecetaESPERAOI: TStringField
      FieldName = 'ESPERAOI'
      Size = 10
    end
    object rsRecetaCILOI: TStringField
      FieldName = 'CILOI'
      Size = 10
    end
    object rsRecetaEJEOI: TStringField
      FieldName = 'EJEOI'
      Size = 10
    end
    object rsRecetaADDOI: TStringField
      FieldName = 'ADDOI'
      Size = 10
    end
    object rsRecetaDPOI: TStringField
      FieldName = 'DPOI'
      Size = 10
    end
    object rsRecetaALTOI: TStringField
      FieldName = 'ALTOI'
      Size = 10
    end
  end
  object dsReceta: TwwDataSource
    AutoEdit = False
    DataSet = rsReceta
    Left = 381
    Top = 119
  end
end

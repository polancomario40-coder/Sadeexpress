inherited Horario: THorario
  Left = 283
  Top = 192
  Caption = 'Horarios'
  ClientHeight = 308
  ClientWidth = 625
  Color = 16311512
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 9
    Top = 47
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel [1]
    Left = 248
    Top = 45
    Width = 35
    Height = 13
    Caption = 'Horario'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 96
    Width = 28
    Height = 13
    Caption = 'Lunes'
  end
  object Label5: TLabel [3]
    Left = 96
    Top = 96
    Width = 33
    Height = 13
    Caption = 'Martes'
  end
  object Label7: TLabel [4]
    Left = 184
    Top = 96
    Width = 44
    Height = 13
    Caption = 'Miercoles'
  end
  object Label9: TLabel [5]
    Left = 272
    Top = 96
    Width = 34
    Height = 13
    Caption = 'Jueves'
  end
  object Label11: TLabel [6]
    Left = 360
    Top = 96
    Width = 35
    Height = 13
    Caption = 'Viernes'
  end
  object Label13: TLabel [7]
    Left = 448
    Top = 96
    Width = 36
    Height = 13
    Caption = 'Sabado'
  end
  object Label15: TLabel [8]
    Left = 536
    Top = 96
    Width = 41
    Height = 13
    Caption = 'Domingo'
  end
  inherited Bevel1: TBevel
    Width = 625
  end
  object Label8: TLabel [10]
    Left = 112
    Top = 45
    Width = 52
    Height = 13
    Caption = 'Referencia'
  end
  object Gradient1: TGradient [11]
    Left = 2
    Top = 90
    Width = 621
    Height = 6
    Align = alCustom
    ColorBegin = 16752228
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object dxDBTimeEdit1: TdxDBTimeEdit [12]
    Left = 8
    Top = 112
    Width = 80
    Style.BorderStyle = xbsFlat
    TabOrder = 1
    DataField = 'LunesEnt'
    DataSource = DS
    HideSelection = False
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit2: TdxDBTimeEdit [13]
    Left = 8
    Top = 136
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 2
    DataField = 'LunesSal'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit3: TdxDBTimeEdit [14]
    Left = 96
    Top = 112
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 3
    DataField = 'MartesEnt'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit4: TdxDBTimeEdit [15]
    Left = 96
    Top = 136
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 4
    DataField = 'MartesSal'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit5: TdxDBTimeEdit [16]
    Left = 184
    Top = 112
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 5
    DataField = 'MiercolesEnt'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit6: TdxDBTimeEdit [17]
    Left = 184
    Top = 136
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 6
    DataField = 'MiercolesSal'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit7: TdxDBTimeEdit [18]
    Left = 272
    Top = 112
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 7
    DataField = 'JuevesEnt'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit8: TdxDBTimeEdit [19]
    Left = 272
    Top = 136
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 8
    DataField = 'JuevesSal'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit9: TdxDBTimeEdit [20]
    Left = 360
    Top = 112
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 9
    DataField = 'ViernesEnt'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit10: TdxDBTimeEdit [21]
    Left = 360
    Top = 136
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 10
    DataField = 'ViernesSal'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit11: TdxDBTimeEdit [22]
    Left = 448
    Top = 112
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 11
    DataField = 'SabadoEnt'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit12: TdxDBTimeEdit [23]
    Left = 448
    Top = 136
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 12
    DataField = 'SabadoSal'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit13: TdxDBTimeEdit [24]
    Left = 536
    Top = 112
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 13
    DataField = 'DomingoEnt'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBTimeEdit14: TdxDBTimeEdit [25]
    Left = 536
    Top = 136
    Width = 81
    Style.BorderStyle = xbsFlat
    TabOrder = 14
    DataField = 'DomingoSal'
    DataSource = DS
    StyleController = dm.dxEstilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object DBEdit4: TDBEdit [26]
    Left = 8
    Top = 160
    Width = 80
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'LunesHoras'
    DataSource = DS
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 15
  end
  object DBEdit5: TDBEdit [27]
    Left = 96
    Top = 160
    Width = 80
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'MartesHoras'
    DataSource = DS
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 16
  end
  object DBEdit6: TDBEdit [28]
    Left = 184
    Top = 160
    Width = 80
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'MiercolesHoras'
    DataSource = DS
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 17
  end
  object DBEdit7: TDBEdit [29]
    Left = 272
    Top = 160
    Width = 80
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'JuevesHoras'
    DataSource = DS
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 18
  end
  object DBEdit8: TDBEdit [30]
    Left = 360
    Top = 160
    Width = 80
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'ViernesHoras'
    DataSource = DS
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 19
  end
  object DBEdit9: TDBEdit [31]
    Left = 448
    Top = 160
    Width = 80
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'SabadoHoras'
    DataSource = DS
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 21
  end
  object DBEdit10: TDBEdit [32]
    Left = 536
    Top = 160
    Width = 80
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'DomingoHoras'
    DataSource = DS
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 20
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 625
    inherited nuevo: TwwNavButton
      Width = 90
    end
    inherited editar: TwwNavButton
      Left = 90
      Width = 90
    end
    inherited guardar: TwwNavButton
      Left = 180
      Width = 89
    end
    inherited cancelar: TwwNavButton
      Left = 269
      Width = 89
    end
    inherited borrar: TwwNavButton
      Left = 358
      Width = 89
    end
    inherited BLocalizarx: TwwNavButton
      Left = 447
      Width = 89
    end
    inherited salir: TwwNavButton
      Left = 536
      Width = 89
    end
  end
  object cxDBTextEdit3: TcxDBTextEdit [34]
    Left = 8
    Top = 61
    Width = 97
    Height = 21
    DataBinding.DataField = 'idHorario'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 22
  end
  object cxDBTextEdit1: TcxDBTextEdit [35]
    Left = 109
    Top = 61
    Width = 133
    Height = 21
    DataBinding.DataField = 'Referencia'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 23
  end
  object cxDBTextEdit2: TcxDBTextEdit [36]
    Left = 246
    Top = 61
    Width = 373
    Height = 21
    DataBinding.DataField = 'Horario'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 24
  end
  object cxGroupBox1: TcxGroupBox [37]
    Left = 8
    Top = 186
    Width = 609
    Height = 115
    Caption = 'Configuraci'#243'n'
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 25
    object Label4: TLabel
      Left = 348
      Top = 19
      Width = 181
      Height = 13
      Caption = 'Minutos de Entrada o Salida Ajustable'
    end
    object Label6: TLabel
      Left = 434
      Top = 42
      Width = 95
      Height = 13
      Caption = 'Tiempo de almuerzo'
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 13
      Top = 17
      Width = 264
      Height = 21
      Caption = 'Dias de descanso se paga doble'
      DataBinding.DataField = 'DescansoDoble'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 13
      Top = 65
      Width = 248
      Height = 21
      Caption = 'Paga horas nocturnas'
      DataBinding.DataField = 'PagaNocturna'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 13
      Top = 88
      Width = 318
      Height = 21
      Caption = 'Horas extras si trabaja mas de las horas de su jornada diaria'
      DataBinding.DataField = 'ExtraDiario'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 2
    end
    object cxDBCheckBox4: TcxDBCheckBox
      Left = 13
      Top = 40
      Width = 262
      Height = 21
      Caption = 'Genera horas normales automaticamente ?'
      DataBinding.DataField = 'GeneraHorasNormales'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 3
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 535
      Top = 15
      Width = 64
      Height = 21
      DataBinding.DataField = 'MinutosTarde'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 4
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 535
      Top = 39
      Width = 64
      Height = 21
      DataBinding.DataField = 'TiempoAlmuerzo'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 5
    end
  end
  inherited DS: TwwDataSource
    Left = 317
    Top = 189
  end
  inherited ImageList: TImageList
    Left = 374
    Top = 184
  end
  inherited Acciones: TActionList
    Left = 264
    Top = 184
  end
  inherited RS: TADODataSet
    CommandText = 'rsHorario;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idHorario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 208
    Top = 184
    object RSidHorario: TStringField
      FieldName = 'idHorario'
      Size = 16
    end
    object RSHorario: TStringField
      FieldName = 'Horario'
      Size = 50
    end
    object RSLunesEnt: TDateTimeField
      FieldName = 'LunesEnt'
    end
    object RSLunesSal: TDateTimeField
      FieldName = 'LunesSal'
    end
    object RSMartesEnt: TDateTimeField
      FieldName = 'MartesEnt'
    end
    object RSMartesSal: TDateTimeField
      FieldName = 'MartesSal'
    end
    object RSMiercolesEnt: TDateTimeField
      FieldName = 'MiercolesEnt'
    end
    object RSMiercolesSal: TDateTimeField
      FieldName = 'MiercolesSal'
    end
    object RSJuevesEnt: TDateTimeField
      FieldName = 'JuevesEnt'
    end
    object RSJuevesSal: TDateTimeField
      FieldName = 'JuevesSal'
    end
    object RSViernesEnt: TDateTimeField
      FieldName = 'ViernesEnt'
    end
    object RSViernesSal: TDateTimeField
      FieldName = 'ViernesSal'
    end
    object RSSabadoEnt: TDateTimeField
      FieldName = 'SabadoEnt'
    end
    object RSSabadoSal: TDateTimeField
      FieldName = 'SabadoSal'
    end
    object RSDomingoEnt: TDateTimeField
      FieldName = 'DomingoEnt'
    end
    object RSDomingoSal: TDateTimeField
      FieldName = 'DomingoSal'
    end
    object RSLunesHoras: TIntegerField
      FieldName = 'LunesHoras'
      ReadOnly = True
    end
    object RSMartesHoras: TIntegerField
      FieldName = 'MartesHoras'
      ReadOnly = True
    end
    object RSMiercolesHoras: TIntegerField
      FieldName = 'MiercolesHoras'
      ReadOnly = True
    end
    object RSJuevesHoras: TIntegerField
      FieldName = 'JuevesHoras'
      ReadOnly = True
    end
    object RSViernesHoras: TIntegerField
      FieldName = 'ViernesHoras'
      ReadOnly = True
    end
    object RSDomingoHoras: TIntegerField
      FieldName = 'DomingoHoras'
      ReadOnly = True
    end
    object RSDescansoDoble: TBooleanField
      FieldName = 'DescansoDoble'
    end
    object RSPagaNocturna: TBooleanField
      FieldName = 'PagaNocturna'
    end
    object RSExtraDiario: TBooleanField
      FieldName = 'ExtraDiario'
    end
    object RSMinutosTarde: TIntegerField
      FieldName = 'MinutosTarde'
    end
    object RSSabadoHoras: TIntegerField
      FieldName = 'SabadoHoras'
      ReadOnly = True
    end
    object RSTiempoAlmuerzo: TBCDField
      FieldName = 'TiempoAlmuerzo'
      Precision = 18
      Size = 2
    end
    object RSGeneraHorasNormales: TBooleanField
      FieldName = 'GeneraHorasNormales'
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
end

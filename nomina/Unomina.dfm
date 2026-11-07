inherited Nominas: TNominas
  Left = 296
  Top = 164
  Caption = 'Nominas'
  ClientHeight = 282
  ClientWidth = 521
  Color = 16114392
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 17
    Top = 54
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label2: TLabel [1]
    Left = 296
    Top = 100
    Width = 56
    Height = 13
    Caption = 'Fecha Pago'
  end
  object Label7: TLabel [2]
    Left = 17
    Top = 152
    Width = 64
    Height = 13
    Caption = 'Dias Feriados'
  end
  object Label8: TLabel [3]
    Left = 17
    Top = 100
    Width = 52
    Height = 13
    Caption = 'Frecuencia'
  end
  object Label9: TLabel [4]
    Left = 17
    Top = 126
    Width = 61
    Height = 13
    Caption = 'Grupo Emps.'
  end
  object Label10: TLabel [5]
    Left = 298
    Top = 126
    Width = 58
    Height = 13
    Caption = 'Mes de Nom'
  end
  object Label11: TLabel [6]
    Left = 298
    Top = 152
    Width = 52
    Height = 13
    Caption = 'Referencia'
  end
  inherited Bevel1: TBevel
    Width = 521
  end
  object Gradient1: TGradient [8]
    Left = 4
    Top = 80
    Width = 532
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 521
    inherited nuevo: TwwNavButton
      Width = 75
    end
    inherited editar: TwwNavButton
      Left = 75
    end
    inherited guardar: TwwNavButton
      Left = 150
    end
    inherited cancelar: TwwNavButton
      Left = 225
      Width = 74
    end
    inherited borrar: TwwNavButton
      Left = 299
      Width = 74
    end
    inherited BLocalizarx: TwwNavButton
      Left = 373
      Width = 74
    end
    inherited salir: TwwNavButton
      Left = 447
      Width = 74
    end
  end
  object cxDBCheckBox8: TcxDBCheckBox [10]
    Left = 166
    Top = 51
    Width = 67
    Height = 21
    Caption = 'Cerrada'
    DataBinding.DataField = 'Cerrada'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    TabOrder = 1
  end
  object cxDBTextEdit3: TcxDBTextEdit [11]
    Left = 90
    Top = 51
    Width = 70
    Height = 21
    DataBinding.DataField = 'NominaID'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBDateEdit2: TcxDBDateEdit [12]
    Left = 365
    Top = 96
    Width = 127
    Height = 21
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBCheckBox1: TcxDBCheckBox [13]
    Left = 354
    Top = 51
    Width = 159
    Height = 21
    Caption = 'Ultima Nomina del Mes (ISR)'
    DataBinding.DataField = 'ISR'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxDBTextEdit1: TcxDBTextEdit [14]
    Left = 365
    Top = 148
    Width = 127
    Height = 21
    DataBinding.DataField = 'NumeroNomina'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxGroupBox1: TcxGroupBox [15]
    Left = 4
    Top = 186
    Width = 269
    Height = 86
    Caption = '[ Per'#237'odo Trabajo ]'
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
    object Label12: TLabel
      Left = 16
      Top = 33
      Width = 30
      Height = 13
      Caption = 'Desde'
    end
    object Label13: TLabel
      Left = 16
      Top = 57
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 86
      Top = 26
      Width = 172
      Height = 21
      DataBinding.DataField = 'Desde'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 86
      Top = 54
      Width = 172
      Height = 21
      DataBinding.DataField = 'Hasta'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
  end
  object cxGroupBox2: TcxGroupBox [16]
    Left = 283
    Top = 186
    Width = 234
    Height = 86
    Caption = '[ Per'#237'odo Producci'#243'n ]'
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
    object Label14: TLabel
      Left = 16
      Top = 33
      Width = 30
      Height = 13
      Caption = 'Desde'
    end
    object Label15: TLabel
      Left = 16
      Top = 57
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 82
      Top = 26
      Width = 130
      Height = 21
      DataBinding.DataField = 'ProdDesde'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cxDBDateEdit5: TcxDBDateEdit
      Left = 82
      Top = 56
      Width = 130
      Height = 21
      DataBinding.DataField = 'ProdHasta'
      DataBinding.DataSource = DS
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
  end
  object cxDBTextEdit2: TcxDBTextEdit [17]
    Left = 90
    Top = 147
    Width = 70
    Height = 21
    DataBinding.DataField = 'DiaFeriado'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxDBImageComboBox2: TcxDBImageComboBox [18]
    Left = 365
    Top = 122
    Width = 127
    Height = 21
    DataBinding.DataField = 'MesCalendario'
    DataBinding.DataSource = DS
    Properties.Items = <
      item
        Description = 'ENERO'
        ImageIndex = 0
        Value = 1
      end
      item
        Description = 'FEBRERO'
        Value = 2
      end
      item
        Description = 'MARZO'
        Value = 3
      end
      item
        Description = 'ABRIL'
        Value = 4
      end
      item
        Description = 'MAYO'
        Value = 5
      end
      item
        Description = 'JUNIO'
        Value = 6
      end
      item
        Description = 'JULIO'
        Value = 7
      end
      item
        Description = 'AGOSTO'
        Value = 8
      end
      item
        Description = 'SEPTIEMBRE'
        Value = 9
      end
      item
        Description = 'OCTUBRE'
        Value = 10
      end
      item
        Description = 'NOVIEMBRE'
        Value = 11
      end
      item
        Description = 'DICIEMBRE'
        Value = 12
      end>
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [19]
    Left = 90
    Top = 122
    Width = 171
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
    TabOrder = 10
  end
  object cxDBLookupComboBox2: TcxDBLookupComboBox [20]
    Left = 90
    Top = 96
    Width = 171
    Height = 21
    DataBinding.DataField = 'TipoNominaID'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'TipoNominaID'
    Properties.ListColumns = <
      item
        FieldName = 'TipoNomina'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTipoNomina
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  inherited DS: TwwDataSource
    Left = 208
    Top = 64
  end
  inherited ImageList: TImageList
    Left = 206
    Top = 168
  end
  inherited Acciones: TActionList
    Left = 208
    Top = 224
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsNomina;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idNomina'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 208
    Top = 112
    object RSNominaID: TAutoIncField
      DisplayLabel = 'Nomina'
      FieldName = 'NominaID'
    end
    object RSTipoNominaID: TIntegerField
      FieldName = 'TipoNominaID'
    end
    object RSTipoEmpleadoID: TIntegerField
      FieldName = 'TipoEmpleadoID'
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object RSHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object RSProdDesde: TDateTimeField
      FieldName = 'ProdDesde'
    end
    object RSProdHasta: TDateTimeField
      FieldName = 'ProdHasta'
    end
    object RSDiaFeriado: TIntegerField
      FieldName = 'DiaFeriado'
    end
    object RSCerrada: TBooleanField
      FieldName = 'Cerrada'
    end
    object RSMesCalendario: TSmallintField
      FieldName = 'MesCalendario'
    end
    object RSNumeroNomina: TSmallintField
      FieldName = 'NumeroNomina'
    end
    object RSISR: TBooleanField
      FieldName = 'ISR'
    end
  end
  object qryTipoNomina: TADOQuery
    Connection = dm.Coneccion
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  TipoNomina')
    Left = 468
    Top = 156
    object qryTipoNominaTipoNominaID: TIntegerField
      FieldName = 'TipoNominaID'
    end
    object qryTipoNominaTipoNomina: TStringField
      FieldName = 'TipoNomina'
      Size = 10
    end
  end
  object qryTipoEmpleado: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select'
      '  *'
      'From'
      '  TipoEmpleado')
    Left = 471
    Top = 204
    object qryTipoEmpleadoTipoEmpleadoID: TAutoIncField
      FieldName = 'TipoEmpleadoID'
      ReadOnly = True
    end
    object qryTipoEmpleadoTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
  end
  object dsTipoNomina: TDataSource
    DataSet = qryTipoNomina
    Left = 382
    Top = 166
  end
  object dsTipoEmpleado: TDataSource
    DataSet = qryTipoEmpleado
    Left = 377
    Top = 222
  end
end

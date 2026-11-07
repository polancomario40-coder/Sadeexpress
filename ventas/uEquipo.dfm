inherited Equipo: TEquipo
  Left = 348
  Top = 185
  Caption = 'Equipos'
  ClientHeight = 533
  ClientWidth = 774
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 774
  end
  object Label1: TLabel [1]
    Left = 10
    Top = 82
    Width = 36
    Height = 13
    Caption = 'Equipo:'
  end
  object Label7: TLabel [2]
    Left = 266
    Top = 182
    Width = 88
    Height = 13
    Caption = 'Grupo de Trabajo:'
  end
  object Shape1: TShape [3]
    Left = 175
    Top = 64
    Width = 591
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Brush.Color = 8623235
    Pen.Style = psClear
  end
  object Label2: TLabel [4]
    Left = 11
    Top = 132
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label3: TLabel [5]
    Left = 11
    Top = 157
    Width = 29
    Height = 13
    Caption = 'Color:'
  end
  object Label4: TLabel [6]
    Left = 11
    Top = 182
    Width = 23
    Height = 13
    Caption = 'A'#241'o:'
  end
  object Label5: TLabel [7]
    Left = 10
    Top = 107
    Width = 41
    Height = 13
    Caption = 'Nombre:'
  end
  object Label6: TLabel [8]
    Left = 298
    Top = 132
    Width = 56
    Height = 13
    Caption = 'Propietario:'
  end
  object Label8: TLabel [9]
    Left = 299
    Top = 157
    Width = 55
    Height = 13
    Caption = 'Fecha Adq:'
  end
  object Shape2: TShape [10]
    Left = 136
    Top = 219
    Width = 630
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Brush.Color = 8623235
    Pen.Style = psClear
  end
  object Label9: TLabel [11]
    Left = 11
    Top = 238
    Width = 29
    Height = 13
    Caption = 'Placa:'
  end
  object Label10: TLabel [12]
    Left = 307
    Top = 238
    Width = 47
    Height = 13
    Caption = 'Matricula:'
  end
  object Label11: TLabel [13]
    Left = 11
    Top = 263
    Width = 66
    Height = 13
    Caption = 'Aseguradora:'
  end
  object Label12: TLabel [14]
    Left = 312
    Top = 263
    Width = 42
    Height = 13
    Caption = 'Poliza #:'
  end
  object Label13: TLabel [15]
    Left = 13
    Top = 331
    Width = 22
    Height = 13
    Caption = 'Foto'
  end
  object Label14: TLabel [16]
    Left = 248
    Top = 332
    Width = 28
    Height = 13
    Caption = 'Notas'
  end
  object Label15: TLabel [17]
    Left = 11
    Top = 288
    Width = 32
    Height = 13
    Caption = 'Tarifa:'
  end
  object Label16: TLabel [18]
    Left = 296
    Top = 288
    Width = 58
    Height = 13
    Caption = 'Colaterales:'
  end
  object Label17: TLabel [19]
    Left = 11
    Top = 312
    Width = 54
    Height = 13
    Caption = 'Capacidad:'
  end
  object Label18: TLabel [20]
    Left = 317
    Top = 312
    Width = 37
    Height = 13
    Caption = 'Unidad:'
  end
  object Label19: TLabel [21]
    Left = 330
    Top = 82
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 774
    inherited nuevo: TwwNavButton
      Width = 111
    end
    inherited editar: TwwNavButton
      Left = 111
      Width = 111
    end
    inherited guardar: TwwNavButton
      Left = 222
      Width = 111
    end
    inherited cancelar: TwwNavButton
      Left = 333
      Width = 111
    end
    inherited borrar: TwwNavButton
      Left = 444
      Width = 110
    end
    inherited BLocalizarx: TwwNavButton
      Left = 554
      Width = 110
    end
    inherited salir: TwwNavButton
      Left = 664
      Width = 110
    end
  end
  object cxLabel1: TcxLabel [23]
    Left = 8
    Top = 48
    Width = 157
    Height = 27
    Caption = 'Datos generales'
    ParentFont = False
    Properties.Transparent = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = 8623235
    Style.TextStyle = [fsBold]
  end
  object cxDBTextEdit1: TcxDBTextEdit [24]
    Left = 81
    Top = 78
    Width = 121
    Height = 21
    DataBinding.DataField = 'idEquipo'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxDBTextEdit2: TcxDBTextEdit [25]
    Left = 80
    Top = 103
    Width = 543
    Height = 21
    DataBinding.DataField = 'Equipo'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBRadioGroup1: TcxDBRadioGroup [26]
    Left = 506
    Top = 148
    Width = 252
    Height = 51
    Caption = 'Status'
    DataBinding.DataField = 'Status'
    DataBinding.DataSource = DS
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = 'Activo'
        Value = 'Activo'
      end
      item
        Caption = 'Inactivo'
        Value = 'Inactivo'
      end
      item
        Caption = 'Stand by'
        Value = 'Stand by'
      end>
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cxDBTextEdit3: TcxDBTextEdit [27]
    Left = 81
    Top = 128
    Width = 212
    Height = 21
    DataBinding.DataField = 'Marca'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBTextEdit4: TcxDBTextEdit [28]
    Left = 81
    Top = 153
    Width = 212
    Height = 21
    DataBinding.DataField = 'Color'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxDBTextEdit5: TcxDBTextEdit [29]
    Left = 81
    Top = 178
    Width = 121
    Height = 21
    DataBinding.DataField = 'Anno'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object cxDBTextEdit6: TcxDBTextEdit [30]
    Left = 358
    Top = 128
    Width = 401
    Height = 21
    DataBinding.DataField = 'Propietario'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxDBDateEdit1: TcxDBDateEdit [31]
    Left = 358
    Top = 153
    Width = 121
    Height = 21
    DataBinding.DataField = 'FechaAdq'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [32]
    Left = 358
    Top = 178
    Width = 121
    Height = 21
    DataBinding.DataField = 'GrupoTrabajo'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxLabel2: TcxLabel [33]
    Left = 8
    Top = 203
    Width = 116
    Height = 27
    Caption = 'Otros datos'
    ParentFont = False
    Properties.Transparent = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = 8623235
    Style.TextStyle = [fsBold]
  end
  object cxDBTextEdit7: TcxDBTextEdit [34]
    Left = 81
    Top = 234
    Width = 212
    Height = 21
    DataBinding.DataField = 'Placa'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object cxDBTextEdit8: TcxDBTextEdit [35]
    Left = 358
    Top = 234
    Width = 212
    Height = 21
    DataBinding.DataField = 'Matricula'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object cxDBTextEdit9: TcxDBTextEdit [36]
    Left = 81
    Top = 259
    Width = 212
    Height = 21
    DataBinding.DataField = 'Aseguradora'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 12
  end
  object cxDBTextEdit10: TcxDBTextEdit [37]
    Left = 358
    Top = 259
    Width = 212
    Height = 21
    DataBinding.DataField = 'Poliza'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
  end
  object cxDBImage1: TcxDBImage [38]
    Left = 11
    Top = 346
    Width = 227
    Height = 173
    DataBinding.DataField = 'Foto'
    DataBinding.DataSource = DS
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.ImmediatePost = True
    Properties.Stretch = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 18
  end
  object cxDBMemo1: TcxDBMemo [39]
    Left = 246
    Top = 346
    Width = 516
    Height = 173
    DataBinding.DataField = 'Nota'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 19
  end
  object cxDBTextEdit11: TcxDBTextEdit [40]
    Left = 81
    Top = 284
    Width = 212
    Height = 21
    DataBinding.DataField = 'Tarifa'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object cxDBTextEdit12: TcxDBTextEdit [41]
    Left = 358
    Top = 284
    Width = 212
    Height = 21
    DataBinding.DataField = 'Colaterales'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object cxDBTextEdit13: TcxDBTextEdit [42]
    Left = 81
    Top = 308
    Width = 212
    Height = 21
    DataBinding.DataField = 'Capacidad'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 16
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [43]
    Left = 358
    Top = 308
    Width = 212
    Height = 21
    DataBinding.DataField = 'idUnidadCapacidad'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idUnidad'
    Properties.ListColumns = <
      item
        FieldName = 'Unidad'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsUnidad
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 17
  end
  object cxDBLookupComboBox2: TcxDBLookupComboBox [44]
    Left = 358
    Top = 78
    Width = 263
    Height = 21
    DataBinding.DataField = 'idEquipoTipo'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idEquipoTipo'
    Properties.ListColumns = <
      item
        FieldName = 'EquipoTipo'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTipo
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxDBCheckBox1: TcxDBCheckBox [45]
    Left = 634
    Top = 76
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    Caption = 'es Centro de Costo'
    DataBinding.DataField = 'esCentroCosto'
    DataBinding.DataSource = DS
    TabOrder = 23
  end
  inherited DS: TwwDataSource
    Left = 415
    Top = 65535
  end
  inherited ImageList: TImageList
    Left = 336
    Top = 10
  end
  inherited Acciones: TActionList
    Left = 242
    Top = 8
    object AGetLinea: TAction
      Caption = 'AGetLinea'
    end
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsEquipo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idEquipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 146
    Top = 8
    object RSidEquipo: TStringField
      DisplayLabel = 'Equipo'
      FieldName = 'idEquipo'
      Size = 16
    end
    object RSEquipo: TStringField
      FieldName = 'Equipo'
      Size = 50
    end
    object RSActivo: TBooleanField
      FieldName = 'Activo'
    end
    object RSGrupoTrabajo: TIntegerField
      FieldName = 'GrupoTrabajo'
    end
    object RSUidEquipo: TGuidField
      FieldName = 'UidEquipo'
      FixedChar = True
      Size = 38
    end
    object RSesProceso: TBooleanField
      FieldName = 'esProceso'
    end
    object RSMarca: TStringField
      FieldName = 'Marca'
      Size = 100
    end
    object RSColor: TStringField
      FieldName = 'Color'
      Size = 30
    end
    object RSAnno: TWordField
      FieldName = 'Anno'
    end
    object RSPlaca: TStringField
      FieldName = 'Placa'
    end
    object RSMatricula: TStringField
      FieldName = 'Matricula'
      Size = 50
    end
    object RSAseguradora: TStringField
      FieldName = 'Aseguradora'
      Size = 100
    end
    object RSPoliza: TStringField
      FieldName = 'Poliza'
      Size = 100
    end
    object RSTarifa: TFloatField
      FieldName = 'Tarifa'
    end
    object RSColaterales: TBCDField
      FieldName = 'Colaterales'
      Precision = 19
      Size = 2
    end
    object RSPropietario: TStringField
      FieldName = 'Propietario'
      Size = 100
    end
    object RSFechaAdq: TDateTimeField
      FieldName = 'FechaAdq'
    end
    object RSStatus: TStringField
      FieldName = 'Status'
      OnValidate = RSStatusValidate
      Size = 16
    end
    object RSNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
    object RSCapacidad: TFloatField
      FieldName = 'Capacidad'
    end
    object RSidUnidadCapacidad: TStringField
      FieldName = 'idUnidadCapacidad'
      Size = 16
    end
    object RSFoto: TBlobField
      FieldName = 'Foto'
    end
    object RSidEquipoTipo: TStringField
      FieldName = 'idEquipoTipo'
      Size = 16
    end
    object RSesCentroCosto: TBooleanField
      FieldName = 'esCentroCosto'
    end
  end
  object rsUnidad: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'svRSUnidad;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 336
    Top = 343
    object rsUnidadidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object rsUnidadUnidad: TStringField
      FieldName = 'Unidad'
      Size = 50
    end
    object rsUnidadidUnidadBase: TStringField
      FieldName = 'idUnidadBase'
      Size = 50
    end
    object rsUnidadidFactor: TFloatField
      FieldName = 'idFactor'
    end
    object rsUnidadUidUnidad: TGuidField
      FieldName = 'UidUnidad'
      FixedChar = True
      Size = 38
    end
  end
  object dsUnidad: TwwDataSource
    AutoEdit = False
    DataSet = rsUnidad
    OnUpdateData = DSUpdateData
    Left = 475
    Top = 144
  end
  object rsTipo: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'svRSEquipoTipo;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 415
    Top = 343
    object rsTipoidEquipoTipo: TStringField
      FieldName = 'idEquipoTipo'
      Size = 16
    end
    object rsTipoEquipoTipo: TStringField
      FieldName = 'EquipoTipo'
      Size = 100
    end
    object rsTipoTarifaPorHora: TBooleanField
      FieldName = 'TarifaPorHora'
    end
  end
  object dsTipo: TwwDataSource
    AutoEdit = False
    DataSet = rsTipo
    OnUpdateData = DSUpdateData
    Left = 554
    Top = 144
  end
end

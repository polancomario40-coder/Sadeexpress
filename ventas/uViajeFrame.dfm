object ViajeFrame: TViajeFrame
  Left = 0
  Top = 0
  Width = 535
  Height = 346
  Color = 15922418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  object Label2: TLabel
    Left = 8
    Top = 42
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label4: TLabel
    Left = 158
    Top = 42
    Width = 29
    Height = 13
    Caption = 'Fecha'
    FocusControl = deFecha
  end
  object Label6: TLabel
    Left = 8
    Top = 78
    Width = 64
    Height = 13
    Caption = 'Transportista'
  end
  object Label7: TLabel
    Left = 8
    Top = 154
    Width = 30
    Height = 13
    Caption = 'Planta'
  end
  object Label8: TLabel
    Left = 308
    Top = 154
    Width = 57
    Height = 13
    Caption = 'Zona origen'
  end
  object Label9: TLabel
    Left = 380
    Top = 266
    Width = 62
    Height = 13
    Caption = 'Zona destino'
  end
  object Label10: TLabel
    Left = 8
    Top = 116
    Width = 33
    Height = 13
    Caption = 'Chofer'
  end
  object Label11: TLabel
    Left = 308
    Top = 116
    Width = 32
    Height = 13
    Caption = 'Equipo'
  end
  object Label13: TLabel
    Left = 8
    Top = 189
    Width = 43
    Height = 13
    Caption = 'Direccion'
  end
  object Label14: TLabel
    Left = 205
    Top = 267
    Width = 31
    Height = 13
    Caption = 'Sector'
    FocusControl = edSector
  end
  object Label15: TLabel
    Left = 8
    Top = 265
    Width = 33
    Height = 13
    Caption = 'Ciudad'
    FocusControl = edCiudad
  end
  object Label16: TLabel
    Left = 8
    Top = 304
    Width = 42
    Height = 13
    Caption = 'Telefono'
    FocusControl = edTel
  end
  object Label17: TLabel
    Left = 183
    Top = 306
    Width = 18
    Height = 13
    Caption = 'Fax'
    FocusControl = edEmail
  end
  object Label18: TLabel
    Left = 358
    Top = 305
    Width = 24
    Height = 13
    Caption = 'Email'
    FocusControl = edFax
  end
  object cxLabel1: TcxLabel
    Left = 3
    Top = 3
    Width = 320
    Height = 33
    Caption = 'Informacion de transporte'
    ParentFont = False
    Properties.Transparent = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = 9516803
    Style.Font.Height = -24
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
  end
  object cxDBLabel1: TcxDBLabel
    Left = 404
    Top = 40
    Width = 121
    Height = 33
    DataBinding.DataField = 'Viaje'
    DataBinding.DataSource = dsViaje
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.Transparent = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
  end
  object deFecha: TcxDBDateEdit
    Left = 158
    Top = 56
    Width = 147
    Height = 21
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = dsViaje
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object edSector: TcxDBTextEdit
    Left = 205
    Top = 281
    Width = 169
    Height = 21
    DataBinding.DataField = 'SectorEnvio'
    DataBinding.DataSource = dsViaje
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object edCiudad: TcxDBTextEdit
    Left = 8
    Top = 281
    Width = 192
    Height = 21
    DataBinding.DataField = 'CiudadEnvio'
    DataBinding.DataSource = dsViaje
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object edTel: TcxDBTextEdit
    Left = 8
    Top = 320
    Width = 172
    Height = 21
    DataBinding.DataField = 'TelefonoEnvio'
    DataBinding.DataSource = dsViaje
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object edEmail: TcxDBTextEdit
    Left = 358
    Top = 320
    Width = 172
    Height = 21
    DataBinding.DataField = 'Email'
    DataBinding.DataSource = dsViaje
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
  end
  object edFax: TcxDBTextEdit
    Left = 183
    Top = 320
    Width = 172
    Height = 21
    DataBinding.DataField = 'Fax'
    DataBinding.DataSource = dsViaje
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 12
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox
    Left = 8
    Top = 56
    Width = 145
    Height = 21
    DataBinding.DataField = 'idViajeTipo'
    DataBinding.DataSource = dsViaje
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idViajeTipo'
    Properties.ListColumns = <
      item
        FieldName = 'ViajeTipo'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTipo
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxDBLookupComboBox2: TcxDBLookupComboBox
    Left = 8
    Top = 92
    Width = 297
    Height = 21
    DataBinding.DataField = 'idTransportista'
    DataBinding.DataSource = dsViaje
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idTransportista'
    Properties.ListColumns = <
      item
        FieldName = 'Transportista'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTransportista
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBLookupComboBox3: TcxDBLookupComboBox
    Left = 8
    Top = 132
    Width = 297
    Height = 21
    DataBinding.DataField = 'idTransportistaChofer'
    DataBinding.DataSource = dsViaje
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idTransportistaChofer'
    Properties.ListColumns = <
      item
        FieldName = 'TransportistaChofer'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsChofer
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBLookupComboBox4: TcxDBLookupComboBox
    Left = 308
    Top = 132
    Width = 221
    Height = 21
    DataBinding.DataField = 'idTransportistaEquipo'
    DataBinding.DataSource = dsViaje
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idTransportistaEquipo'
    Properties.ListColumns = <
      item
        FieldName = 'TransportistaEquipo'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTransEquipos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxDBLookupComboBox5: TcxDBLookupComboBox
    Left = 8
    Top = 168
    Width = 297
    Height = 21
    DataBinding.DataField = 'idPlanta'
    DataBinding.DataSource = dsViaje
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idPlanta'
    Properties.ListColumns = <
      item
        FieldName = 'Planta'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsPlantas
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxDBLookupComboBox6: TcxDBLookupComboBox
    Left = 308
    Top = 168
    Width = 151
    Height = 21
    DataBinding.DataField = 'idZonaOrigen'
    DataBinding.DataSource = dsViaje
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idZona'
    Properties.ListColumns = <
      item
        FieldName = 'Zona'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsZona
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxDBLookupComboBox8: TcxDBLookupComboBox
    Left = 380
    Top = 281
    Width = 151
    Height = 21
    DataBinding.DataField = 'idZona'
    DataBinding.DataSource = dsViaje
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idZona'
    Properties.ListColumns = <
      item
        FieldName = 'Zona'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsZona
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object cxDBMemo1: TcxDBMemo
    Left = 8
    Top = 204
    Width = 522
    Height = 59
    DataBinding.DataField = 'DireccionEnvio'
    DataBinding.DataSource = dsViaje
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object cxButton1: TcxButton
    Left = 310
    Top = 90
    Width = 123
    Height = 25
    Caption = 'Quitar transportista'
    Enabled = False
    TabOrder = 16
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object rsViaje: TADODataSet
    Connection = dm.Coneccion
    LockType = ltBatchOptimistic
    OnNewRecord = rsViajeNewRecord
    CommandText = 'lgRSViajePorRef'
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
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 274
    Top = 206
    object rsViajeidViaje: TGuidField
      FieldName = 'idViaje'
      FixedChar = True
      Size = 38
    end
    object rsViajeidViajeTipo: TStringField
      FieldName = 'idViajeTipo'
      Size = 16
    end
    object rsViajeViaje: TStringField
      FieldName = 'Viaje'
      Size = 16
    end
    object rsViajeFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsViajeidReferencia: TGuidField
      FieldName = 'idReferencia'
      FixedChar = True
      Size = 38
    end
    object rsViajeidTransportista: TStringField
      FieldName = 'idTransportista'
      OnValidate = rsViajeidTransportistaValidate
      Size = 16
    end
    object rsViajeidPlanta: TStringField
      FieldName = 'idPlanta'
      OnValidate = rsViajeidPlantaValidate
      Size = 16
    end
    object rsViajeidZonaOrigen: TStringField
      FieldName = 'idZonaOrigen'
      Size = 16
    end
    object rsViajeidZona: TStringField
      FieldName = 'idZona'
      Size = 16
    end
    object rsViajeDireccionEnvio: TStringField
      FieldName = 'DireccionEnvio'
      Size = 120
    end
    object rsViajeSectorEnvio: TStringField
      FieldName = 'SectorEnvio'
    end
    object rsViajeCiudadEnvio: TStringField
      FieldName = 'CiudadEnvio'
    end
    object rsViajeTelefonoEnvio: TStringField
      FieldName = 'TelefonoEnvio'
    end
    object rsViajeFax: TStringField
      FieldName = 'Fax'
    end
    object rsViajeEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
    object rsViajeidTransportistaChofer: TGuidField
      FieldName = 'idTransportistaChofer'
      FixedChar = True
      Size = 38
    end
    object rsViajeidTransportistaEquipo: TGuidField
      FieldName = 'idTransportistaEquipo'
      FixedChar = True
      Size = 38
    end
  end
  object dsViaje: TDataSource
    AutoEdit = False
    DataSet = rsViaje
    Left = 202
    Top = 204
  end
  object dsZona: TDataSource
    DataSet = rsZona
    Left = 108
    Top = 206
  end
  object rsZona: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'lgZonaFind;1'
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
        Name = '@orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 34
    Top = 208
    object rsZonaidZona: TStringField
      FieldName = 'idZona'
      Size = 16
    end
    object rsZonaZona: TStringField
      FieldName = 'Zona'
      Size = 100
    end
  end
  object rsTransportista: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'lgTransportistaFind'
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
        Name = '@orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 342
    Top = 82
    object rsTransportistaidTransportista: TStringField
      FieldName = 'idTransportista'
      Size = 16
    end
    object rsTransportistaTransportista: TStringField
      FieldName = 'Transportista'
      Size = 200
    end
    object rsTransportistaTelefono: TStringField
      FieldName = 'Telefono'
      Size = 30
    end
    object rsTransportistaST: TStringField
      FieldName = 'ST'
      Size = 16
    end
  end
  object dsTransportista: TDataSource
    DataSet = rsTransportista
    Left = 354
    Top = 190
  end
  object rsChofer: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'lgRSChoferXTransportista;1'
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
        Name = '@idTransportista'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 418
    Top = 192
    object rsChoferidTransportistaChofer: TGuidField
      FieldName = 'idTransportistaChofer'
      FixedChar = True
      Size = 38
    end
    object rsChoferidTransportista: TStringField
      FieldName = 'idTransportista'
      Size = 16
    end
    object rsChoferTransportistaChofer: TStringField
      FieldName = 'TransportistaChofer'
      Size = 100
    end
    object rsChoferLicenciaVence: TDateTimeField
      FieldName = 'LicenciaVence'
    end
    object rsChoferStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
  end
  object dsChofer: TDataSource
    DataSet = rsChofer
    Left = 472
    Top = 234
  end
  object rsTransEquipos: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'lgRSEquipoXTransportista;1'
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
        Name = '@idTransportista'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 406
    Top = 244
    object rsTransEquiposidTransportistaEquipo: TGuidField
      FieldName = 'idTransportistaEquipo'
      FixedChar = True
      Size = 38
    end
    object rsTransEquiposTransportistaEquipo: TStringField
      FieldName = 'TransportistaEquipo'
      Size = 100
    end
    object rsTransEquiposidTransportista: TStringField
      FieldName = 'idTransportista'
      Size = 16
    end
    object rsTransEquiposPlacaNo: TStringField
      FieldName = 'PlacaNo'
    end
    object rsTransEquiposPlacaVence: TDateTimeField
      FieldName = 'PlacaVence'
    end
    object rsTransEquiposStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
  end
  object dsTransEquipos: TDataSource
    DataSet = rsTransEquipos
    Left = 460
    Top = 286
  end
  object Plantas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Select * From Planta Where Activo = 1 Order by Planta'
    Parameters = <>
    Left = 498
    Top = 110
    object PlantasidPlanta: TStringField
      FieldName = 'idPlanta'
      Size = 16
    end
    object PlantasPlanta: TStringField
      FieldName = 'Planta'
      Size = 50
    end
    object PlantasActivo: TBooleanField
      FieldName = 'Activo'
    end
    object PlantasidZona: TStringField
      FieldName = 'idZona'
      Size = 16
    end
  end
  object dsPlantas: TDataSource
    DataSet = Plantas
    Left = 410
    Top = 90
  end
  object dsTipo: TDataSource
    DataSet = rsTipos
    Left = 236
    Top = 124
  end
  object rsTipos: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'lgViajeTipoFind'
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
        Name = '@orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 162
    Top = 126
    object rsTiposidViajeTipo: TStringField
      FieldName = 'idViajeTipo'
      Size = 16
    end
    object rsTiposViajeTipo: TStringField
      FieldName = 'ViajeTipo'
      Size = 100
    end
  end
end

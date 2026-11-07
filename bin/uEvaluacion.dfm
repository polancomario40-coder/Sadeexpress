inherited Evaluacion: TEvaluacion
  Left = 405
  Top = 249
  Caption = 'Evaluacion'
  ClientHeight = 411
  ClientWidth = 643
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 643
  end
  object Label1: TLabel [1]
    Left = 26
    Top = 128
    Width = 39
    Height = 13
    Caption = 'Montura'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [2]
    Left = 26
    Top = 166
    Width = 52
    Height = 13
    Caption = 'ColorCristal'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [3]
    Left = 26
    Top = 204
    Width = 71
    Height = 13
    Caption = 'Observaciones'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [4]
    Left = 426
    Top = 61
    Width = 30
    Height = 13
    Caption = 'Fecha'
    FocusControl = DBEdit1
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 643
    inherited nuevo: TwwNavButton
      Width = 92
    end
    inherited editar: TwwNavButton
      Left = 92
      Width = 92
    end
    inherited guardar: TwwNavButton
      Left = 184
      Width = 92
    end
    inherited cancelar: TwwNavButton
      Left = 276
      Width = 92
    end
    inherited borrar: TwwNavButton
      Left = 368
      Width = 92
    end
    inherited BLocalizarx: TwwNavButton
      Left = 460
      Width = 92
    end
    inherited salir: TwwNavButton
      Left = 552
      Width = 91
    end
  end
  inherited Grid: TwwDBGrid
    Left = 5
    Top = 254
    Width = 635
    Height = 143
  end
  object DBEdit1: TDBEdit [7]
    Left = 26
    Top = 142
    Width = 240
    Height = 19
    DataField = 'Montura'
    DataSource = DS
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [8]
    Left = 26
    Top = 180
    Width = 240
    Height = 19
    DataField = 'ColorCristal'
    DataSource = DS
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [9]
    Left = 26
    Top = 218
    Width = 240
    Height = 19
    DataField = 'Observaciones'
    DataSource = DS
    TabOrder = 4
  end
  object DBCheckBox1: TDBCheckBox [10]
    Left = 426
    Top = 132
    Width = 97
    Height = 17
    Caption = 'Diabetes'
    DataField = 'Diabetes'
    DataSource = DS
    TabOrder = 5
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBCheckBox2: TDBCheckBox [11]
    Left = 426
    Top = 154
    Width = 97
    Height = 17
    Caption = 'Hipertension'
    DataField = 'Hipertension'
    DataSource = DS
    TabOrder = 6
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBCheckBox3: TDBCheckBox [12]
    Left = 426
    Top = 176
    Width = 97
    Height = 17
    Caption = 'Toxoplasmosis'
    DataField = 'Toxoplasmosis'
    DataSource = DS
    TabOrder = 7
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBCheckBox4: TDBCheckBox [13]
    Left = 426
    Top = 198
    Width = 97
    Height = 17
    Caption = 'CirugiasOculares'
    DataField = 'CirugiasOculares'
    DataSource = DS
    TabOrder = 8
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBEdit4: TDBEdit [14]
    Left = 26
    Top = 104
    Width = 2600
    Height = 19
    DataField = 'Cliente'
    DataSource = DS
    ReadOnly = True
    TabOrder = 9
  end
  object dxDBDateEdit2: TcxDBDateEdit [15]
    Left = 471
    Top = 62
    Width = 121
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Cliente'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object FindCliente: TButton [16]
    Left = 26
    Top = 80
    Width = 44
    Height = 22
    Caption = 'Cliente'
    TabOrder = 11
    TabStop = False
    OnClick = FindClienteClick
  end
  object dxDBEdit6: TdxDBEdit [17]
    Left = 70
    Top = 81
    Width = 67
    TabOrder = 12
    DataField = 'idCliente'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  inherited RS: TADODataSet
    Active = True
    OnNewRecord = RSNewRecord
    CommandText = 'OpticaRSEvaluacion'
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
    object RSidEvaluacion: TGuidField
      FieldName = 'idEvaluacion'
      FixedChar = True
      Size = 38
    end
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
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
    object RSObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
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
  end
  inherited RSDet: TADODataSet
    Active = True
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
    object RSDetidEvaluacion: TGuidField
      FieldName = 'idEvaluacion'
      FixedChar = True
      Size = 38
    end
    object RSDetidEvaluacionDet: TGuidField
      FieldName = 'idEvaluacionDet'
      FixedChar = True
      Size = 38
    end
    object RSDetRX: TStringField
      FieldName = 'RX'
      Size = 16
    end
    object RSDetESPERA: TBCDField
      FieldName = 'ESPERA'
      Precision = 18
      Size = 2
    end
    object RSDetCIL: TBCDField
      FieldName = 'CIL'
      Precision = 18
      Size = 2
    end
    object RSDetEJE: TBCDField
      FieldName = 'EJE'
      Precision = 18
      Size = 2
    end
    object RSDetADD: TBCDField
      FieldName = 'ADD'
      Precision = 18
      Size = 2
    end
    object RSDetDP: TBCDField
      FieldName = 'DP'
      Precision = 18
      Size = 2
    end
    object RSDetALT: TBCDField
      FieldName = 'ALT'
      Precision = 18
      Size = 2
    end
  end
end

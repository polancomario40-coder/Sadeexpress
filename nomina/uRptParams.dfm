object RptParams: TRptParams
  Left = 512
  Top = 386
  Width = 378
  Height = 213
  Caption = 'Parametros del Reporte'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 15
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label2: TLabel
    Left = 194
    Top = 15
    Width = 28
    Height = 13
    Caption = 'Hasta'
    Visible = False
  end
  object Label3: TLabel
    Left = 32
    Top = 52
    Width = 75
    Height = 13
    Caption = 'Tipo de Nomina'
  end
  object Label4: TLabel
    Left = 10
    Top = 88
    Width = 99
    Height = 13
    Caption = 'Grupo de Empleados'
  end
  object Desde: TwwDBDateTimePicker
    Left = 48
    Top = 12
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 0
  end
  object Hasta: TwwDBDateTimePicker
    Left = 232
    Top = 12
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 1
    Visible = False
  end
  object tn: TDBLookupComboBox
    Left = 120
    Top = 48
    Width = 145
    Height = 21
    KeyField = 'TipoNominaID'
    ListField = 'TipoNomina'
    ListSource = DsTipoNomina
    TabOrder = 2
  end
  object te: TDBLookupComboBox
    Left = 120
    Top = 83
    Width = 145
    Height = 21
    KeyField = 'TipoEmpleadoID'
    ListField = 'TipoEmpleado'
    ListSource = DsTipoEmpleado
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 280
    Top = 144
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 200
    Top = 144
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkCancel
  end
  object TipoEmpleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'spTipoEmpleado;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 38
    Top = 56
  end
  object TipoNomina: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'spTipoNomina;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 96
    Top = 128
  end
  object DsTipoNomina: TDataSource
    DataSet = TipoNomina
    Left = 136
    Top = 128
  end
  object DsTipoEmpleado: TDataSource
    DataSet = TipoEmpleado
    Left = 40
    Top = 128
  end
end
